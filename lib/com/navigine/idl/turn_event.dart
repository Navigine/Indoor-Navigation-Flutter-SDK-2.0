import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/turn_type.dart';

part 'turn_event.impl.dart';
/**
 * @file com/navigine/idl/turn_event.dart
 * @brief @copybrief TurnEvent
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_secondary_classes
 *
 * @brief Class describing turn guidance event.
 *
 * Referenced from @see RouteEvent "RouteEvent".
 *
 */
class TurnEvent {
    /// @brief Default constructor
    TurnEvent(this.type, this.angle);
    /**
     * @brief Turn direction/severity type.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet route_manager_example.dart dart_TurnEvent_getType
     *
     */
    TurnType type;
    /**
     * @brief Signed turn angle in degrees.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet route_manager_example.dart dart_TurnEvent_getAngle
     *
     */
    int angle;
}
