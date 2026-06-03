import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/zone_event.dart';

part 'zone_listener.impl.dart';
/// Class provides a callback to be invoked when [ZoneManager]
/// detects entering/leaving zone events.
/// Referenced from [ZoneManager].
/// **Note:** The callback is invoked in the UI thread.
abstract class ZoneListener {

    /// Called when user handle particular zone event
    /// [zoneEvent] handled [ZoneEvent].
    ///
    /// Example:
    /// ```dart
    /// onZoneEvent: (ZoneEvent zoneEvent) {
    ///  print("Zone event detected");
    ///  _demonstrateZoneEventUsage(zoneEvent);
    /// },
    /// ```
    void onZoneEvent(ZoneEvent zoneEvent);



}
