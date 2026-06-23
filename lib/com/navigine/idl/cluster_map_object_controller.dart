import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/containers__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/cluster_map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/cluster_map_object_controller_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/icon_map_object.dart';
import 'package:navigine_sdk/com/weak_interface_wrapper.dart' as weak_interface_wrapper;

part 'cluster_map_object_controller.impl.dart';
/// Groups [IconMapObject] instances into clusters depending on zoom and proximity.
/// Referenced from [LocationWindow].
/// Register icons with `addIconMapObject`, then optionally customize cluster appearance in
/// [ClusterMapObjectControllerListener] (`onClusterCreated`) and
/// [ClusterMapObjectListener] (`onClusterChanged`).
abstract class ClusterMapObjectController implements Finalizable {

    /// Adds an icon map object to the cluster controller.
    /// [iconMapObject] Icon to cluster [IconMapObject]. Must be added to the same [LocationWindow] via `addIconMapObject`.
    /// Returns true if the icon was added, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// final added1 = controller.addIconMapObject(clusterIcon1);
    /// final added2 = controller.addIconMapObject(clusterIcon2);
    /// print("Registered icons for clustering: $added1, $added2");
    /// ```
    bool addIconMapObject(IconMapObject iconMapObject);

    /// Removes an icon map object from the cluster controller.
    /// [iconMapObject] Icon to remove.
    /// Returns true if the icon was removed, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// final removed = controller.removeIconMapObject(clusterIcon1);
    /// print("Removed icon from cluster controller: $removed");
    /// ```
    bool removeIconMapObject(IconMapObject iconMapObject);

    /// Removes all icon map objects from the controller and destroys visible cluster markers.
    ///
    /// Example:
    /// ```dart
    /// controller.clear();
    /// print("Cleared cluster controller");
    /// ```
    void clear();

    /// Enables or disables clustering. Default: true.
    ///
    /// Example:
    /// ```dart
    /// controller.setEnabled(true);
    /// print("Clustering enabled");
    /// ```
    void setEnabled(bool enabled);

    /// Returns whether clustering is enabled.
    ///
    /// Example:
    /// ```dart
    /// final clusteringEnabled = controller.isEnabled;
    /// print("Clustering is enabled: $clusteringEnabled");
    /// ```
    bool isEnabled();

    /// Cluster radius in density-independent pixels. Default: 40.
    ///
    /// Example:
    /// ```dart
    /// controller.setRadius(40.0);
    /// print("Set cluster radius to 40 px");
    /// ```
    void setRadius(double radius);

    /// Returns cluster radius in density-independent pixels.
    ///
    /// Example:
    /// ```dart
    /// final clusterRadius = controller.getRadius();
    /// print("Cluster radius: $clusterRadius");
    /// ```
    double getRadius();

    /// Specifies whether cluster markers can be picked. Default: true.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// final interactiveSuccess = controller.setInteractive(true);
    /// print("Set cluster markers interactive: $interactiveSuccess");
    /// ```
    bool setInteractive(bool interactive);

    /// Specifies the size of the default cluster icon in pixels.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// final sizeSuccess = controller.setClusterSize(32.0, 32.0);
    /// print("Set default cluster icon size: $sizeSuccess");
    /// ```
    bool setClusterSize(double width, double height);

    /// Adds a listener for cluster lifecycle events [ClusterMapObjectControllerListener].
    /// [listener] Listener instance.
    ///
    /// Example:
    /// ```dart
    /// controller.addListener(_clusterMapObjectControllerListener!);
    /// print("Added cluster map object listener");
    /// ```
    void addListener(ClusterMapObjectControllerListener listener);

    /// Removes a previously added listener.
    /// [listener] Listener instance to remove.
    ///
    /// Example:
    /// ```dart
    /// controller.removeListener(_clusterMapObjectControllerListener!);
    /// print("Removed cluster map object listener");
    /// ```
    void removeListener(ClusterMapObjectControllerListener listener);

    /// Returns a snapshot of currently visible clusters.
    ///
    /// Example:
    /// ```dart
    /// final clusters = controller.getClusters();
    /// print("Visible clusters: ${clusters.length}");
    /// ```
    List<ClusterMapObject> getClusters();

    bool isValid();



}
