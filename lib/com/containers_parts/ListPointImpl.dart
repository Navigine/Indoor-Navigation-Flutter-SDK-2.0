import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListPointImpl {
  ListPointImpl._();

  static List<Point> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => PointImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static List<Point>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => PointImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static Pointer<Void> getNativePtr(List<Point>? value) =>
    toNativeListNullable(value, (element) => PointImpl.toPointer(element));
}
