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
/// `points` is the outer ring. `innerRings` are holes (as in GeoJSON: first ring
/// outer, the rest holes). An empty list is a solid polygon.
///
/// Example:
/// ```dart
/// List<GlobalPoint> ring = [
///  GlobalPoint(55.751, 37.617),
///  GlobalPoint(55.752, 37.618),
///  GlobalPoint(55.751, 37.619),
/// ];
/// List<List<GlobalPoint>> holes = [
///  [
///    GlobalPoint(55.7512, 37.6174),
///    GlobalPoint(55.7514, 37.6176),
///    GlobalPoint(55.7512, 37.6178),
///  ],
/// ];
/// LocationPolygon locationPolygon = LocationPolygon(ring, 7, holes);
/// print(
///  "LocationPolygon: sublocation ${locationPolygon.sublocationId}, vertices ${locationPolygon.points.length}, holes ${locationPolygon.innerRings.length}",
/// );
/// ```
class LocationPolygon {
    /// Default constructor.
    LocationPolygon(this.points, this.sublocationId, this.innerRings);
    /// Outer ring vertices in WGS84 [GlobalPoint].
    List<GlobalPoint> points;
    /// Floor this polygon is attached to, or null for the outdoor map.
    int? sublocationId;
    /// Holes. Each ring is WGS84 [GlobalPoint].
    /// Empty means a solid polygon.
    List<List<GlobalPoint>> innerRings;
}
