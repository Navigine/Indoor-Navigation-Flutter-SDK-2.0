import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/route_event.dart';

part 'route_node.impl.dart';
/**
 * @file com/navigine/idl/route_node.dart
 * @brief @copybrief RouteNode
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_secondary_classes
 * @brief Class describing one node of the evaluated route.
 *
 * Referenced from @see RoutePath "RoutePath".
 *
 */
class RouteNode {
    /// @brief Default constructor
    RouteNode(this.point, this.weight, this.distance, this.events);
    /**
     * @brief Location point of this node.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet route_manager_example.dart dart_RouteNode_getPoint
     *
     */
    LocationPoint point;
    /**
     * @brief Route cost/weight value at this node.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet route_manager_example.dart dart_RouteNode_getWeight
     *
     */
    double weight;
    /**
     * @brief Distance from route start to this node (meters).
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet route_manager_example.dart dart_RouteNode_getDistance
     *
     */
    double distance;
    /**
     * @brief Events associated with this node.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet route_manager_example.dart dart_RouteNode_getEvents
     *
     */
    List<RouteEvent> events;
}
