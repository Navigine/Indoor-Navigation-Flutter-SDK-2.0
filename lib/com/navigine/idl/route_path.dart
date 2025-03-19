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
     * @brief Method is used to split route path by distance
     * @param advance distance on the route from the start.
     * @return pair of splitted route paths.
     *
     */
    List<RoutePath> split(double advance);

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
