import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/route_annotation.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListRouteAnnotationImpl {
  ListRouteAnnotationImpl._();

  static List<RouteAnnotation> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => RouteAnnotationImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static List<RouteAnnotation>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => RouteAnnotationImpl.fromPointer(element, needFree: false, takeOwnership: false)!);

  static Pointer<Void> getNativePtr(List<RouteAnnotation>? value) =>
    toNativeListNullable(value, (element) => RouteAnnotationImpl.toPointer(element));
}
