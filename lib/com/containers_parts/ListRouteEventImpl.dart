import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/route_event.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListRouteEventImpl {
  ListRouteEventImpl._();

  static List<RouteEvent> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => RouteEventImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static List<RouteEvent>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => RouteEventImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static Pointer<Void> getNativePtr(List<RouteEvent>? value) =>
    toNativeListNullable(value, (element) => RouteEventImpl.toPointer(element));
}
