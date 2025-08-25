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
 * @brief Enum described toute event types.
 *
 * Referenced from @see RouteEvent "RouteEvent".
 *
 *
 *
 * Dart code snippet:
 * @snippet route_manager_example.dart dart_RouteEventType_values
 *
 */
enum RouteEventType {
    /**
     * @brief An event showing a left turn.
     */
    TURN_LEFT,
    /**
     * @brief An event showing a right turn.
     */
    TURN_RIGHT,
    /**
     * @brief An event showing a chaning of sublocation (floor).
     */
    TRANSITION,
}
