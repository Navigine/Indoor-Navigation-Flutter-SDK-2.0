import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/point.dart';

part 'segment.impl.dart';
/**
 * @file com/navigine/idl/segment.dart
 * @brief @copybrief Segment
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_geometry_classes
 *
 * @brief line between two points.
 *
 *
 *
 * Dart code snippet:
 * @snippet geometry_utils_example.dart dart_Segment_constructor
 *
 */
class Segment {
    /// @brief Default constructor
    Segment(this.start, this.end);
    /**
     * @brief Start point of the segment.
     *
     *
     *
     * Dart code snippet:
     * @snippet geometry_utils_example.dart dart_Segment_getStart
     *
     */
    Point start;
    /**
     * @brief End point of the segment.
     *
     *
     *
     * Dart code snippet:
     * @snippet geometry_utils_example.dart dart_Segment_getEnd
     *
     */
    Point end;
}
