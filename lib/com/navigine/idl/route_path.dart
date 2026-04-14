import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/route_node.dart';

part 'route_path.impl.dart';
/**
 * @file com/navigine/idl/route_path.dart
 * @brief @copybrief RoutePath
 */
/**
 *
 * @brief Class is used for storing the route path between two points in location.
 *
 * Referenced from: @see AsyncRouteListener "AsyncRouteListener", @see AsyncRouteManager "AsyncRouteManager", @see Location "Location",
 * @see RouteListener "RouteListener", @see RouteManager "RouteManager"
 *
 */
abstract class RoutePath implements Finalizable {

    /**
     * @brief Returns the leading segment of the route up to advance meters.
     * @param advance distance along route (meters).
     * @return route head segment.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet route_manager_example.dart dart_RoutePath_head
     *
     */
    RoutePath head(double advance);

    /**
     * @brief Returns the route segment after advance meters.
     * @param advance distance along route (meters).
     * @return route tail segment.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet route_manager_example.dart dart_RoutePath_tail
     *
     */
    RoutePath tail(double advance);

    /**
     * @brief Returns route nodes with points and events.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet route_manager_example.dart dart_RoutePath_getNodes
     *
     */
    List<RouteNode> nodes();

    /**
     * @brief Total route length in meters.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet route_manager_example.dart dart_RoutePath_getLength
     *
     */
    double get length;
    /**
     * @brief Total route weight/cost.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet route_manager_example.dart dart_RoutePath_getWeight
     *
     */
    double get weight;


}
