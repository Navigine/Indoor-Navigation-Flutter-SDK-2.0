import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

part 'turn_type.impl.dart';
/**
 * @file com/navigine/idl/turn_type.dart
 * @brief @copybrief TurnType
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_secondary_classes
 *
 * @brief Enum describing turn direction/severity for @see TurnEvent "TurnEvent".
 *
 * Referenced from @see TurnEvent "TurnEvent".
 *
 *
 *
 *
 *Dart code snippet:
 *@snippet route_manager_example.dart dart_TurnType_values
 *
 */
enum TurnType {
    /**
     * Minor left adjustment (approx. 10°–40°).
     */
    LEFT_SLIGHT,
    /**
     * Standard left turn (approx. 40°–100°).
     */
    LEFT_NORMAL,
    /**
     * Sharp left turn (approx. 100°–160°).
     */
    LEFT_SHARP,
    /**
     * Minor right adjustment (approx. 10°–40°).
     */
    RIGHT_SLIGHT,
    /**
     * Standard right turn (approx. 40°–100°).
     */
    RIGHT_NORMAL,
    /**
     * Sharp right turn (approx. 100°–160°).
     */
    RIGHT_SHARP,
    /**
     * Near U-turn / reversal (approx. 160°–180°).
     */
    COMPLETE,
}
