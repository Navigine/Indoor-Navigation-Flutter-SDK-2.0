import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

part 'route_options.impl.dart';
/// Class is used for describing routing options of [AsyncRouteManager].
/// Referenced from: [AsyncRouteManager].
///
/// Example:
/// ```dart
/// // Create route options with custom parameters
/// RouteOptions routeOptions = RouteOptions(3.0, 7.0, 2.5);
/// print(
///  "Created route options with smoothRadius: ${routeOptions.smoothRadius}, maxProjectionDistance: ${routeOptions.maxProjectionDistance}, maxAdvance: ${routeOptions.maxAdvance}",
/// );
/// ```
class RouteOptions {
    /// Default constructor.
    RouteOptions(this.smoothRadius, this.maxProjectionDistance, this.maxAdvance);
    /// This parameter controls if the resulting route should be smoothed for better
    /// user experience. It can be considered as the maximum distance (in meters)
    /// by which the smoothed route can deviate from the original route. The original
    /// route follows exactly the edges of the route graph. If you don't want the route
    /// to be smoothed, use value 0. Default value is 0.
    double? smoothRadius;
    /// This parameter controls the router behaviour in case if the position essentially
    /// deviates from the proposed route. If the position deviates more than the specified
    /// distance (in meters), then the route will be rebuilt. You should not set the
    /// maxProjectionDistance value too low. The reasonable interval of values is [3, 10].
    /// Default value is 5.
    double? maxProjectionDistance;
    /// This parameter controls the maximum distance (in meters) that a position can advance
    /// along the route between the two consecutive navigation solutions separated in time
    /// by 1 second. If this constraint is broken, the route will be completely rebuilt.
    /// The reasonable interval of values is [1, 3]. Default value is 2.
    double? maxAdvance;
}
