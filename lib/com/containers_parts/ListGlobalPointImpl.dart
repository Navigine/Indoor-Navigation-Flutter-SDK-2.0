import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/global_point.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListGlobalPointImpl {
  ListGlobalPointImpl._();

  static List<GlobalPoint> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => GlobalPointImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static List<GlobalPoint>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => GlobalPointImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static Pointer<Void> getNativePtr(List<GlobalPoint>? value) =>
    toNativeListNullable(value, (element) => GlobalPointImpl.toPointer(element));
}
