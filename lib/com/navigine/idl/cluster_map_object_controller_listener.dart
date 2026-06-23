import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart' as weak_map;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/cluster_map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/cluster_map_object_controller.dart';

part 'cluster_map_object_controller_listener.impl.dart';
/// Listener for cluster lifecycle events on [ClusterMapObjectController].
/// Cluster pick is delivered via [PickListener] (`pickMapObjectAt`).
/// `onClusterCreated` is called when a cluster appears (at least two icons grouped).
/// `onClusterDestroyed` is called when a cluster is removed (fewer than two icons remain or controller is cleared).
abstract class ClusterMapObjectControllerListener {

    /// A new cluster marker appeared.
    /// [controller] Cluster controller that owns the cluster.
    /// [cluster] Newly created cluster. Use `getCount()` for the initial badge value.
    ///
    /// Example:
    /// ```dart
    /// @override
    /// void onClusterCreated(ClusterMapObjectController controller, ClusterMapObject cluster) {
    ///  // [dart_ClusterMapObject_addListener]
    ///  cluster.addListener(_clusterChangeListener);
    ///  print('Added cluster change listener, initial count: ${cluster.count}');
    ///  // [dart_ClusterMapObject_addListener]
    ///  _activeCluster = cluster;
    /// }
    /// ```
    void onClusterCreated(ClusterMapObjectController controller, ClusterMapObject cluster);

    /// A cluster marker was removed.
    /// [controller] Cluster controller that owned the cluster.
    /// [clusterId] Identifier of the destroyed cluster (same as [ClusterMapObject] `getId()`).
    ///
    /// Example:
    /// ```dart
    /// @override
    /// void onClusterDestroyed(ClusterMapObjectController controller, int clusterId) {
    ///  final cluster = _activeCluster;
    ///  if (cluster != null && cluster.id == clusterId) {
    ///    // [dart_ClusterMapObject_removeListener]
    ///    cluster.removeListener(_clusterChangeListener);
    ///    print('Removed cluster change listener');
    ///    // [dart_ClusterMapObject_removeListener]
    ///    _activeCluster = null;
    ///  }
    ///  print('Cluster destroyed, id: $clusterId');
    /// }
    /// ```
    void onClusterDestroyed(ClusterMapObjectController controller, int clusterId);



}
