import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

part 'zone_event_type.impl.dart';
/// enum described zone event types
/// Referenced from [ZoneEvent].
///
/// Example:
/// ```dart
/// // Get all zone event type values
/// print("Available zone event types:");
/// print("  - ZoneEventType.ENTER: ${ZoneEventType.ENTER}");
/// print("  - ZoneEventType.EXIT: ${ZoneEventType.EXIT}");
/// ```
enum ZoneEventType {
    /// Happens when user enters paticular zone;
    ENTER,
    /// Happens when user leaves paticular zone, sublocation has been changed or zone has been removed;
    EXIT,
}
