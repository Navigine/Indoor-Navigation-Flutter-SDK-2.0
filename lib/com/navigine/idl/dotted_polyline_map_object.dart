import 'dart:ffi';
import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/navigine/idl/location_polyline.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object_type.dart';
import 'package:navigine_sdk/com/navigine/idl/placement.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';
import 'package:navigine_sdk/com/weak_interface_wrapper.dart' as weak_interface_wrapper;

part 'dotted_polyline_map_object.impl.dart';
/// Represents a polyline object with points placed along it on the location view.
/// Referenced from [LocationWindow].
abstract class DottedPolylineMapObject implements MapObject, Finalizable {

    /// Method is used to specify the source polyline for the points.
    /// [polyline] Metrics coordinates of the polyline [LocationPolyline].
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set dotted polyline geometry
    /// List<Point> dottedPoints = [
    ///  Point(0.0, 100.0),
    ///  Point(50.0, 150.0),
    ///  Point(100.0, 100.0),
    ///  Point(150.0, 150.0),
    /// ];
    /// Polyline dottedPolyline = Polyline(dottedPoints);
    /// LocationPolyline locationDottedPolyline = LocationPolyline(
    ///  dottedPolyline,
    ///  1,
    ///  0,
    /// );
    /// bool success = _dottedPolylineMapObject!.setPolyLine(
    ///  locationDottedPolyline,
    /// );
    /// print("Set dotted polyline geometry: $success");
    /// ```
    bool setPolyLine(LocationPolyline polyline);

    /// Method is used to specify the color of the object.
    /// [red] Red RGBA component.
    /// [green] Green RGBA component.
    /// [blue] Blue RGBA component.
    /// [alpha] Opacity multiplier. Values below 0 will be set to 0. Default: 1.
    /// Returns true if success, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set dotted polyline color
    /// bool colorSuccess = _dottedPolylineMapObject!.setColor(
    ///  0.5,
    ///  0.0,
    ///  1.0,
    ///  0.8,
    /// );
    /// print(
    ///  "Set dotted polyline color to purple with 80% opacity: $colorSuccess",
    /// );
    /// ```
    bool setColor(double red, double green, double blue, double alpha);

    /// Method is used to specify the size of the points.
    /// [width] Width of the points in pixels.
    /// [height] Height of the points in pixels.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set size
    /// bool sizeSuccess = _dottedPolylineMapObject!.setSize(16.0, 16.0);
    /// print("Set dotted polyline size to 16x16: $sizeSuccess");
    /// ```
    bool setSize(double width, double height);

    /// Method is used to enable or disable collision detection for the icon.
    /// [enabled] Specifies whether collision detection is enabled (true) or disabled (false). Default: false.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Enable collision detection
    /// bool collisionSuccess = _dottedPolylineMapObject!.setCollisionEnabled(
    ///  true,
    /// );
    /// print(
    ///  "Enabled collision detection for dotted polyline: $collisionSuccess",
    /// );
    /// ```
    bool setCollisionEnabled(bool enabled);

    /// Method is used to specify the placement mode for points along the polyline.
    /// [placement] The placement mode [Placement]. Default: VERTEX.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set placement type
    /// bool placementSuccess = _dottedPolylineMapObject!.setPlacement(
    ///  Placement.center,
    /// );
    /// print("Set dotted polyline placement to center: $placementSuccess");
    /// ```
    bool setPlacement(Placement placement);

    /// Method is used to specify the minimum ratio of the polyline length for point placement.
    /// [ratio] The minimum ratio of the polyline length (typically between 0 and 1). Default: 1.0.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set placement min ratio
    /// bool minRatioSuccess = _dottedPolylineMapObject!.setPlacementMinRatio(
    ///  0.5,
    /// );
    /// print("Set dotted polyline placement min ratio to 0.5: $minRatioSuccess");
    /// ```
    bool setPlacementMinRatio(double ratio);

    /// Method is used to specify the spacing between points for spaced placement.
    /// [spacing] The spacing distance in pixels. Default: 80.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set placement spacing
    /// bool spacingSuccess = _dottedPolylineMapObject!.setPlacementSpacing(10.0);
    /// print("Set dotted polyline placement spacing to 10.0: $spacingSuccess");
    /// ```
    bool setPlacementSpacing(double spacing);

    /// Method is used to specify the distance interval for repeating points along the polyline.
    /// [distance] The repeat distance in pixels. Default: 0.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set repeat distance
    /// bool repeatDistanceSuccess = _dottedPolylineMapObject!.setRepeatDistance(
    ///  20.0,
    /// );
    /// print(
    ///  "Set dotted polyline repeat distance to 20.0: $repeatDistanceSuccess",
    /// );
    /// ```
    bool setRepeatDistance(double distance);

    /// Method is used to specify the group identifier for repeating points.
    /// [group] The group identifier for point repetition. Default: 0.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set repeat group
    /// bool repeatGroupSuccess = _dottedPolylineMapObject!.setRepeatGroup(1);
    /// print("Set dotted polyline repeat group to 1: $repeatGroupSuccess");
    /// ```
    bool setRepeatGroup(int group);

    /// Method is used to specify the priority of the icon.
    /// [priority] The priority value for rendering or interaction. Default: max.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set rendering priority
    /// bool prioritySuccess = _dottedPolylineMapObject!.setPriority(1);
    /// print("Set dotted polyline rendering priority to 1: $prioritySuccess");
    /// ```
    bool setPriority(double priority);

    bool isValid();



}
