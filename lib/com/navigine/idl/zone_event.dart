import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/zone_event_type.dart';

part 'zone_event.impl.dart';
/**
 * @file com/navigine/idl/zone_event.dart
 * @brief @copybrief ZoneEvent
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_secondary_classes
 *
 * @brief Class described user zone event.
 *
 * Referenced from @see ZoneListener "ZoneListener".
 *
 */
class ZoneEvent {
    /// @brief Default constructor
    ZoneEvent(this.type, this.locationId, this.sublocationId, this.id, this.name, this.alias);
    /**
     * @brief Handled zone event type.
     *
     *
     *
     * Dart code snippet:
     * @snippet zone_manager_example.dart dart_ZoneEvent_getType
     *
     */
    ZoneEventType type;
    /**
     * @brief zone's location identifier.
     *
     *
     *
     * Dart code snippet:
     * @snippet zone_manager_example.dart dart_ZoneEvent_getLocationId
     *
     */
    int locationId;
    /**
     * @brief zone's sublocationId identifier.
     *
     *
     *
     * Dart code snippet:
     * @snippet zone_manager_example.dart dart_ZoneEvent_getSublocationId
     *
     */
    int sublocationId;
    /**
     * @brief zone's identifier.
     *
     *
     *
     * Dart code snippet:
     * @snippet zone_manager_example.dart dart_ZoneEvent_getId
     *
     */
    int id;
    /**
     * @brief zone's name.
     *
     *
     *
     * Dart code snippet:
     * @snippet zone_manager_example.dart dart_ZoneEvent_getName
     *
     */
    String name;
    /**
     * @brief zone's alias.
     *
     *
     *
     * Dart code snippet:
     * @snippet zone_manager_example.dart dart_ZoneEvent_getAlias
     *
     */
    String alias;
}
