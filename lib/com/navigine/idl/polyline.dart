import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/point.dart';

part 'polyline.impl.dart';
/**
 * @file com/navigine/idl/polyline.dart
 * @brief @copybrief Polyline
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_geometry_classes
 *
 * @brief A polyline with specified number of points.
 *
 */
class Polyline {
    /// @brief Default constructor
    Polyline(this.points);
    /**
     * @brief List of points to connect.
     */
    List<Point> points;
}
