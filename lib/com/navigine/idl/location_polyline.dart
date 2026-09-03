import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/containers__conversion.dart';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/global_point.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

part 'location_polyline.impl.dart';
/// Polyline on the location view in WGS84 coordinates.
///
/// Example:
/// ```dart
/// List<GlobalPoint> linePts = [
///  GlobalPoint(55.751, 37.617),
///  GlobalPoint(55.753, 37.620),
/// ];
/// LocationPolyline locationPolyline = LocationPolyline(linePts, 7);
/// print("LocationPolyline points ${locationPolyline.points.length}");
/// ```
class LocationPolyline {
    /// Default constructor.
    LocationPolyline(this.points, this.sublocationId);
    /// Vertices in WGS84 [GlobalPoint].
    List<GlobalPoint> points;
    /// Floor this polyline is attached to, or null for the outdoor map.
    int? sublocationId;
}
