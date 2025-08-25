import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/route_options.dart';
import 'package:navigine_sdk/com/navigine/idl/route_session.dart';

part 'async_route_manager.impl.dart';
/**
 * @file com/navigine/idl/async_route_manager.dart
 * @brief @copybrief AsyncRouteManager
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_managers
 * @brief Class is used for managing @see RouteSession "RouteSession"s
 *
 * Referenced from @see NavigineSdk "NavigineSdk".
 */
abstract class AsyncRouteManager implements Finalizable {

    /**
     * @brief Method is used to create routing session with 'default' graph tag
     * @param wayPoint destination point.
     * @param routeOptions params of @see RouteSession "RouteSession".
     * @return @see RouteSession "RouteSession" instance.
     *
     *
     *
     * Dart code snippet:
     * @snippet async_route_manager_example.dart dart_AsyncRouteManager_createRouteSession
     *
     */
    RouteSession createRouteSession(LocationPoint wayPoint, RouteOptions routeOptions);

    /**
     * @brief Creates a routing session using a specific graph tag.
     *
     * Initializes a @see RouteSession "RouteSession" for building a route to the given waypoint using the specified routing options and graph tag.
     * If the specified tag is not present in the current location (i.e., the corresponding sublocation graph is not yet available),
     * the returned @see RouteSession "RouteSession" will produce an empty route and will not trigger any listeners until the location data
     * for that tag becomes available (e.g., after a location update).
     *
     * @param wayPoint Destination point for the route.
     * @param routeOptions Routing parameters @see RouteSession "RouteSession" used to build the route.
     * @param tag Graph tag identifying which sublocation graph to use. @see Sublocation "Sublocation"
     * @return A RouteSession instance, which may initially be empty if the tag is not available. @see RouteSession "RouteSession"
     *
     *
     *
     * Dart code snippet:
     * @snippet async_route_manager_example.dart dart_AsyncRouteManager_createRouteSessionWithTag
     *
     */
    RouteSession createRouteSessionWithTag(LocationPoint wayPoint, RouteOptions routeOptions, String tag);

    /**
     * @brief Method is used to cancel routing session
     * @param session @see RouteSession "RouteSession" object to cancel.
     *
     *
     *
     * Dart code snippet:
     * @snippet async_route_manager_example.dart dart_AsyncRouteManager_cancelRouteSession
     *
     */
    void cancelRouteSession(RouteSession session);



}
