import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/location_polyline.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListLocationPolylineImpl {
  ListLocationPolylineImpl._();

  static List<LocationPolyline> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => LocationPolylineImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static List<LocationPolyline>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => LocationPolylineImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static Pointer<Void> getNativePtr(List<LocationPolyline>? value) =>
    toNativeListNullable(value, (element) => LocationPolylineImpl.toPointer(element));
}
