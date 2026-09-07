import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListLocationPointImpl {
  ListLocationPointImpl._();

  static List<LocationPoint> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => LocationPointImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static List<LocationPoint>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => LocationPointImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static Pointer<Void> getNativePtr(List<LocationPoint>? value) =>
    toNativeListNullable(value, (element) => LocationPointImpl.toPointer(element));
}
