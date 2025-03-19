import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/route_path.dart';

part 'async_route_listener.impl.dart';
/**
 * @file com/navigine/idl/async_route_listener.dart
 * @brief @copybrief AsyncRouteListener
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_listeners
 * @brief Class provides a callback to be invoked when @see RouteSession "RouteSession"
 * handle changed/advanced events.
 *
 * Referenced from @see AsyncRouteManager "AsyncRouteManager" @see RouteSession "RouteSession".
 * @note The callback is invoked in the UI thread.
 */
abstract class AsyncRouteListener {

    /**
     * @brief Called when new route was built or
     *     old route was rebuilt after missing previouse one.
     *
     * @param currentPath @see RoutePath "RoutePath" from current postion to destination point
     *
     */
    void onRouteChanged(RoutePath currentPath);

    /**
     * @brief Called when user has progressed along the route
     *     that was built in the method `onRouteChanged`
     *
     * @param distance distance from the beginning or the route (unit meters)
     * @param point current location point on the route
     *
     */
    void onRouteAdvanced(double distance, LocationPoint point);



}
