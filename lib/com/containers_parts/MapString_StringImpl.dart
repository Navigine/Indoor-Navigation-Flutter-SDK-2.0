import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class MapString_StringImpl {
  MapString_StringImpl._();

  static Map<String, String> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformStringMap(handle, (nativeValue) => toPlatformFromPointerString(nativeValue, needFree: false)!);

  static Map<String, String>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformStringMapNullable(handle, (nativeValue) => toPlatformFromPointerString(nativeValue, needFree: false)!);

  static Pointer<Void> getNativePtr(Map<String, String>? value) =>
    toNativeStringMapNullable(value, (value) => toNativePtrString(value));
}
