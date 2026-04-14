import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/route_event_type.dart';
import 'package:navigine_sdk/com/navigine/idl/target_reached_event.dart';
import 'package:navigine_sdk/com/navigine/idl/transition_entry_event.dart';
import 'package:navigine_sdk/com/navigine/idl/transition_exit_event.dart';
import 'package:navigine_sdk/com/navigine/idl/turn_event.dart';

part 'route_event.impl.dart';
/**
 * @file com/navigine/idl/route_event.dart
 * @brief @copybrief RouteEvent
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_secondary_classes
 *
 * @brief Class storing one route event payload.
 *
 * Referenced from @see RoutePath "RoutePath", @see RouteNode "RouteNode".
 *
 */
class RouteEvent {
    /// @brief Default constructor
    RouteEvent(this.type, this.turnEvent, this.transitionEntryEvent, this.transitionExitEvent, this.targetReachedEvent);
    /**
     * @brief Active event variant discriminator.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet route_manager_example.dart dart_RouteEvent_getType
     *
     */
    RouteEventType type;
    /**
     * @brief Payload for turn events, set when type is TURN_EVENT.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet route_manager_example.dart dart_RouteEvent_getTurnEvent
     *
     */
    TurnEvent? turnEvent;
    /**
     * @brief Payload for transition entry events.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet route_manager_example.dart dart_RouteEvent_getTransitionEntryEvent
     *
     */
    TransitionEntryEvent? transitionEntryEvent;
    /**
     * @brief Payload for transition exit events.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet route_manager_example.dart dart_RouteEvent_getTransitionExitEvent
     *
     */
    TransitionExitEvent? transitionExitEvent;
    /**
     * @brief Payload for target reached events.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet route_manager_example.dart dart_RouteEvent_getTargetReachedEvent
     *
     */
    TargetReachedEvent? targetReachedEvent;
}
