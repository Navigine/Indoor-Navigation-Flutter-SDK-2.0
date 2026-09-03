import 'dart:ffi';
import 'dart:typed_data';
import 'dart:ui';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/navigine/idl/location_polygon.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object_type.dart';
import 'package:navigine_sdk/com/navigine/idl/title_style.dart';
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
    /// List<GlobalPoint> points = [
    ///  GlobalPoint(100.0, 200.0),
    ///  GlobalPoint(150.0, 250.0),
    ///  GlobalPoint(200.0, 200.0),
    ///  GlobalPoint(150.0, 150.0),
    /// ];
    /// LocationPolygon polygon = LocationPolygon(points, 0);
    /// bool success = _polygonMapObject!.setPolygon(polygon);
    /// print("Set polygon with ${points.length} points: $success");
    /// ```
    bool setPolygon(LocationPolygon polygon);

    /// Method is used to specify the color of the object.
    /// [color] Fill color.
    /// Returns true if success, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set polygon color
    /// bool colorSuccess = _polygonMapObject!.setColor(const Color(0xB300FF00));
    /// print("Set polygon color to green with 70% opacity: $colorSuccess");
    /// ```
    bool setColor(Color color);

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

    /// Method is used to specify the color of the polygon’s outline.
    /// [color] Outline color.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set polygon outline color
    /// bool outlineColorSuccess = _polygonMapObject!.setOutlineColor(const Color(0xFF0000FF));
    /// print("Set polygon outline color to blue: $outlineColorSuccess");
    /// ```
    bool setOutlineColor(Color color);

    /// Method is used to specify the width of the polygon’s outline.
    /// [width] Width of the outline in pixels.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set polygon outline width
    /// bool outlineWidthSuccess = _polygonMapObject!.setOutlineWidth(2.0);
    /// print("Set polygon outline width to 2.0 pixels: $outlineWidthSuccess");
    /// ```
    bool setOutlineWidth(double width);

    /// Method is used to specify the opacity of the polygon’s outline.
    /// [alpha] Opacity multiplier (0 to 1). Values below 0 are set to 0. Default: 1.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set polygon outline alpha
    /// bool outlineAlphaSuccess = _polygonMapObject!.setOutlineAlpha(0.8);
    /// print("Set polygon outline alpha to 0.8: $outlineAlphaSuccess");
    /// ```
    bool setOutlineAlpha(double alpha);

    /// Method is used to specify the rendering order of the polygon’s outline.
    /// [order] The rendering order value. Default: 0.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set polygon outline order
    /// bool outlineOrderSuccess = _polygonMapObject!.setOutlineOrder(1);
    /// print("Set polygon outline order to 1: $outlineOrderSuccess");
    /// ```
    bool setOutlineOrder(int order);

    bool isValid();



}
