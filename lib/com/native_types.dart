import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import '_library_context.dart' as __lib;

@internal
NativeString Function(Pointer<Utf8>, int) newNativeString = __lib
    .nativeLibrary
    .lookup<NativeFunction<NativeString Function(Pointer<Utf8>, Size)>>(
        'navigine_sdk_flutter_new_native_string')
    .asFunction(isLeaf: true);

@internal
NativeBytes Function(Pointer<Uint8>, int) newNativeBytes = __lib.nativeLibrary
    .lookup<NativeFunction<NativeBytes Function(Pointer<Uint8>, Size)>>(
        'navigine_sdk_flutter_new_native_bytes')
    .asFunction(isLeaf: true);

@internal
Pointer<Void> Function(bool, int, NativeString) newImageProvider = __lib
    .nativeLibrary
    .lookup<NativeFunction<Pointer<Void> Function(Bool, Int64, NativeString)>>(
        'navigine_sdk_flutter_new_image_provider')
    .asFunction(isLeaf: true);

@internal
Pointer<Void> Function(int, int, NativeString, Pointer<Void>)
    newModelProvider = __lib.nativeLibrary
        .lookup<
            NativeFunction<
                Pointer<Void> Function(Int64, Int64, NativeString,
                    Pointer<Void>)>>('navigine_sdk_flutter_new_model_provider')
        .asFunction(isLeaf: true);

@internal
NativeImageProvider Function(int, int) newNativeImageProvider = __lib
    .nativeLibrary
    .lookup<NativeFunction<NativeImageProvider Function(Uint32, Uint32)>>(
        'navigine_sdk_flutter_new_native_image_provider')
    .asFunction(isLeaf: true);

final class NativeString extends Struct {
  external Pointer<Utf8> ptr;

  @Size()
  external int size;
}

final class NativeImageProvider extends Struct {
  external Pointer<Void> p;
  external Pointer<Uint8> imageData;
}

final class NativeBytes extends Struct {
  external Pointer<Uint8> ptr;

  @Size()
  external int size;
}

final class NativeBitmap extends Struct {
  @Bool()
  external bool isRaw;
  external Pointer<Uint8> data;
  @Size()
  external int dataSize;
  @Uint32()
  external int width;
  @Uint32()
  external int height;
  external Pointer<Void> originalData;
}
