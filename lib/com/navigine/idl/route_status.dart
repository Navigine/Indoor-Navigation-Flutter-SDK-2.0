import 'dart:ffi';
import 'package:ffi/ffi.dart';

part 'route_status.impl.dart';
/// Enum describing possible router states.
/// Referenced from [AsyncRouteListener].
///
/// Example:
/// ```dart
/// // Demonstrate all RouteStatus values
/// print("Available RouteStatus values:");
/// List<RouteStatus> allStatuses = [
///  RouteStatus.missingGraph,
///  RouteStatus.missingPosition,
///  RouteStatus.missingRoute,
///  RouteStatus.missingProjection,
///  RouteStatus.newRoute,
/// ];
/// for (RouteStatus status in allStatuses) {
///  print("  - $status: ${status.toString()}");
/// }
/// // Demonstrate status checking
/// RouteStatus testStatus = RouteStatus.newRoute;
/// switch (testStatus) {
///  case RouteStatus.newRoute:
///    print("Router is ready for navigation");
///    break;
///  case RouteStatus.missingGraph:
///    print("Router is missing the route graph");
///    break;
///  case RouteStatus.missingPosition:
///    print("Router is missing the current position");
///    break;
///  case RouteStatus.missingProjection:
///    print("Current position is off the route graph");
///    break;
///  case RouteStatus.missingRoute:
///    print("Router unable to find the route to the destination point");
///    break;
/// }
/// ```
enum RouteStatus {
    /// Router is missing the route graph.
    MISSING_GRAPH,
    /// Router is missing the current position.
    MISSING_POSITION,
    /// Router unable to find the route to the destination point.
    MISSING_ROUTE,
    /// Current position is off the route graph.
    MISSING_PROJECTION,
    /// Router is ready and has a valid route.
    NEW_ROUTE,
}
