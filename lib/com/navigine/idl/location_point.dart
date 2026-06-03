import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';

part 'location_point.impl.dart';
/// Class is used for representing certain point within the location.
/// Referenced from: [AsyncRouteListener], [AsyncRouteManager], [CircleMapObject],
/// [IconMapObject], [MapObjectPickResult],
/// [NavigationManager], [Notification], [Position], [RouteManager],
/// [RoutePath], [Sublocation], [Venue].
class LocationPoint {
    /// Default constructor.
    LocationPoint(this.point, this.locationId, this.sublocationId);
    /// location point X and Y coordinates in meters as Point (within the sublocation).
    Point point;
    /// location point location identifier.
    int locationId;
    /// location point sublocation identifier.
    int sublocationId;
}
