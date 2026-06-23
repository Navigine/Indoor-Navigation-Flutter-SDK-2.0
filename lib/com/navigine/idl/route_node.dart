import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/containers__conversion.dart';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/route_event.dart';

part 'route_node.impl.dart';
/// Class describing one node of the evaluated route.
/// Referenced from [RoutePath].
class RouteNode {
    /// Default constructor.
    RouteNode(this.point, this.weight, this.distance, this.events);
    /// Location point of this node.
    ///
    /// Example:
    /// ```dart
    /// LocationPoint point = node.point;
    /// _demonstrateLocationPointUsage(point);
    /// ```
    LocationPoint point;
    /// Route cost/weight value at this node.
    ///
    /// Example:
    /// ```dart
    /// double weight = node.weight;
    /// print("Node weight: $weight");
    /// ```
    double weight;
    /// Distance from route start to this node (meters).
    ///
    /// Example:
    /// ```dart
    /// double distance = node.distance;
    /// print("Node distance: $distance meters");
    /// ```
    double distance;
    /// Events associated with this node.
    ///
    /// Example:
    /// ```dart
    /// List<RouteEvent> events = node.events;
    /// print("Node has ${events.length} events");
    /// for (final event in events) {
    ///  _demonstrateRouteEventUsage(event);
    /// }
    /// ```
    List<RouteEvent> events;
}
