import 'dart:async';
import 'dart:ui' as ui;
import 'dart:ffi';

import 'package:flutter/material.dart';
import "package:flutter/painting.dart" as painting;
import 'package:uuid/uuid.dart';

import 'image_provider_result.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/exception.dart';

class ImageProvider {
  ImageProvider(this._onImageRequest,
      {this.cacheable = true, String? id, Function? onError})
      : _errorHandler = AsyncErrorHandler(onError),
        id = id ?? _generateId();

  ImageProvider.fromImageProvider(painting.ImageProvider provider,
      {bool cacheable = true, String? id, Function? onError})
      : this(() => _imageFromImageProvider(provider),
            id: id, cacheable: cacheable, onError: onError);

  static Future<ui.Image> _imageFromImageProvider(
      painting.ImageProvider provider) {
    final completer = Completer<ui.Image>();

    final configuration = ImageConfiguration(
        devicePixelRatio: WidgetsBinding.instance.window.devicePixelRatio);

    final imageStream = provider.resolve(configuration);

    late ImageStreamListener listener;

    listener = ImageStreamListener(
      (image, synchronousCall) {
        if (!completer.isCompleted) {
          completer.complete(image.image);
        }
        imageStream.removeListener(listener);
      },
      onError: (e, stack) {
        if (!completer.isCompleted) {
          completer.completeError(e, stack);
        }
        imageStream.removeListener(listener);
      },
    );

    imageStream.addListener(listener);

    return completer.future;
  }

  static String _generateId() {
    return const Uuid().v4();
  }

  static final _heap = ImageProviderHeap();

  final FutureOr<ui.Image> Function() _onImageRequest;
  final AsyncErrorHandler _errorHandler;
  final String id;
  final bool cacheable;

  Pointer<Void>? _bindingKey;
}

class NativeImageProviderWrapper implements ImageProvider {
  NativeImageProviderWrapper(this.rawPointer);

  final Pointer<Void> rawPointer;

  @override
  FutureOr<ui.Image> Function() get _onImageRequest =>
      throw UnimplementedError();

  @override
  bool get cacheable => throw UnimplementedError();

  @override
  String get id => throw UnimplementedError();

  @override
  AsyncErrorHandler get _errorHandler => throw UnimplementedError();

  @override
  Pointer<Void>? _bindingKey;
}

extension GetImageProviderData on ImageProvider {
  static ImageProviderHeap get heap => ImageProvider._heap;
}

/// Converts [ImageProvider] to a native pointer for FFI (Yandex-compatible).
Pointer<Void> toNativeImageProvider(ImageProvider provider) {
  if (provider is NativeImageProviderWrapper) {
    return provider.rawPointer;
  }
  return ImageProviderImpl.getNativePtr(provider);
}

/// Returns [ImageProvider] native pointer for callbacks (binding key or native provider).
Pointer<Void> toNativeImageProviderPtr(ImageProvider provider) {
  if (provider is NativeImageProviderWrapper) {
    return provider.rawPointer;
  }
  if (provider._bindingKey != null) {
    return provider._bindingKey!;
  }

  final heap = GetImageProviderData.heap;
  final sendPort = heap.sendPort;
  final nativeObject = newImageProvider(
      provider.cacheable, sendPort, toNativeString(provider.id));
  if (nativeObject == nullptr) {
    throw StateError('Failed to create native ImageProvider handle.');
  }

  final nativeObjectKey =
      _navigine_sdk_flutter_image_provider_GetObjectKey(nativeObject);
  if (nativeObjectKey == nullptr) {
    _navigine_sdk_flutter_image_provider_ReleaseHandle(nativeObject);
    throw StateError('Failed to get native ImageProvider callback key.');
  }
  provider._bindingKey = nativeObjectKey;
  heap.insertObject(nativeObjectKey, provider);
  ImageProviderImpl.releaseNativePtr(nativeObject);

  return nativeObjectKey;
}

class ImageProviderImpl {
  static Pointer<Void> getNativePtr(ImageProvider? provider) {
    if (provider == null) return Pointer<Void>.fromAddress(0);
    if (provider is NativeImageProviderWrapper) {
      return provider.rawPointer;
    }

    if (provider._bindingKey != null) {
      final handle = _navigine_sdk_flutter_image_provider_Acquire(
          provider._bindingKey!);
      if (handle == nullptr) {
        throw StateError('Failed to acquire native ImageProvider handle.');
      }
      return handle;
    }

    final heap = GetImageProviderData.heap;
    final sendPort = heap.sendPort;
    final providerId = toNativeString(provider.id);
    final nativeObject =
        newImageProvider(provider.cacheable, sendPort, providerId);
    if (nativeObject == nullptr) {
      throw StateError('Failed to create native ImageProvider handle.');
    }

    final nativeObjectKey =
        _navigine_sdk_flutter_image_provider_GetObjectKey(nativeObject);
    if (nativeObjectKey == nullptr) {
      _navigine_sdk_flutter_image_provider_ReleaseHandle(nativeObject);
      throw StateError('Failed to get native ImageProvider callback key.');
    }
    provider._bindingKey = nativeObjectKey;
    heap.insertObject(nativeObjectKey, provider);

    return nativeObject;
  }

  static void releaseNativePtr(Pointer<Void> handle) {
    _navigine_sdk_flutter_image_provider_ReleaseHandle(handle);
  }
}

class ImageProviderHeap extends __lib.AsyncDispatcherHeap<ImageProvider> {
  Future<ImageProviderResult> _getImageProviderResult(
      ImageProvider imageProvider) async {
    final image = await imageProvider._onImageRequest();

    try {
      return await ImageProviderResult.resolve(image, imageProvider.id);
    } finally {
      image.dispose();
    }
  }

  @override
  void requestData(ImageProvider object, Pointer<Void> nativeData) {
    _getImageProviderResult(object)
        .then((value) =>
            _onImageProviderComplete(nativeData, value.imageProvider))
        .catchError((e, stackTrace) =>
            onHandlerException(object, nativeData, e, stackTrace));
  }

  @override
  void onHandlerException(ImageProvider? object, Pointer<Void> nativeData,
      Object e, StackTrace stackTrace) {
    _onImageProviderComplete(nativeData, newNativeImageProvider(0, 0));
    if (object != null) {
      object._errorHandler.onError(e, stackTrace);
    } else {
      throw e;
    }
  }
}

final void Function(Pointer<Void>, NativeImageProvider)
    _onImageProviderComplete = __lib.catchArgumentError(() =>
        __lib.nativeLibrary.lookupFunction<
                Void Function(Pointer<Void>, NativeImageProvider),
                void Function(Pointer<Void>, NativeImageProvider)>(
            'navigine_sdk_flutter_image_on_image_provider_complete'));

final _navigine_sdk_flutter_image_provider_ReleaseHandle =
    __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>), void Function(Pointer<Void>)>(
        'navigine_sdk_flutter_image_provider_release_handle'));

final _navigine_sdk_flutter_image_provider_GetObjectKey =
    __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)>(
        'navigine_sdk_flutter_image_provider_get_object_key'));

final _navigine_sdk_flutter_image_provider_Acquire =
    __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)>(
        'navigine_sdk_flutter_image_provider_acquire'));
