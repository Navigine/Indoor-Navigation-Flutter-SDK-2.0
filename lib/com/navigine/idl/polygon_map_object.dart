import 'dart:ffi';
import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/navigine/idl/location_polygon.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object_type.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';
import 'package:navigine_sdk/com/weak_interface_wrapper.dart' as weak_interface_wrapper;

part 'polygon_map_object.impl.dart';
/// Represents a polygon object on the location view.
/// Referenced from [LocationWindow].
abstract class PolygonMapObject implements MapObject, Finalizable {

    /// Method is used to specify the source polygon of the object.
    /// [polygon] Metrics coordinates of the polygon [LocationPolygon].
    /// Returns true if success, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set polygon geometry
    /// List<Point> points = [
    ///  Point(100.0, 200.0),
    ///  Point(150.0, 250.0),
    ///  Point(200.0, 200.0),
    ///  Point(150.0, 150.0),
    /// ];
    /// Polygon metricPolygon = Polygon(points);
    /// LocationPolygon polygon = LocationPolygon(metricPolygon, 1, 0);
    /// bool success = _polygonMapObject!.setPolygon(polygon);
    /// print("Set polygon with ${points.length} points: $success");
    /// ```
    bool setPolygon(LocationPolygon polygon);

    /// Method is used to specify the color of the object.
    /// [red] Red RGBA component.
    /// [green] Green RGBA component.
    /// [blue] Blue RGBA component.
    /// [alpha] Opacity multiplier. Values below 0 will be set to 0. Default: 1.
    /// Returns true if success, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set polygon color
    /// bool colorSuccess = _polygonMapObject!.setColor(0.0, 1.0, 0.0, 0.7);
    /// print("Set polygon color to green with 70% opacity: $colorSuccess");
    /// ```
    bool setColor(double red, double green, double blue, double alpha);

    /// Method is used to specify the rendering order of the object.
    /// [order] The rendering order value. Default: 0.
    /// Returns true if success, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set polygon rendering order
    /// bool orderSuccess = _polygonMapObject!.setOrder(2);
    /// print("Set polygon rendering order to 2: $orderSuccess");
    /// ```
    bool setOrder(int order);

    bool isValid();



}
