import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/log_info.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListLogInfoImpl {
  ListLogInfoImpl._();

  static List<LogInfo> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => LogInfoImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static List<LogInfo>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => LogInfoImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static Pointer<Void> getNativePtr(List<LogInfo>? value) =>
    toNativeListNullable(value, (element) => LogInfoImpl.toPointer(element));
}
