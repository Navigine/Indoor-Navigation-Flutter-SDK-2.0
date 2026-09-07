import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/map_filter_condition.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListMapFilterConditionImpl {
  ListMapFilterConditionImpl._();

  static List<MapFilterCondition> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => MapFilterConditionImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static List<MapFilterCondition>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => MapFilterConditionImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static Pointer<Void> getNativePtr(List<MapFilterCondition>? value) =>
    toNativeListNullable(value, (element) => MapFilterConditionImpl.toPointer(element));
}
