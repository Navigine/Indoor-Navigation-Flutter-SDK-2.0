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
     */
    ZoneEventType type;
    /**
     * @brief zone's location identifier.
     */
    int locationId;
    /**
     * @brief zone's sublocationId identifier.
     */
    int sublocationId;
    /**
     * @brief zone's identifier.
     */
    int id;
    /**
     * @brief zone's name.
     */
    String name;
    /**
     * @brief zone's alias.
     */
    String alias;
}
