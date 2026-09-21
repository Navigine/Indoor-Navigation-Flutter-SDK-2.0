import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/route_view.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListRouteViewImpl {
  ListRouteViewImpl._();

  static List<RouteView> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => RouteView$Impl.fromExternalPtr(element));

  static List<RouteView>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => RouteView$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<RouteView>? value) =>
    toNativeListNullable(value, (element) => RouteView$Impl.getNativePtr(element));
}
