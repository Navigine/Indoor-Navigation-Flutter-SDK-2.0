import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart' as weak_map;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/cluster_map_object.dart';

part 'cluster_map_object_listener.impl.dart';
/// Listener for updates of a single [ClusterMapObject].
/// `onClusterChanged` is called when the cluster member count changes while it remains a cluster (at least two icons).
/// It is not called when the cluster is created or destroyed.
abstract class ClusterMapObjectListener {

    /// Cluster marker needs an app-side update (bitmap, label, etc.).
    /// [cluster] Cluster with at least two member icons. Use `getCount()` for the badge value.
    ///
    /// Example:
    /// ```dart
    /// @override
    /// void onClusterChanged(ClusterMapObject cluster) {
    ///  final memberCount = cluster.getCount();
    ///  print("Cluster changed, member count: $memberCount");
    /// }
    /// ```
    void onClusterChanged(ClusterMapObject cluster);



}
