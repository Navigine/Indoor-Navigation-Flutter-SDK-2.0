import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/beacon_proximity_entry.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListBeaconProximityEntryImpl {
  ListBeaconProximityEntryImpl._();

  static List<BeaconProximityEntry> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => BeaconProximityEntryImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static List<BeaconProximityEntry>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => BeaconProximityEntryImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static Pointer<Void> getNativePtr(List<BeaconProximityEntry>? value) =>
    toNativeListNullable(value, (element) => BeaconProximityEntryImpl.toPointer(element));
}
