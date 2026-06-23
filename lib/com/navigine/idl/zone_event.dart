import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/navigine/idl/zone_event_type.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

part 'zone_event.impl.dart';
/// Class described user zone event.
/// Referenced from [ZoneListener].
class ZoneEvent {
    /// Default constructor.
    ZoneEvent(this.type, this.locationId, this.sublocationId, this.id, this.name, this.alias);
    /// Handled zone event type.
    ///
    /// Example:
    /// ```dart
    /// // Get event type
    /// ZoneEventType type = zoneEvent.type;
    /// print("Zone event type: $type");
    /// ```
    ZoneEventType type;
    /// zone's location identifier.
    ///
    /// Example:
    /// ```dart
    /// // Get location ID
    /// int locationId = zoneEvent.locationId;
    /// print("Zone location ID: $locationId");
    /// ```
    int locationId;
    /// zone's sublocationId identifier.
    ///
    /// Example:
    /// ```dart
    /// // Get sublocation ID
    /// int sublocationId = zoneEvent.sublocationId;
    /// print("Zone sublocation ID: $sublocationId");
    /// ```
    int sublocationId;
    /// zone's identifier.
    ///
    /// Example:
    /// ```dart
    /// // Get zone ID
    /// int id = zoneEvent.id;
    /// print("Zone ID: $id");
    /// ```
    int id;
    /// zone's name.
    ///
    /// Example:
    /// ```dart
    /// // Get zone name
    /// String name = zoneEvent.name;
    /// print("Zone name: $name");
    /// ```
    String name;
    /// zone's alias.
    ///
    /// Example:
    /// ```dart
    /// // Get zone alias
    /// String alias = zoneEvent.alias;
    /// print("Zone alias: $alias");
    /// ```
    String alias;
}
