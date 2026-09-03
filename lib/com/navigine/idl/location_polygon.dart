import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/containers__conversion.dart';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/global_point.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

part 'location_polygon.impl.dart';
/// Polygon on the location view in WGS84 coordinates.
///
/// Example:
/// ```dart
/// List<GlobalPoint> ring = [
///  GlobalPoint(55.751, 37.617),
///  GlobalPoint(55.752, 37.618),
///  GlobalPoint(55.751, 37.619),
/// ];
/// LocationPolygon locationPolygon = LocationPolygon(ring, 7);
/// print(
///  "LocationPolygon: sublocation ${locationPolygon.sublocationId}, vertices ${locationPolygon.points.length}",
/// );
/// ```
class LocationPolygon {
    /// Default constructor.
    LocationPolygon(this.points, this.sublocationId);
    /// Ring vertices in WGS84 [GlobalPoint].
    List<GlobalPoint> points;
    /// Floor this polygon is attached to, or null for the outdoor map.
    int? sublocationId;
}
