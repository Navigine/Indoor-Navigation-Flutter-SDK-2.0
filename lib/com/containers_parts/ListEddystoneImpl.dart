import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/eddystone.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListEddystoneImpl {
  ListEddystoneImpl._();

  static List<Eddystone> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => Eddystone$Impl.fromExternalPtr(element));

  static List<Eddystone>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => Eddystone$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<Eddystone>? value) =>
    toNativeListNullable(value, (element) => Eddystone$Impl.getNativePtr(element));
}
