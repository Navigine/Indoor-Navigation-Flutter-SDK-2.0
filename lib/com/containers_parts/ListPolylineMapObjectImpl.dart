import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/polyline_map_object.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListPolylineMapObjectImpl {
  ListPolylineMapObjectImpl._();

  static List<PolylineMapObject> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => PolylineMapObject$Impl.fromExternalPtr(element));

  static List<PolylineMapObject>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => PolylineMapObject$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<PolylineMapObject>? value) =>
    toNativeListNullable(value, (element) => PolylineMapObject$Impl.getNativePtr(element));
}
