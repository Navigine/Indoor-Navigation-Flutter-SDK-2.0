import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/beacon.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListBeaconImpl {
  ListBeaconImpl._();

  static List<Beacon> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => Beacon$Impl.fromExternalPtr(element));

  static List<Beacon>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => Beacon$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<Beacon>? value) =>
    toNativeListNullable(value, (element) => Beacon$Impl.getNativePtr(element));
}
