import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/route_path.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListRoutePathImpl {
  ListRoutePathImpl._();

  static List<RoutePath> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => RoutePath$Impl.fromExternalPtr(element));

  static List<RoutePath>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => RoutePath$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<RoutePath>? value) =>
    toNativeListNullable(value, (element) => RoutePath$Impl.getNativePtr(element));
}
