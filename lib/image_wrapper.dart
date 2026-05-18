import 'dart:ffi';
import 'dart:typed_data';

import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/native_types.dart';
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

extension ImageWrapperPrivate on ImageWrapper {
  static ImageWrapper newImageWrapper(Pointer<Void> nativeObject) {
    return ImageWrapper._(nativeObject);
  }

  NativeBitmap get nativeImage => _getNativeBitmap(_ptr);

  int get address => _ptr.address;
}

final NativeBitmap Function(Pointer<Void>) _getNativeBitmap = __lib
    .nativeLibrary
    .lookup<NativeFunction<NativeBitmap Function(Pointer<Void>)>>(
        'navigine_sdk_flutter_platform_bitmap_get_native_bitmap')
    .asFunction(isLeaf: true);

final _freeNativeData = __lib.nativeLibrary
    .lookup<NativeFunction<Void Function(Pointer<Void>)>>(
        'navigine_sdk_flutter_platform_bitmap_free');

final Pointer<Void> Function(Pointer<Void>) _copyNativeData =
    __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)>(
          'navigine_sdk_flutter_platform_bitmap_copy_handle',
        ));

final _navigine_sdk_flutter_platform_bitmap_ReleaseHandle =
    __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>), void Function(Pointer<Void>)>(
        'navigine_sdk_flutter_platform_bitmap_release_handle'));

Pointer<Void> navigine_sdk_flutter_ImageWrapper_ToFfi(ImageWrapper value) {
  throw UnsupportedError('ImageWrapper is not supported as an FFI argument.');
}

ImageWrapper navigine_sdk_flutter_ImageWrapper_FromFfi(Pointer<Void> handle) {
  if (handle == nullptr) {
    throw StateError('Expected non-null ImageWrapper handle.');
  }
  return ImageWrapperPrivate.newImageWrapper(_copyNativeData(handle));
}

void navigine_sdk_flutter_ImageWrapper_ReleaseFfiHandle(Pointer<Void> handle) {
  if (handle == nullptr) {
    return;
  }

  _navigine_sdk_flutter_platform_bitmap_ReleaseHandle(handle);
}
