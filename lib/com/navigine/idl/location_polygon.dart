import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/polygon.dart';

part 'location_polygon.impl.dart';
/// Class is used for representing certain polygon within the location [Polygon]
///
/// Example:
/// ```dart
/// List<Point> ring = [
///  Point(1.0, 2.0),
///  Point(3.0, 4.0),
///  Point(5.0, 2.0),
/// ];
/// Polygon metricPolygon = Polygon(ring);
/// LocationPolygon locationPolygon = LocationPolygon(metricPolygon, 42, 7);
/// Polygon polygonBack = locationPolygon.polygon;
/// print(
///  "LocationPolygon: location ${locationPolygon.locationId} sublocation ${locationPolygon.sublocationId} vertices ${polygonBack.points.length}",
/// );
/// ```
class LocationPolygon {
    /// Default constructor.
    LocationPolygon(this.polygon, this.locationId, this.sublocationId);
    /// Metrics polygon [Polygon].
    Polygon polygon;
    /// location polygon location identifier.
    int locationId;
    /// location polygon sublocation identifier.
    int sublocationId;
}
