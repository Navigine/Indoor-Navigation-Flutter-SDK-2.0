import 'dart:ffi';
import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/containers__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/navigine/idl/cluster_map_object_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/icon_map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object_type.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';
import 'package:navigine_sdk/com/weak_interface_wrapper.dart' as weak_interface_wrapper;
import 'package:navigine_sdk/image_provider.dart';

part 'cluster_map_object.impl.dart';
/// Runtime snapshot of a visible icon cluster on the location view.
/// Created and updated by [ClusterMapObjectController].
/// Member [IconMapObject] instances are hidden while grouped; the cluster marker is shown instead.
/// **Note:** Position and membership are managed by the controller and cannot be changed through this interface.
/// Use [ClusterMapObjectListener] (`onClusterChanged`) to refresh a custom cluster bitmap when the member count changes.
abstract class ClusterMapObject implements MapObject, Finalizable {

    /// Method is used to specify the decoded raster for the cluster marker.
    /// [bitmap] Image provider: Android com.navigine.image.ImageProvider; iOS UIImage via binding; Flutter navigine_sdk ImageProvider.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// final clusterBitmap = ImageProvider.fromFile("/path/to/cluster.png");
    /// final bitmapSuccess = cluster.setBitmap(clusterBitmap);
    /// print("Set cluster bitmap from ImageProvider: $bitmapSuccess");
    /// ```
    bool setBitmap(ImageProvider bitmap);

    /// Adds a listener for cluster state updates [ClusterMapObjectListener].
    /// [listener] Listener instance.
    ///
    /// Example:
    /// ```dart
    /// cluster.addListener(_clusterChangeListener);
    /// print('Added cluster change listener, initial count: ${cluster.count}');
    /// ```
    void addListener(ClusterMapObjectListener listener);

    /// Removes a previously added listener.
    /// [listener] Listener instance to remove.
    ///
    /// Example:
    /// ```dart
    /// cluster.removeListener(_clusterChangeListener);
    /// print('Removed cluster change listener');
    /// ```
    void removeListener(ClusterMapObjectListener listener);

    bool isValid();

    /// Cluster center in metrics coordinates.
    LocationPoint get position;
    /// Number of icon map objects in the cluster (at least 2 while the cluster is visible).
    int get count;
    /// Icon map objects currently grouped into this cluster.
    List<IconMapObject> get iconMapObjects;


}
