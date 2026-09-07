import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/reference_point.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListReferencePointImpl {
  ListReferencePointImpl._();

  static List<ReferencePoint> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => ReferencePoint$Impl.fromExternalPtr(element));

  static List<ReferencePoint>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => ReferencePoint$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<ReferencePoint>? value) =>
    toNativeListNullable(value, (element) => ReferencePoint$Impl.getNativePtr(element));
}
