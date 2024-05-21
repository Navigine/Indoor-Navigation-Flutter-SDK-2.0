

import 'dart:ffi';
import 'dart:ui' as ui;
import 'dart:typed_data';
import 'dart:convert';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/image_provider.dart';


import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'package:ffi/ffi.dart';

// ui.Image "private" section, not exported.

final _navigine_sdk_flutter_ui_Image_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Double, Double),
    Pointer<Void> Function(double, double)
  >('navigine_sdk_flutter_ui_Image_create_handle'));
final _navigine_sdk_flutter_ui_Image_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_ui_Image_release_handle'));
final _navigine_sdk_flutter_ui_Image_GetFieldx = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Double Function(Pointer<Void>),
    double Function(Pointer<Void>)
  >('navigine_sdk_flutter_ui_Image_get_field_x'));
final _navigine_sdk_flutter_ui_Image_GetFieldy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Double Function(Pointer<Void>),
    double Function(Pointer<Void>)
  >('navigine_sdk_flutter_ui_Image_get_field_y'));


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


Pointer<Void> navigine_sdk_flutter_ui_Image_ToFfi(Image value) {
  // final _xHandle = (value.x);
  // final _yHandle = (value.y);
  final _result = _navigine_sdk_flutter_ui_Image_CreateHandle(0, 0);

  return _result;
}

Image navigine_sdk_flutter_ui_Image_FromFfi(Pointer<Void> handle) {

    final _pixelsHandle = _navigine_sdk_flutter_bitmap_GetFieldpixels(handle);
    final _widthHandle = _navigine_sdk_flutter_bitmap_GetFieldwidth(handle);
    final _heightHandle = _navigine_sdk_flutter_bitmap_GetFieldheight(handle);
    final  pixels = navigine_sdk_flutter_Uint8List_FromFfi(_pixelsHandle);

    try {
      ImageProvider imageProvider = RawImageProvider(
        pixels,
        navigine_sdk_flutter_int_FromFfi(_widthHandle),
        navigine_sdk_flutter_int_FromFfi(_heightHandle),
      );
      return Image(image: imageProvider);
    }
    finally  {
      navigine_sdk_flutter_Uint8List_ReleaseFfiHandle(_pixelsHandle);
      navigine_sdk_flutter_int_ReleaseFfiHandle(_widthHandle);
      navigine_sdk_flutter_int_ReleaseFfiHandle(_heightHandle);
    }
  }



  // // }
  // final bytes = Uint8List.fromList([
  //   137, 80, 78, 71, 13, 10, 26, 10, 0, 0, 0, 13, 73, 72, 68, 82, 0, 0, 0,
  //   1, 0, 0, 0, 1, 8, 6, 0, 0, 0, 31, 21, 196, 137, 0, 0, 0, 10, 73, 68, 65,
  //   84, 120, 156, 99, 0, 1, 0, 0, 5, 0, 1, 13, 10, 45, 180, 0, 0, 0, 0, 73,
  //   69, 78, 68, 174, 66, 96, 130 // prevent dartfmt
  // ]);

  // return bytes;


  // // // copy from decodeImageFromList of package:flutter/painting.dart
  // final codec = ui.instantiateImageCodec(bytes);
  // final frameInfo = await codec.getNextFrame();
  // return frameInfo.image;

  // // final _byteImage = Base64Decoder().convert(bytes);
  // // Widget image = Image.memory(_byteImage)

  // final buffer = ui.ImmutableBuffer.fromUint8List(bytes);

  // final id = ui.ImageDescriptor.raw(
  //       buffer,
  //       height: 1,
  //       width: 1,
  //       pixelFormat: ui.PixelFormat.rgba8888);
  // final codec = id.instantiateCodec(
  //       targetHeight: 1,
  //       targetWidth: 1);
  // final fi = codec.getNextFrame();
  // return fi.image;
// }

void navigine_sdk_flutter_ui_Image_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_ui_Image_ReleaseHandle(handle);

// Nullable ui.Image

final _navigine_sdk_flutter_ui_Image_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_ui_Image_create_handle_nullable'));
final _navigine_sdk_flutter_ui_Image_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_ui_Image_release_handle_nullable'));
final _navigine_sdk_flutter_ui_Image_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_ui_Image_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_ui_Image_ToFfiNullable(Image? value) {
  // if (value == null) return Pointer<Void>.fromAddress(0);
  // final _handle = navigine_sdk_flutter_ui_Image_ToFfi(value);
  // final result = _navigine_sdk_flutter_ui_Image_CreateHandleNullable(_handle);
  // navigine_sdk_flutter_ui_Image_ReleaseFfiHandle(_handle);
  // return result;
  return Pointer<Void>.fromAddress(0);
}

Image? navigine_sdk_flutter_ui_Image_FromFfiNullable(Pointer<Void> handle) {
  // if (handle.address == 0) return null;
  // final _handle = _navigine_sdk_flutter_ui_Image_GetValueNullable(handle);
  // final result = navigine_sdk_flutter_ui_Image_FromFfi(_handle);
  // navigine_sdk_flutter_ui_Image_ReleaseFfiHandle(_handle);
  // return result;
  return null;
}

void navigine_sdk_flutter_ui_Image_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_ui_Image_ReleaseHandleNullable(handle);

// End of math.Point<double> "private" section.
