import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';

part 'location_point.impl.dart';
/**
 * @file com/navigine/idl/location_point.dart
 * @brief @copybrief LocationPoint
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_geometry_classes
 *
 * @brief Class is used for representing certain point within the location.
 *
 * Referenced from: @ref AsyncRouteListener "AsyncRouteListener", @ref AsyncRouteManager "AsyncRouteManager", @ref CircleMapObject "CircleMapObject",
 * @ref IconMapObject "IconMapObject", @ref MapObjectPickResult "MapObjectPickResult",
 * @ref NavigationManager "NavigationManager", @ref Notification "Notification", @ref Position "Position", @ref RouteManager "RouteManager",
 * @ref RoutePath "RoutePath", @ref Sublocation "Sublocation", @ref Venue "Venue".
 *
 */
class LocationPoint {
    /// @brief Default constructor
    LocationPoint(this.point, this.locationId, this.sublocationId);
    /**
     * @brief location point X and Y coordinates in meters as Point (within the sublocation).
     */
    Point point;
    /**
     * @brief location point location identifier.
     */
    int locationId;
    /**
     * @brief location point sublocation identifier.
     */
    int sublocationId;
}
