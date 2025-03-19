import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/route_event_type.dart';

part 'route_event.impl.dart';
/**
 * @file com/navigine/idl/route_event.dart
 * @brief @copybrief RouteEvent
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_secondary_classes
 *
 * @brief Class is used for storing the route path events.
 *
 * Referenced from: @see RoutePath "RoutePath".
 *
 */
class RouteEvent {
    /// @brief Default constructor
    RouteEvent(this.type, this.value, this.distance);
    /**
     * @brief Incoming event type @see RouteEventType "RouteEventType"
     */
    RouteEventType type;
    /**
     * @brief Indicates angle in degrees for TURN_LEFT/TURN_RIGHT types @see RouteEventType "RouteEventType"
     * and target sublocation unique identifier if type is TRANSITION @see Sublocation "Sublocation"
     */
    int value;
    /**
     * @brief distance from the beginning of the route to incoming event in meters.
     */
    double distance;
}
