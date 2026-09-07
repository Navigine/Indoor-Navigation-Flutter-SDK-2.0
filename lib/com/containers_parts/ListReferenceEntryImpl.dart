import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/reference_entry.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListReferenceEntryImpl {
  ListReferenceEntryImpl._();

  static List<ReferenceEntry> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => ReferenceEntry$Impl.fromExternalPtr(element));

  static List<ReferenceEntry>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => ReferenceEntry$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<ReferenceEntry>? value) =>
    toNativeListNullable(value, (element) => ReferenceEntry$Impl.getNativePtr(element));
}
