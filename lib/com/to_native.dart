import 'dart:convert';
import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import 'native_types.dart';

@internal
NativeString toNativeString(String str) {
  final units = utf8.encode(str);
  final result = malloc<Uint8>(units.length);
  result.asTypedList(units.length).setAll(0, units);
  return newNativeString(result.cast(), units.length);
}

@internal
Pointer<Void> toNativePtrString(String? str) {
  if (str == null) {
    return nullptr;
  }
  final ptr = malloc<NativeString>();
  ptr.ref = toNativeString(str);
  return ptr.cast<Void>();
}

@internal
NativeBytes toNativeBytes(Uint8List bytes) {
  final result = malloc<Uint8>(bytes.length);
  result.asTypedList(bytes.length).setAll(0, bytes);
  return newNativeBytes(result, bytes.length);
}

@internal
Pointer<Void> toNativePtrBytes(Uint8List? bytes) {
  if (bytes == null) {
    return nullptr;
  }
  final ptr = malloc<NativeBytes>();
  ptr.ref = toNativeBytes(bytes);
  return ptr.cast<Void>();
}

@internal
Pointer<Void> toNativePtrInt8(int? val) {
  if (val == null) {
    return nullptr;
  }
  final ptr = malloc<Int8>();
  ptr.value = val;
  return ptr.cast<Void>();
}

@internal
Pointer<Void> toNativePtrInt16(int? val) {
  if (val == null) {
    return nullptr;
  }
  final ptr = malloc<Int16>();
  ptr.value = val;
  return ptr.cast<Void>();
}

@internal
Pointer<Void> toNativePtrInt32(int? val) {
  if (val == null) {
    return nullptr;
  }
  final ptr = malloc<Int32>();
  ptr.value = val;
  return ptr.cast<Void>();
}

@internal
Pointer<Void> toNativePtrInt64(int? val) {
  if (val == null) {
    return nullptr;
  }
  final ptr = malloc<Int64>();
  ptr.value = val;
  return ptr.cast<Void>();
}

@internal
Pointer<Void> toNativePtrFloat(double? val) {
  if (val == null) {
    return nullptr;
  }
  final ptr = malloc<Float>();
  ptr.value = val;
  return ptr.cast<Void>();
}

@internal
Pointer<Void> toNativePtrDouble(double? val) {
  if (val == null) {
    return nullptr;
  }
  final ptr = malloc<Double>();
  ptr.value = val;
  return ptr.cast<Void>();
}

@internal
Pointer<Void> toNativePtrBool(bool? val) {
  if (val == null) {
    return nullptr;
  }
  final ptr = malloc<Uint8>();
  ptr.value = val ? 1 : 0;
  return ptr.cast<Void>();
}
