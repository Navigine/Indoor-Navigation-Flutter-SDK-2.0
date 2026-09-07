import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/zone.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListZoneImpl {
  ListZoneImpl._();

  static List<Zone> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => Zone$Impl.fromExternalPtr(element));

  static List<Zone>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => Zone$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<Zone>? value) =>
    toNativeListNullable(value, (element) => Zone$Impl.getNativePtr(element));
}
