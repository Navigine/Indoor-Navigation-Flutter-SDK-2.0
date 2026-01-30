import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/point.dart';

part 'bounding_box.impl.dart';
/**
 * @file com/navigine/idl/bounding_box.dart
 * @brief @copybrief BoundingBox
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_geometry_classes
 *
 * @brief Axis-aligned bounding box defined by two corner points.
 *
 *
 *
 * Dart code snippet:
 * @snippet geometry_utils_example.dart dart_BoundingBox_constructor
 *
 */
class BoundingBox {
    /// @brief Default constructor
    BoundingBox(this.bottomLeft, this.topRight);
    /**
     * @brief Lower-left corner of the bounding box.
     *
     *
     *
     * Dart code snippet:
     * @snippet geometry_utils_example.dart dart_BoundingBox_getBottomLeft
     *
     */
    Point bottomLeft;
    /**
     * @brief Upper-right corner of the bounding box.
     *
     *
     *
     * Dart code snippet:
     * @snippet geometry_utils_example.dart dart_BoundingBox_getTopRight
     *
     */
    Point topRight;
}
