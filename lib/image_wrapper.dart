import 'dart:ffi';
import 'dart:typed_data';

import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/image_provider.dart' as provider;
import 'package:navigine_sdk/raw_image.dart';

import 'package:flutter/material.dart';

class ImageWrapper implements Finalizable {
  Pointer<Void> _ptr;
  late ImageProvider imageProvider = _extractImageProvider();

  static final _finalizer = NativeFinalizer(_freeNativeData);

  ImageWrapper._(this._ptr) {
    if (_ptr == nullptr) {
      throw StateError('Expected non-null ImageWrapper handle.');
    }
    _finalizer.attach(this, _ptr);
  }

  Image get image => Image(image: imageProvider);

  ImageProvider _extractImageProvider() {
    final image = _getNativeBitmap(_ptr);

    if (image.isRaw) {
      return RawImageProvider(this);
    }

    final pixels = Uint8List(image.dataSize);
    pixels.setAll(0, image.data.asTypedList(image.dataSize));

    return MemoryImage(pixels);
  }
}

extension ImageWrapperImpl on ImageWrapper {
  static ImageWrapper fromNativePtr(Pointer<Void> handle) {
    if (handle == nullptr) {
      throw StateError('Expected non-null ImageWrapper handle.');
    }
    return ImageWrapper._(handle);
  }

  static ImageWrapper? fromOptionalPtr(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    return fromNativePtr(handle);
  }

  static Pointer<Void> getNativePtr(ImageWrapper value) {
    throw UnsupportedError('ImageWrapper is not supported as an FFI argument.');
  }

  provider.ImageProvider toImageProvider() {
    return provider.NativeImageProviderWrapper(_getImageProvider(_ptr));
  }

  NativeBitmap get nativeImage => _getNativeBitmap(_ptr);

  int get address => _ptr.address;
}

final NativeBitmap Function(Pointer<Void>) _getNativeBitmap = __lib
    .nativeLibrary
    .lookup<NativeFunction<NativeBitmap Function(Pointer<Void>)>>(
        'navigine_sdk_flutter_platform_bitmap_get_native_bitmap')
    .asFunction(isLeaf: true);

final Pointer<Void> Function(Pointer<Void>) _getImageProvider = __lib
    .nativeLibrary
    .lookup<NativeFunction<Pointer<Void> Function(Pointer<Void>)>>(
        'navigine_sdk_flutter_platform_bitmap_get_image_provider')
    .asFunction(isLeaf: true);

final _freeNativeData = __lib.nativeLibrary
    .lookup<NativeFunction<Void Function(Pointer<Void>)>>(
        'navigine_sdk_flutter_platform_bitmap_free');
