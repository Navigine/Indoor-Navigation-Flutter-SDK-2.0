import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/sublocation.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListSublocationImpl {
  ListSublocationImpl._();

  static List<Sublocation> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => Sublocation$Impl.fromExternalPtr(element));

  static List<Sublocation>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => Sublocation$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<Sublocation>? value) =>
    toNativeListNullable(value, (element) => Sublocation$Impl.getNativePtr(element));
}
