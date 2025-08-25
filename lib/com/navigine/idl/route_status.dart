import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

part 'route_status.impl.dart';
/**
 * @file com/navigine/idl/route_status.dart
 * @brief @copybrief RouteStatus
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_secondary_classes
 *
 * @brief Enum describing possible router states.
 *
 * Referenced from @see AsyncRouteListener "AsyncRouteListener".
 *
 *
 *
 * Dart code snippet:
 * @snippet async_route_manager_example.dart dart_RouteStatus_values
 *
 */
enum RouteStatus {
    /**
     * @brief Router is missing the route graph.
     */
    MISSING_GRAPH,
    /**
     * @brief Router is missing the current position.
     */
    MISSING_POSITION,
    /**
     * @brief Router unable to find the route to the destination point.
     */
    MISSING_ROUTE,
    /**
     * @brief Current position is off the route graph.
     */
    MISSING_PROJECTION,
    /**
     * @brief Router is ready and has a valid route.
     */
    NEW_ROUTE,
}
