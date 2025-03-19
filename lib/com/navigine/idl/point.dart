import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

part 'point.impl.dart';
/**
 * @file com/navigine/idl/point.dart
 * @brief @copybrief Point
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_geometry_classes
 *
 * @brief A point at the specified metrics coordinates.
 *
 */
class Point {
    /// @brief Default constructor
    Point(this.x, this.y);
    /**
     * @brief point's `x` coordinate in meters.
     */
    double x;
    /**
     * @brief point's `y` coordinate in meters.
     */
    double y;
}
