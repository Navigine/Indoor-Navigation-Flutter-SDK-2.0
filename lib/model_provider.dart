import 'dart:async';
import 'dart:ffi';
import 'dart:typed_data';

import 'package:uuid/uuid.dart';

import 'package:navigine_sdk/com/exception.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/image_provider.dart';

class ModelProvider {
  final ImageProvider texture;
  final Future<ByteData> Function() onModelRequest;
  final String modelId;
  final AsyncErrorHandler _errorHandler;

  static final _heap = _ModelProviderHeap();

  ModelProvider(this.texture,
      {required this.onModelRequest, String? modelId, Function? onError})
      : modelId = modelId ?? Uuid().v4(),
        _errorHandler = AsyncErrorHandler(onError);
}

extension ModelProviderNative on ModelProvider {
  static _ModelProviderHeap get heap => ModelProvider._heap;
  static Pointer<Void> get getTextureNative => _getTextureNative;
}

class ModelProviderImpl {
  static Pointer<Void> getNativePtr(ModelProvider? provider) {
    if (provider == null) return Pointer<Void>.fromAddress(0);

    final heap = ModelProviderNative.heap;
    final sendPort = heap.sendPort;
    final executablePort = __lib.createExecutePort();
    final nativeObject = newModelProvider(
        sendPort,
        executablePort,
        toNativeString(provider.modelId),
        ModelProviderNative.getTextureNative);
    if (nativeObject == nullptr) {
      throw StateError('Failed to create native ModelProvider handle.');
    }

    final nativeObjectKey =
        _navigine_sdk_flutter_model_provider_GetObjectKey(nativeObject);
    if (nativeObjectKey == nullptr) {
      _navigine_sdk_flutter_model_provider_ReleaseHandle(nativeObject);
      throw StateError('Failed to get native ModelProvider callback key.');
    }
    heap.insertObject(nativeObjectKey, provider);

    return nativeObject;
  }

  static void releaseNativePtr(Pointer<Void> handle) {
    _navigine_sdk_flutter_model_provider_ReleaseHandle(handle);
  }
}

class _ModelProviderHeap extends __lib.AsyncDispatcherHeap<ModelProvider> {
  static Future<ByteData> _getModel(ModelProvider object) {
    return object.onModelRequest();
  }

  @override
  void requestData(ModelProvider object, Pointer<Void> nativeData) {
    _getModel(object)
        .then((value) => _onModelComplete(nativeData, _toNativeBytes(value)))
        .catchError((e, stackTrace) =>
            onHandlerException(object, nativeData, e, stackTrace));
  }

  @override
  void onHandlerException(ModelProvider? object, Pointer<Void> nativeData,
      Object e, StackTrace stackTrace) {
    _onModelComplete(nativeData, newNativeBytes(nullptr, 0));
    if (object != null) {
      object._errorHandler.onError(e, stackTrace);
    } else {
      throw e;
    }
  }
}

NativeBytes _toNativeBytes(ByteData value) {
  final source =
      value.buffer.asUint8List(value.offsetInBytes, value.lengthInBytes);
  return toNativeBytes(source);
}

final void Function(Pointer<Void>, NativeBytes) _onModelComplete =
    __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, NativeBytes),
            void Function(Pointer<Void>, NativeBytes)>(
        'navigine_sdk_flutter_model_provider_on_complete_model'));

final _navigine_sdk_flutter_model_provider_ReleaseHandle =
    __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>), void Function(Pointer<Void>)>(
        'navigine_sdk_flutter_model_provider_release_handle'));

final _navigine_sdk_flutter_model_provider_GetObjectKey =
    __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)>(
        'navigine_sdk_flutter_model_provider_get_object_key'));

Pointer<Void> _getTexture(Pointer<Void> nativeObject) {
  return toNativeImageProviderPtr(
      ModelProviderNative.heap.findObject(nativeObject).texture);
}

final Pointer<Void> _getTextureNative =
    Pointer.fromFunction<Pointer<Void> Function(Pointer<Void>)>(_getTexture)
        .cast();
