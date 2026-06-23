import 'dart:ffi';
import 'package:ffi/ffi.dart';

part 'route_event_type.impl.dart';
/// Enum describing route event variants.
/// Referenced from [RouteEvent].
///
/// Example:
/// ```dart
/// // Get all route event type values
/// print("Available route event types:");
/// print("  - RouteEventType.TURN_LEFT: ${RouteEventType.TURN_LEFT}");
/// print("  - RouteEventType.TURN_RIGHT: ${RouteEventType.TURN_RIGHT}");
/// print("  - RouteEventType.TRANSITION: ${RouteEventType.TRANSITION}");
/// ```
enum RouteEventType {
    TURN_EVENT,
    TRANSITION_ENTRY_EVENT,
    TRANSITION_EXIT_EVENT,
    TARGET_REACHED_EVENT,
}
