import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/zone_listener.dart';

part 'zone_manager.impl.dart';
/// Class is used for notifying about entering or leaving [Zone]s.
/// Referenced from [NavigineSdk].
abstract class ZoneManager implements Finalizable {

    /// Method is used to add [ZoneListener] class element
    /// which will notify entering or leaving [Zone]s.
    /// **Note:** Do not forget to remove listener if it is no longer needed!
    /// [listener] Corresponding [ZoneListener] class.
    ///
    /// Example:
    /// ```dart
    /// // Add zone listener
    /// _zoneManager!.addZoneListener(_zoneListener!);
    /// print("Added zone listener");
    /// ```
    void addZoneListener(ZoneListener listener);

    /// Method is used for removing previously added [ZoneListener] class element.
    /// [listener] Corresponding [ZoneListener] class to remove.
    ///
    /// Example:
    /// ```dart
    /// // Remove zone listener
    /// _zoneManager!.removeZoneListener(_zoneListener!);
    /// print("Removed zone listener");
    /// ```
    void removeZoneListener(ZoneListener listener);



}
