import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/containers__conversion.dart';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
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
