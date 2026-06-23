import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/polyline.dart';

part 'location_polyline.impl.dart';
/// Class is used for representing certain polyline within the location [Polyline]
///
/// Example:
/// ```dart
/// List<Point> linePts = [Point(0.0, 0.0), Point(10.0, 10.0)];
/// Polyline metricPolyline = Polyline(linePts);
/// LocationPolyline locationPolyline = LocationPolyline(metricPolyline, 42, 7);
/// Polyline polylineBack = locationPolyline.polyline;
/// print("LocationPolyline points ${polylineBack.points.length}");
/// ```
class LocationPolyline {
    /// Default constructor.
    LocationPolyline(this.polyline, this.locationId, this.sublocationId);
    /// Metrics polyline @see Polyline.
    Polyline polyline;
    /// location polyline location identifier.
    int locationId;
    /// location polyline sublocation identifier.
    int sublocationId;
}
