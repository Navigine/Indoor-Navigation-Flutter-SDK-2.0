import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/route_options.dart';
import 'package:navigine_sdk/com/navigine/idl/route_session.dart';

part 'async_route_manager.impl.dart';
/// Class is used for managing [RouteSession]s
/// Referenced from [NavigineSdk].
abstract class AsyncRouteManager implements Finalizable {

    /// Method is used to create routing session with 'default' graph tag
    /// [wayPoint] destination point.
    /// [routeOptions] params of [RouteSession].
    /// Returns [RouteSession] instance.
    ///
    /// Example:
    /// ```dart
    /// // Create route session with default graph tag
    /// RouteSession session = _asyncRouteManager!.createRouteSession(
    ///  destinationLocationPoint,
    ///  routeOptions,
    /// );
    /// print("Created route session with default graph tag");
    /// ```
    RouteSession createRouteSession(LocationPoint wayPoint, RouteOptions routeOptions);

    /// Creates a routing session using a specific graph tag.
    /// Initializes a [RouteSession] for building a route to the given waypoint using the specified routing options and graph tag.
    /// If the specified tag is not present in the current location (i.e., the corresponding sublocation graph is not yet available),
    /// the returned [RouteSession] will produce an empty route and will not trigger any listeners until the location data
    /// for that tag becomes available (e.g., after a location update).
    /// [wayPoint] Destination point for the route.
    /// [routeOptions] Routing parameters [RouteSession] used to build the route.
    /// [tag] Graph tag identifying which sublocation graph to use. [Sublocation]
    /// Returns A RouteSession instance, which may initially be empty if the tag is not available. [RouteSession]
    ///
    /// Example:
    /// ```dart
    /// // Create route session with specific graph tag
    /// RouteSession sessionWithTag = _asyncRouteManager!.createRouteSessionWithTag(
    ///  destinationLocationPoint,
    ///  routeOptions,
    ///  "main",
    /// );
    /// print("Created route session with 'main' graph tag");
    /// ```
    RouteSession createRouteSessionWithTag(LocationPoint wayPoint, RouteOptions routeOptions, String tag);

    /// Method is used to cancel routing session
    /// [session] [RouteSession] object to cancel.
    ///
    /// Example:
    /// ```dart
    /// // Cancel route session
    /// _asyncRouteManager!.cancelRouteSession(sessions[i]);
    /// print("Cancelled session ${i + 1}");
    /// ```
    void cancelRouteSession(RouteSession session);



}
