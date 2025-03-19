import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/segment.dart';

part 'line.impl.dart';
/**
 * @file com/navigine/idl/line.dart
 * @brief @copybrief Line
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_geometry_classes
 *
 * @brief A polyline with specified list of segments @see Segment "Segment"
 *
 * Referenced from @see PolylineMapObject "PolylineMapObject".
 *
 */
class Line {
    /// @brief Default constructor
    Line(this.segments);
    /**
     * List of segments to connect.
     */
    List<Segment> segments;
}
