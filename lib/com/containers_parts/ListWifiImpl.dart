import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/wifi.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListWifiImpl {
  ListWifiImpl._();

  static List<Wifi> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => Wifi$Impl.fromExternalPtr(element));

  static List<Wifi>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => Wifi$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<Wifi>? value) =>
    toNativeListNullable(value, (element) => Wifi$Impl.getNativePtr(element));
}
