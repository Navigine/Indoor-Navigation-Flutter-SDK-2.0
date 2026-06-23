import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/route_event_type.dart';
import 'package:navigine_sdk/com/navigine/idl/target_reached_event.dart';
import 'package:navigine_sdk/com/navigine/idl/transition_entry_event.dart';
import 'package:navigine_sdk/com/navigine/idl/transition_exit_event.dart';
import 'package:navigine_sdk/com/navigine/idl/turn_event.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

part 'route_event.impl.dart';
/// Class storing one route event payload.
/// Referenced from [RoutePath], [RouteNode].
class RouteEvent {
    /// Default constructor.
    RouteEvent(this.type, this.turnEvent, this.transitionEntryEvent, this.transitionExitEvent, this.targetReachedEvent);
    /// Active event variant discriminator.
    ///
    /// Example:
    /// ```dart
    /// // Get event type
    /// RouteEventType type = event.type;
    /// print("Event type: $type");
    /// ```
    RouteEventType type;
    /// Payload for turn events, set when type is TURN_EVENT.
    ///
    /// Example:
    /// ```dart
    /// TurnEvent? turnEvent = event.turnEvent;
    /// if (turnEvent != null) {
    ///  _demonstrateTurnEventUsage(turnEvent);
    /// }
    /// ```
    TurnEvent? turnEvent;
    /// Payload for transition entry events.
    ///
    /// Example:
    /// ```dart
    /// TransitionEntryEvent? entryEvent = event.transitionEntryEvent;
    /// if (entryEvent != null) {
    ///  _demonstrateTransitionEntryEventUsage(entryEvent);
    /// }
    /// ```
    TransitionEntryEvent? transitionEntryEvent;
    /// Payload for transition exit events.
    ///
    /// Example:
    /// ```dart
    /// TransitionExitEvent? exitEvent = event.transitionExitEvent;
    /// if (exitEvent != null) {
    ///  _demonstrateTransitionExitEventUsage(exitEvent);
    /// }
    /// ```
    TransitionExitEvent? transitionExitEvent;
    /// Payload for target reached events.
    ///
    /// Example:
    /// ```dart
    /// TargetReachedEvent? reachedEvent = event.targetReachedEvent;
    /// if (reachedEvent != null) {
    ///  _demonstrateTargetReachedEventUsage(reachedEvent);
    /// }
    /// ```
    TargetReachedEvent? targetReachedEvent;
}
