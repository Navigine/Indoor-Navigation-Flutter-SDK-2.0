import 'dart:ffi';
import 'package:ffi/ffi.dart';

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
    /// Happens when user enters particular zone;
    ENTER,
    /// Happens when user leaves particular zone, sublocation has been changed or zone has been removed;
    EXIT,
}
