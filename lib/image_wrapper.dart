

import 'dart:ffi';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'dart:ui' as ui;
import "package:flutter/painting.dart" as painting;
import 'dart:async';

import 'package:ffi/ffi.dart';

import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/image_provider.dart';

class ImageWrapper {
  Image get image => Image(image: imageProvider);

  static Future<ImageWrapper> fromImage(ui.Image img) async {
    final buffer = (await img.toByteData(format: ui.ImageByteFormat.rawRgba))!;
    return ImageWrapper(buffer.buffer.asUint8List(), img.width, img.height);
  }

  static Future<ImageWrapper> fromImageProvider(painting.ImageProvider provider) async {
    final completer = Completer<ui.Image>();
    final configuration = ImageConfiguration(
        devicePixelRatio: WidgetsBinding.instance.window.devicePixelRatio);
    final imageStream = provider.resolve(configuration);

    final listener = ImageStreamListener(
            (image, synchronousCall) {
              var pictureRecorder = ui.PictureRecorder();
              Canvas canvas = Canvas(pictureRecorder);
              canvas.scale(1, -1);
              canvas.translate(0, -1.0 * image.image.height);
              canvas.drawImage(image.image, Offset.zero, Paint());
              completer.complete(pictureRecorder
                  .endRecording()
                  .toImage(image.image.width, image.image.height));
            },
        onError: completer.completeError);

    imageStream.addListener(listener);

    ui.Image image;
    try {
      image = await completer.future;
    } finally {
      imageStream.removeListener(listener);
    }

    try {
      return fromImage(image);
    } finally {
      image.dispose();
    }
  }

  @internal
  ImageWrapper(this._pixels, this._width, this._height);

  @internal
  ImageProvider _extractImageProvider() {
    return RawImageProvider(
      _pixels,
      _width,
      _height,
    );
  }

  late ImageProvider imageProvider = _extractImageProvider();

  final Uint8List _pixels;
  final int _width;
  final int _height;
}

final _navigine_sdk_flutter_Bitmap_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int32, Int32),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_Bitmap_create_handle'));

final _navigine_sdk_flutter_bitmap_GetFieldpixels = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Bitmap_get_pixels'));

final _navigine_sdk_flutter_bitmap_GetFieldwidth = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_Bitmap_get_field_width'));

final _navigine_sdk_flutter_bitmap_GetFieldheight = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_Bitmap_get_field_height'));


final _navigine_sdk_flutter_bitmap_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Bitmap_release_handle'));


Pointer<Void> navigine_sdk_flutter_ImageWrapper_ToFfi(ImageWrapper value) {
    final _pixelsHandle = navigine_sdk_flutter_Uint8List_ToFfi(value._pixels);
    final _widthHandle = navigine_sdk_flutter_int_ToFfi(value._width);
    final _heightHandle = navigine_sdk_flutter_int_ToFfi(value._height);
    final _result = _navigine_sdk_flutter_Bitmap_CreateHandle(_pixelsHandle, _widthHandle, _heightHandle);
    navigine_sdk_flutter_Uint8List_ReleaseFfiHandle(_pixelsHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_widthHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_heightHandle);
    return _result;
}

ImageWrapper navigine_sdk_flutter_ImageWrapper_FromFfi(Pointer<Void> handle) {

  final _pixelsHandle = _navigine_sdk_flutter_bitmap_GetFieldpixels(handle);
  final _widthHandle = _navigine_sdk_flutter_bitmap_GetFieldwidth(handle);
  final _heightHandle = _navigine_sdk_flutter_bitmap_GetFieldheight(handle);

  try {
    return ImageWrapper(
      navigine_sdk_flutter_Uint8List_FromFfi(_pixelsHandle),
      navigine_sdk_flutter_int_FromFfi(_widthHandle),
      navigine_sdk_flutter_int_FromFfi(_heightHandle),
    );
  }
  finally  {
    // navigine_sdk_flutter_Uint8List_ReleaseFfiHandle(_pixelsHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_widthHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_heightHandle);
  }
}

void navigine_sdk_flutter_ImageWrapper_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_bitmap_ReleaseHandle(handle);

// ImageWrapper

final _navigine_sdk_flutter_ImageWrapper_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_ImageWrapper_create_handle_nullable'));
final _navigine_sdk_flutter_ImageWrapper_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_ImageWrapper_release_handle_nullable'));
final _navigine_sdk_flutter_ImageWrapper_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_ImageWrapper_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_ImageWrapper_ToFfiNullable(ImageWrapper? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = navigine_sdk_flutter_ImageWrapper_ToFfi(value);
  final result = _navigine_sdk_flutter_ImageWrapper_CreateHandleNullable(_handle);
  navigine_sdk_flutter_ImageWrapper_ReleaseFfiHandle(_handle);
  return result;
}

ImageWrapper? navigine_sdk_flutter_ImageWrapper_FromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _navigine_sdk_flutter_ImageWrapper_GetValueNullable(handle);
  final result = navigine_sdk_flutter_ImageWrapper_FromFfi(_handle);
  navigine_sdk_flutter_ImageWrapper_ReleaseFfiHandle(_handle);
  return result;
}

void navigine_sdk_flutter_ImageWrapper_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_ImageWrapper_ReleaseHandleNullable(handle);
