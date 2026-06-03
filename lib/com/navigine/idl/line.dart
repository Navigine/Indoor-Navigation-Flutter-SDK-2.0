import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/segment.dart';

part 'line.impl.dart';
/// A polyline with specified list of segments [Segment]
/// Referenced from [PolylineMapObject].
class Line {
    /// Default constructor.
    Line(this.segments);
    /// List of segments to connect.
    List<Segment> segments;
}
