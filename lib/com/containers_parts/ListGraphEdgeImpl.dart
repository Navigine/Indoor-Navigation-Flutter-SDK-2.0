import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/graph_edge.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListGraphEdgeImpl {
  ListGraphEdgeImpl._();

  static List<GraphEdge> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => GraphEdge$Impl.fromExternalPtr(element));

  static List<GraphEdge>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => GraphEdge$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<GraphEdge>? value) =>
    toNativeListNullable(value, (element) => GraphEdge$Impl.getNativePtr(element));
}
