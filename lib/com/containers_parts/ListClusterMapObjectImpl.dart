import 'dart:ffi';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/cluster_map_object.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class ListClusterMapObjectImpl {
  ListClusterMapObjectImpl._();

  static List<ClusterMapObject> fromNativePtr(Pointer<Void> handle) =>
    fromPlatformList(handle, (element) => ClusterMapObject$Impl.fromExternalPtr(element));

  static List<ClusterMapObject>? fromOptionalPtr(Pointer<Void> handle) =>
    fromPlatformListNullable(handle, (element) => ClusterMapObject$Impl.fromExternalPtr(element));

  static Pointer<Void> getNativePtr(List<ClusterMapObject>? value) =>
    toNativeListNullable(value, (element) => ClusterMapObject$Impl.getNativePtr(element));
}
