import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/point.dart';

part 'segment.impl.dart';
/// line between two points.
///
/// Example:
/// ```dart
/// // Create segments
/// Segment segment1 = Segment(start1, end1);
/// Segment segment2 = Segment(start2, end2);
/// print("Created segments: S1((${segment1.start.x}, ${segment1.start.y}) -> (${segment1.end.x}, ${segment1.end.y})), S2((${segment2.start.x}, ${segment2.start.y}) -> (${segment2.end.x}, ${segment2.end.y}))");
/// ```
class Segment {
    /// Default constructor.
    Segment(this.start, this.end);
    /// Start point of the segment.
    ///
    /// Example:
    /// ```dart
    /// // Get start point
    /// Point segment1Start = segment1.start;
    /// print("Segment1 start point: (${segment1Start.x}, ${segment1Start.y})");
    /// ```
    Point start;
    /// End point of the segment.
    ///
    /// Example:
    /// ```dart
    /// // Get end point
    /// Point segment1End = segment1.end;
    /// print("Segment1 end point: (${segment1End.x}, ${segment1End.y})");
    /// ```
    Point end;
}
