import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/route_node.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListRouteNodeImpl {
  ListRouteNodeImpl._();

  static List<RouteNode> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => RouteNodeImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static List<RouteNode>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => RouteNodeImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static Pointer<Void> getNativePtr(List<RouteNode>? value) =>
    toNativeListNullable(value, (element) => RouteNodeImpl.toPointer(element));
}
