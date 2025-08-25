import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/zone_event.dart';

part 'zone_listener.impl.dart';
/**
 * @file com/navigine/idl/zone_listener.dart
 * @brief @copybrief ZoneListener
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_listeners
 * @brief Class provides a callback to be invoked when @see ZoneManager "ZoneManager"
 * detects entering/leaving zone events.
 *
 * Referenced from @see ZoneManager "ZoneManager".
 * @note The callback is invoked in the UI thread.
 */
abstract class ZoneListener {

    /**
     *
     * @brief Called when user handle particular zone event
     * @param zoneEvent handled @see ZoneEvent "ZoneEvent".
     *
     *
     *
     * Dart code snippet:
     * @snippet zone_manager_example.dart dart_ZoneListener_onZoneEvent
     *
     */
    void onZoneEvent(ZoneEvent zoneEvent);



}
