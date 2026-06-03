import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/point.dart';

part 'polyline.impl.dart';
/// A polyline with specified number of points.
class Polyline {
    /// Default constructor.
    Polyline(this.points);
    /// List of points to connect.
    List<Point> points;
}
