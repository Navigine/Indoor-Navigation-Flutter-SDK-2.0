import 'dart:ffi';
import 'package:navigine_sdk/com/containers_parts/ListGlobalPointImpl.dart';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/global_point.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListListGlobalPointImpl {
  ListListGlobalPointImpl._();

  static List<List<GlobalPoint>> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => ListGlobalPointImpl.fromNativePtr(element));

  static List<List<GlobalPoint>>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => ListGlobalPointImpl.fromNativePtr(element));

  static Pointer<Void> getNativePtr(List<List<GlobalPoint>>? value) =>
    toNativeListNullable(value, (element) => ListGlobalPointImpl.getNativePtr(element));
}
