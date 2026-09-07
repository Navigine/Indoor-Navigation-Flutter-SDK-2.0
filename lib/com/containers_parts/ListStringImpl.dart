import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListStringImpl {
  ListStringImpl._();

  static List<String> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => toPlatformFromPointerString(element, needFree: false)!);

  static List<String>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => toPlatformFromPointerString(element, needFree: false)!);

  static Pointer<Void> getNativePtr(List<String>? value) =>
    toNativeListNullable(value, (element) => toNativePtrString(element));
}
