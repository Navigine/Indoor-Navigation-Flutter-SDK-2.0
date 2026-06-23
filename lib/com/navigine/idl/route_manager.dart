import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/containers__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/route_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/route_path.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

part 'route_manager.impl.dart';
/// Class is used for evaluating [RoutePath] from point to point.
/// Referenced from [NavigineSdk].
abstract class RouteManager implements Finalizable {

    /// Method is used to build a route between points
    /// about evaluated [RoutePath] from your position to target point.
    /// [from] starting [LocationPoint].
    /// [to] destination [LocationPoint].
    /// Returns [RoutePath] from starting to destination point.
    ///
    /// Example:
    /// ```dart
    /// // Make route from point to point
    /// RoutePath routePath = _routeManager!.makeRoute(startLocationPoint, endLocationPoint);
    /// print("Route created with length: ${routePath.length} meters");
    /// ```
    RoutePath makeRoute(LocationPoint from, LocationPoint to);

    /// Method is used to build a route between the starting point and several destination points
    /// [from] starting [LocationPoint].
    /// [to] destination list of [LocationPoint]s.
    /// Returns vector of [RoutePath]s from starting to destination point.
    ///
    /// Example:
    /// ```dart
    /// // Make routes to multiple destinations
    /// List<LocationPoint> destinations = [
    ///  LocationPoint(point: Point(x: 30.0, y: 40.0), locationId: 12345, sublocationId: 1),
    ///  LocationPoint(point: Point(x: 70.0, y: 80.0), locationId: 12345, sublocationId: 1),
    /// ];
    /// List<RoutePath> routePaths = _routeManager!.makeRoutes(startLocationPoint, destinations);
    /// print("Created ${routePaths.length} routes");
    /// ```
    List<RoutePath> makeRoutes(LocationPoint from, List<LocationPoint> to);

    /// Method is used to set target point in your location.
    /// Through [RouteListener] you will be notified about new paths to target point.
    /// [target] finish [LocationPoint].
    ///
    /// Example:
    /// ```dart
    /// // Set target point
    /// _routeManager!.setTarget(endLocationPoint);
    /// ```
    void setTarget(LocationPoint target);

    /// Method is used to add target point in your location.
    /// Through [RouteListener] you will be notified about new paths to target point.
    /// [target] finish [LocationPoint].
    ///
    /// Example:
    /// ```dart
    /// // Add additional target point
    /// LocationPoint additionalTarget = LocationPoint(point: Point(x: 90.0, y: 100.0), locationId: 12345, sublocationId: 1);
    /// _routeManager!.addTarget(additionalTarget);
    /// ```
    void addTarget(LocationPoint target);

    /// Method is used for removing current target points to where the routes were built.
    ///
    /// Example:
    /// ```dart
    /// // Cancel current target
    /// _routeManager!.cancelTarget();
    /// ```
    void cancelTarget();

    /// Method is used for removing all target points to where the routes were built.
    ///
    /// Example:
    /// ```dart
    /// // Clear all targets
    /// _routeManager!.clearTargets();
    /// ```
    void clearTargets();

    /// Method is used to select graph tag (Default: "default").
    ///
    /// Example:
    /// ```dart
    /// // Set graph tag
    /// _routeManager!.setGraphTag("main");
    /// ```
    void setGraphTag(String tag);

    /// Method is used to get current graph tag (Default: "default").
    ///
    /// Example:
    /// ```dart
    /// // Get current graph tag
    /// String currentGraphTag = _routeManager!.getGraphTag();
    /// print("Current graph tag: $currentGraphTag");
    /// ```
    String getGraphTag();

    /// Method is used to get all graph tags,
    ///
    /// Example:
    /// ```dart
    /// // Get all graph tags
    /// List<String> graphTags = _routeManager!.getGraphTags();
    /// print("Available graph tags: $graphTags");
    /// ```
    List<String> getGraphTags();

    /// Method is used to add [RouteListener] class element
    /// which will notify about evaluated route path from your position to target point.
    /// **Note:** Do not forget to remove listener if it is no longer needed!
    /// [listener] Corresponding [RouteListener] class.
    ///
    /// Example:
    /// ```dart
    /// // Add route listener
    /// _routeManager!.addRouteListener(_routeListener!);
    /// ```
    void addRouteListener(RouteListener listener);

    /// Method is used for removing previously added [RouteListener] class element.
    /// [listener] Corresponding [RouteListener] class to remove.
    ///
    /// Example:
    /// ```dart
    /// // Remove route listener
    /// _routeManager!.removeRouteListener(_routeListener!);
    /// ```
    void removeRouteListener(RouteListener listener);



}
