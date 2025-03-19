import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/route_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/route_path.dart';

part 'route_manager.impl.dart';
/**
 * @file com/navigine/idl/route_manager.dart
 * @brief @copybrief RouteManager
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_managers
 * @brief Class is used for evaluating @see RoutePath "RoutePath" from point to point.
 *
 * Referenced from @see NavigineSdk "NavigineSdk".
 */
abstract class RouteManager implements Finalizable {

    /**
     *
     * @brief Method is used to build a route between points
     * about evaluated @see RoutePath "RoutePath" from your position to target point.
     * @param from starting @see LocationPoint "LocationPoint".
     * @param to destination @see LocationPoint "LocationPoint".
     * @return @see RoutePath "RoutePath" from starting to destination point.
     *
     */
    RoutePath makeRoute(LocationPoint from, LocationPoint to);

    /**
     *
     * @brief Method is used to build a route between the starting point and several destination points
     * @param from starting @see LocationPoint "LocationPoint".
     * @param to destination list of @see LocationPoint "LocationPoint"s.
     * @return vector of @see RoutePath "RoutePath"s from starting to destination point.
     *
     */
    List<RoutePath> makeRoutes(LocationPoint from, List<LocationPoint> to);

    /**
     *
     * @brief Method is used to set target point in your location.
     * Through @see RouteListener "RouteListener" you will be notified about new paths to target point.
     * @param target finish @see LocationPoint "LocationPoint".
     *
     */
    void setTarget(LocationPoint target);

    /**
     *
     * @brief Method is used to add target point in your location.
     * Through @see RouteListener "RouteListener" you will be notified about new paths to target point.
     * @param target finish @see LocationPoint "LocationPoint".
     *
     */
    void addTarget(LocationPoint target);

    /**
     *
     * @brief Method is used for removing current target points to where the routes were built.
     *
     */
    void cancelTarget();

    /**
     *
     * @brief Method is used for removing all target points to where the routes were built.
     *
     */
    void clearTargets();

    /**
     *
     * @brief Method is used to select graph tag (Default: "default").
     *
     */
    void setGraphTag(String tag);

    /**
     *
     * @brief Method is used to get current graph tag (Default: "default").
     *
     */
    String getGraphTag();

    /**
     *
     * @brief Method is used to get all graph tags,
     *
     */
    List<String> getGraphTags();

    /**
     *
     * @brief Method is used to add @see RouteListener "RouteListener" class element
     * which will notify about evaluated route path from your position to target point.
     * @note Do not forget to remove listener if it is no longer needed!
     * @param listener Сorresponding @see RouteListener "RouteListener" class.
     *
     */
    void addRouteListener(RouteListener listener);

    /**
     *
     * @brief Method is used for removing previously added @see RouteListener "RouteListener" class element.
     * @param listener Сorresponding @see RouteListener "RouteListener" class to remove.
     *
     */
    void removeRouteListener(RouteListener listener);



}
