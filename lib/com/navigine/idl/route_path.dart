import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/route_node.dart';

part 'route_path.impl.dart';
/// Class is used for storing the route path between two points in location.
/// Referenced from: [AsyncRouteListener], [AsyncRouteManager], [Location],
/// [RouteListener], [RouteManager]
abstract class RoutePath implements Finalizable {

    /// Returns the leading segment of the route up to advance meters.
    /// [advance] distance along route (meters).
    /// Returns route head segment.
    ///
    /// Example:
    /// ```dart
    /// // Get head of route (first 10 meters)
    /// RoutePath? headPath = path.head(10.0);
    /// if (headPath != null) {
    ///  print("Head path length: ${headPath.length} meters");
    /// }
    /// ```
    RoutePath head(double advance);

    /// Returns the route segment after advance meters.
    /// [advance] distance along route (meters).
    /// Returns route tail segment.
    ///
    /// Example:
    /// ```dart
    /// // Get tail of route (remaining after 10 meters)
    /// RoutePath? tailPath = path.tail(10.0);
    /// if (tailPath != null) {
    ///  print("Tail path length: ${tailPath.length} meters");
    /// }
    /// ```
    RoutePath tail(double advance);

    /// Returns route nodes with points and events.
    ///
    /// Example:
    /// ```dart
    /// // Get route nodes
    /// List<RouteNode> nodes = path.nodes;
    /// print("Route has ${nodes.length} nodes");
    /// for (int j = 0; j < nodes.length; j++) {
    ///  _demonstrateRouteNodeUsage(nodes[j]);
    /// }
    /// ```
    List<RouteNode> nodes();

    /// Total route length in meters.
    ///
    /// Example:
    /// ```dart
    /// // Get route length
    /// double length = path.length;
    /// print("Route length: $length meters");
    /// ```
    double get length;
    /// Total route weight/cost.
    ///
    /// Example:
    /// ```dart
    /// // Get total route weight
    /// double weight = path.weight;
    /// print("Route weight: $weight");
    /// ```
    double get weight;


}
