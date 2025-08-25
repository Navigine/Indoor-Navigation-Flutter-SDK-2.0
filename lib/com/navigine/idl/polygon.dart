import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/point.dart';

part 'polygon.impl.dart';
/**
 * @file com/navigine/idl/polygon.dart
 * @brief @copybrief Polygon
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_geometry_classes
 *
 * @brief A polygon with specified list of points.
 *
 *
 *
 * Dart code snippet:
 * @snippet geometry_utils_example.dart dart_Polygon_constructor
 *
 */
class Polygon {
    /// @brief Default constructor
    Polygon(this.points);
    /**
     * @brief Ring specifying the area.
     *
     *
     *
     * Dart code snippet:
     * @snippet geometry_utils_example.dart dart_Polygon_getPoints
     *
     */
    List<Point> points;
}
