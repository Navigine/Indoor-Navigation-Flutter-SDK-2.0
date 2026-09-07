import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/location_info.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class MapInt_LocationInfoImpl {
  MapInt_LocationInfoImpl._();

  static Map<int, LocationInfo> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformIntMap(handle, (nativeValue) => LocationInfoImpl.fromPointer(nativeValue, needFree: false, takeOwnership: false)!);

  static Map<int, LocationInfo>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformIntMapNullable(handle, (nativeValue) => LocationInfoImpl.fromPointer(nativeValue, needFree: false, takeOwnership: false)!);

  static Pointer<Void> getNativePtr(Map<int, LocationInfo>? value) =>
    toNativeIntMapNullable(value, (key) => key, (value) => LocationInfoImpl.toPointer(value));
}
