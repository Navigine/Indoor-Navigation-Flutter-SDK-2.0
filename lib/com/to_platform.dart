import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import 'native_types.dart';

@internal
String readPlatformString(NativeString str) {
  return str.ptr.cast<Utf8>().toDartString(length: str.size);
}

@internal
String toPlatformString(NativeString str, {bool takeOwnership = true}) {
  final result = readPlatformString(str);
  if (takeOwnership) {
    malloc.free(str.ptr);
  }
  return result;
}

@internal
String? toPlatformFromPointerString(Pointer<Void> ptr, {bool needFree = true}) {
  if (ptr == nullptr) {
    return null;
  }
  final result = toPlatformString(ptr.cast<NativeString>().ref, takeOwnership: needFree);
  if (needFree) {
    malloc.free(ptr);
  }
  return result;
}

@internal
Uint8List readPlatformBytes(NativeBytes bytes) {
  final result = Uint8List(bytes.size);
  if (bytes.size > 0 && bytes.ptr != nullptr) {
    result.setAll(0, bytes.ptr.asTypedList(bytes.size));
  }
  return result;
}

@internal
Uint8List toPlatformBytes(NativeBytes bytes, {bool takeOwnership = true}) {
  final result = readPlatformBytes(bytes);
  if (takeOwnership) {
    malloc.free(bytes.ptr);
  }
  return result;
}

@internal
Uint8List? toPlatformFromPointerBytes(Pointer<Void> ptr, {bool needFree = true}) {
  if (ptr == nullptr) {
    return null;
  }
  final result = toPlatformBytes(ptr.cast<NativeBytes>().ref, takeOwnership: needFree);
  if (needFree) {
    malloc.free(ptr);
  }
  return result;
}

@internal
int? toPlatformFromPointerInt8(Pointer<Void> ptr, {bool needFree = true}) {
  if (ptr == nullptr) {
    return null;
  }
  final result = ptr.cast<Int8>().value;
  if (needFree) {
    malloc.free(ptr);
  }
  return result;
}

@internal
int? toPlatformFromPointerInt16(Pointer<Void> ptr, {bool needFree = true}) {
  if (ptr == nullptr) {
    return null;
  }
  final result = ptr.cast<Int16>().value;
  if (needFree) {
    malloc.free(ptr);
  }
  return result;
}

@internal
int? toPlatformFromPointerInt32(Pointer<Void> ptr, {bool needFree = true}) {
  if (ptr == nullptr) {
    return null;
  }
  final result = ptr.cast<Int32>().value;
  if (needFree) {
    malloc.free(ptr);
  }
  return result;
}

@internal
int? toPlatformFromPointerInt64(Pointer<Void> ptr, {bool needFree = true}) {
  if (ptr == nullptr) {
    return null;
  }
  final result = ptr.cast<Int64>().value;
  if (needFree) {
    malloc.free(ptr);
  }
  return result;
}

@internal
double? toPlatformFromPointerFloat(Pointer<Void> ptr, {bool needFree = true}) {
  if (ptr == nullptr) {
    return null;
  }
  final result = ptr.cast<Float>().value;
  if (needFree) {
    malloc.free(ptr);
  }
  return result;
}

@internal
double? toPlatformFromPointerDouble(Pointer<Void> ptr, {bool needFree = true}) {
  if (ptr == nullptr) {
    return null;
  }
  final result = ptr.cast<Double>().value;
  if (needFree) {
    malloc.free(ptr);
  }
  return result;
}

@internal
bool? toPlatformFromPointerBool(Pointer<Void> ptr, {bool needFree = true}) {
  if (ptr == nullptr) {
    return null;
  }
  final result = ptr.cast<Uint8>().value != 0;
  if (needFree) {
    malloc.free(ptr);
  }
  return result;
}
