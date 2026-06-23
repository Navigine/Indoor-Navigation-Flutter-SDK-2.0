import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/containers__conversion.dart';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';

part 'polyline.impl.dart';
/// A polyline with specified number of points.
class Polyline {
    /// Default constructor.
    Polyline(this.points);
    /// List of points to connect.
    List<Point> points;
}
