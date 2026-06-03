import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/route_path.dart';
import 'package:navigine_sdk/com/navigine/idl/route_status.dart';

part 'async_route_listener.impl.dart';
/// Class provides a callback to be invoked when [RouteSession]
/// handle changed/advanced events.
/// Referenced from [AsyncRouteManager] [RouteSession].
/// **Note:** The callback is invoked in the UI thread.
abstract class AsyncRouteListener {

    /// Called when new route was built or
    /// old route was rebuilt after missing previouse one.
    /// [status] [RouteStatus] indicating the current router state
    /// [currentPath] [RoutePath] from current postion to destination point (null if status is not new_route)
    ///
    /// Example:
    /// ```dart
    /// onRouteChanged: (RouteStatus status, RoutePath currentPath) {
    ///  print("Route changed with status: $status");
    ///  if (status == RouteStatus.newRoute && currentPath != null) {
    ///    _demonstrateRoutePathUsage(currentPath);
    ///  } else {
    ///    print("Route not ready, status: $status");
    ///  }
    /// },
    /// ```
    void onRouteChanged(RouteStatus status, RoutePath currentPath);

    /// Called when user has progressed along the route
    /// that was built in the method `onRouteChanged`
    /// [distance] distance from the beginning or the route (unit meters)
    /// [point] current location point on the route
    ///
    /// Example:
    /// ```dart
    /// onRouteAdvanced: (double distance, LocationPoint point) {
    ///  print("Route advanced: $distance meters");
    ///  _demonstrateLocationPointUsage(point);
    /// },
    /// ```
    void onRouteAdvanced(double distance, LocationPoint point);



}
