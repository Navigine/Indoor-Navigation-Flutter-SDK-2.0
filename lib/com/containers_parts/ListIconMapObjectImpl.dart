import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/icon_map_object.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListIconMapObjectImpl {
  ListIconMapObjectImpl._();

  static List<IconMapObject> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => IconMapObject$Impl.fromExternalPtr(element));

  static List<IconMapObject>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => IconMapObject$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<IconMapObject>? value) =>
    toNativeListNullable(value, (element) => IconMapObject$Impl.getNativePtr(element));
}
