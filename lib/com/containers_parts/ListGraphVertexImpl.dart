import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/graph_vertex.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListGraphVertexImpl {
  ListGraphVertexImpl._();

  static List<GraphVertex> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => GraphVertex$Impl.fromExternalPtr(element));

  static List<GraphVertex>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => GraphVertex$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<GraphVertex>? value) =>
    toNativeListNullable(value, (element) => GraphVertex$Impl.getNativePtr(element));
}
