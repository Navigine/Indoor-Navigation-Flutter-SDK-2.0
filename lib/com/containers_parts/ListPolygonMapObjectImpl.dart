import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/polygon_map_object.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListPolygonMapObjectImpl {
  ListPolygonMapObjectImpl._();

  static List<PolygonMapObject> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => PolygonMapObject$Impl.fromExternalPtr(element));

  static List<PolygonMapObject>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => PolygonMapObject$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<PolygonMapObject>? value) =>
    toNativeListNullable(value, (element) => PolygonMapObject$Impl.getNativePtr(element));
}
