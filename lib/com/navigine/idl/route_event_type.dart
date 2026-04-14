import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

part 'route_event_type.impl.dart';
/**
 * @file com/navigine/idl/route_event_type.dart
 * @brief @copybrief RouteEventType
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_secondary_classes
 *
 * @brief Enum describing route event variants.
 *
 * Referenced from @see RouteEvent "RouteEvent".
 *
 *
 *
 *
 *Dart code snippet:
 *@snippet route_manager_example.dart dart_RouteEventType_values
 *
 */
enum RouteEventType {
    TURN_EVENT,
    TRANSITION_ENTRY_EVENT,
    TRANSITION_EXIT_EVENT,
    TARGET_REACHED_EVENT,
}
