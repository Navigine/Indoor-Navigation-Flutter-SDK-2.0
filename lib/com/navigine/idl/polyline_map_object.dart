import 'dart:ffi';
import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/navigine/idl/cap_type.dart';
import 'package:navigine_sdk/com/navigine/idl/join_type.dart';
import 'package:navigine_sdk/com/navigine/idl/location_polyline.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object_type.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';
import 'package:navigine_sdk/com/weak_interface_wrapper.dart' as weak_interface_wrapper;

part 'polyline_map_object.impl.dart';
/// Represents a polyline object on the location view.
/// Referenced from [LocationWindow].
abstract class PolylineMapObject implements MapObject, Finalizable {

    /// Method is used to specify the source polyline of the object.
    /// [polyline] Metrics coordinates of the polyline [LocationPolyline].
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set polyline geometry
    /// List<Point> polylinePoints = [
    ///  Point(0.0, 0.0),
    ///  Point(50.0, 50.0),
    ///  Point(100.0, 0.0),
    ///  Point(150.0, 50.0),
    /// ];
    /// Polyline polyline = Polyline(polylinePoints);
    /// LocationPolyline locationPolyline = LocationPolyline(polyline, 1, 0);
    /// bool success = _polylineMapObject!.setPolyLine(locationPolyline);
    /// print("Set polyline geometry: $success");
    /// ```
    bool setPolyLine(LocationPolyline polyline);

    /// Method is used to specify the width of the polyline.
    /// [width] Width of the polyline in pixels.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set polyline width
    /// bool widthSuccess = _polylineMapObject!.setWidth(3.0);
    /// print("Set polyline width to 3.0 pixels: $widthSuccess");
    /// ```
    bool setWidth(double width);

    /// Method is used to specify the fill color of the polyline.
    /// [red] Red RGBA component (0 to 1).
    /// [green] Green RGBA component (0 to 1).
    /// [blue] Blue RGBA component (0 to 1).
    /// [alpha] Opacity multiplier (0 to 1). Values below 0 are set to 0. Default: 1.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set polyline color
    /// bool colorSuccess = _polylineMapObject!.setColor(1.0, 0.5, 0.0, 0.9);
    /// print("Set polyline color to orange with 90% opacity: $colorSuccess");
    /// ```
    bool setColor(double red, double green, double blue, double alpha);

    /// Method is used to specify the rendering order of the polyline.
    /// [order] The rendering order value. Default: 0.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set rendering order
    /// bool orderSuccess = _polylineMapObject!.setOrder(2);
    /// print("Set rendering order to 2: $orderSuccess");
    /// ```
    bool setOrder(int order);

    /// Method is used to specify the cap style for the polyline ends.
    /// [cap] The cap type [CapType]. Default: BUTT.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set cap type
    /// bool capSuccess = _polylineMapObject!.setCapType(CapType.ROUND);
    /// print("Set cap type to ROUND: $capSuccess");
    /// ```
    bool setCapType(CapType cap);

    /// Method is used to specify the join style for polyline segments.
    /// [join] The join type [JoinType]. Default: MITER.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set join type
    /// bool joinSuccess = _polylineMapObject!.setJoinType(JoinType.ROUND);
    /// print("Set join type to ROUND: $joinSuccess");
    /// ```
    bool setJoinType(JoinType join);

    /// Method is used to specify the miter limit for miter joins.
    /// [miterLimit] The miter limit value for miter joins. Default: 3.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set miter limit
    /// bool miterSuccess = _polylineMapObject!.setMiterLimit(5.0);
    /// print("Set miter limit to 5.0: $miterSuccess");
    /// ```
    bool setMiterLimit(double miterLimit);

    /// Method is used to specify the color of the polyline’s outline.
    /// [red] Red RGBA component (0 to 1).
    /// [green] Green RGBA component (0 to 1).
    /// [blue] Blue RGBA component (0 to 1).
    /// [alpha] Opacity multiplier (0 to 1). Values below 0 are set to 0. Default: 1.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set outline color
    /// bool outlineColorSuccess = _polylineMapObject!.setOutlineColor(
    ///  0.0,
    ///  0.0,
    ///  0.0,
    ///  1.0,
    /// );
    /// print("Set polyline outline color to black: $outlineColorSuccess");
    /// ```
    bool setOutlineColor(double red, double green, double blue, double alpha);

    /// Method is used to specify the width of the polyline’s outline.
    /// [radius] Width of the outline in pixels.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set outline width
    /// bool outlineWidthSuccess = _polylineMapObject!.setOutlineWidth(1.0);
    /// print("Set polyline outline width to 1.0: $outlineWidthSuccess");
    /// ```
    bool setOutlineWidth(double radius);

    /// Method is used to specify the opacity of the polyline’s outline.
    /// [alpha] Opacity multiplier (0 to 1). Values below 0 are set to 0. Default: 1.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set outline alpha
    /// bool outlineAlphaSuccess = _polylineMapObject!.setOutlineAlpha(0.8);
    /// print("Set polyline outline alpha to 0.8: $outlineAlphaSuccess");
    /// ```
    bool setOutlineAlpha(double alpha);

    /// Method is used to specify the cap style for the polyline’s outline ends.
    /// [cap] The cap type [CapType]. Default: BUTT.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set outline cap type
    /// bool outlineCapSuccess = _polylineMapObject!.setOutlineCapType(
    ///  CapType.ROUND,
    /// );
    /// print("Set polyline outline cap type to ROUND: $outlineCapSuccess");
    /// ```
    bool setOutlineCapType(CapType cap);

    /// Method is used to specify the join style for the polyline’s outline segments.
    /// [join] The join type [JoinType]. Default: MITER.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set outline join type
    /// bool outlineJoinSuccess = _polylineMapObject!.setOutlineJoinType(
    ///  JoinType.ROUND,
    /// );
    /// print("Set polyline outline join type to ROUND: $outlineJoinSuccess");
    /// ```
    bool setOutlineJoinType(JoinType join);

    /// Method is used to specify the miter limit for the polyline’s outline miter joins.
    /// [miterLimit] The miter limit value for outline miter joins. Default: 3.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set outline miter limit
    /// bool outlineMiterSuccess = _polylineMapObject!.setOutlineMiterLimit(3.0);
    /// print("Set polyline outline miter limit to 3.0: $outlineMiterSuccess");
    /// ```
    bool setOutlineMiterLimit(double miterLimit);

    /// Method is used to specify the rendering order of the polyline’s outline.
    /// [order] The rendering order value for the outline. Default: 0.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set outline order
    /// bool outlineOrderSuccess = _polylineMapObject!.setOutlineOrder(1);
    /// print("Set polyline outline order to 1: $outlineOrderSuccess");
    /// ```
    bool setOutlineOrder(int order);

    bool isValid();



}
