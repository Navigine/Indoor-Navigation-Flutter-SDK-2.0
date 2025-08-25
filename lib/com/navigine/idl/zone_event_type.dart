import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

part 'zone_event_type.impl.dart';
/**
 * @file com/navigine/idl/zone_event_type.dart
 * @brief @copybrief ZoneEventType
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_secondary_classes
 *
 * @brief enum described zone event types
 *
 * Referenced from @see ZoneEvent "ZoneEvent".
 *
 *
 *
 * Dart code snippet:
 * @snippet zone_manager_example.dart dart_ZoneEventType_values
 *
 */
enum ZoneEventType {
    /**
     * @brief Happens when user enters paticular zone;
     */
    ENTER,
    /**
     * @brief Happens when user leaves paticular zone, sublocation has been changed or zone has been removed;
     */
    EXIT,
}
