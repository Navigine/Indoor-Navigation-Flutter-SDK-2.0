import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/route_event.dart';

part 'route_path.impl.dart';
/**
 * @file com/navigine/idl/route_path.dart
 * @brief @copybrief RoutePath
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_secondary_classes
 *
 * @brief class is used for storing the route path between the two points on the location.
 *
 * Referenced from: @see AsyncRouteListener "AsyncRouteListener", @see AsyncRouteManager "AsyncRouteManager", @see Location "Location",
 * @see RouteListener "RouteListener", @see RouteManager "RouteManager"
 *
 */
abstract class RoutePath implements Finalizable {

    /**
     *
     * @brief Returns the leading segment of the route.
     *
     * Returns the portion of the route from the start up to the specified advance distance along the route.
     * If advance exceeds the total route length, the entire route is returned.
     *
     * @param advance Distance along the route (in meters).
     * @return The covered (passed) segment of the route (from start to advance), or nil if the segment is empty.
     *
     */
    RoutePath head(double advance);

    /**
     *
     * @brief Returns the remaining segment of the route.
     *
     * Returns the portion of the route starting from the specified advance distance to the end of the route.
     * If advance is less than or equal to zero, the entire route is returned.
     *
     * @param advance Distance along the route (in meters).
     * @return The remaining segment of the route (from advance to end), or nil if the segment is empty.
     *
     */
    RoutePath tail(double advance);

    /**
     * @brief Total lenth of the route path in meters.
     */
    double get length;
    /**
     * @brief List of consecutive incoming events @see RouteEvent "RouteEvent".
     */
    List<RouteEvent> get events;
    /**
     * @brief List of consecutive points. @see LocationPoint.
     *
     * @note points could be on different sublocations if target sublocation is different from the starting one
     */
    List<LocationPoint> get points;


}
