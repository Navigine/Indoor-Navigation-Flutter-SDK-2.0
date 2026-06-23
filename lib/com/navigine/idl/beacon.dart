import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';
import 'package:navigine_sdk/com/navigine/idl/transmitter_status.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';
import 'package:navigine_sdk/com/weak_interface_wrapper.dart' as weak_interface_wrapper;

part 'beacon.impl.dart';
/// Class is used for storing <a href="https://en.wikipedia.org/wiki/IBeacon">iBeacon</a>.
/// Referenced from [Sublocation].
abstract class Beacon implements Finalizable {


    bool isValid();

    /// beacon's X and Y coordinates in meters as [Point] (within the sublocation).
    ///
    /// Example:
    /// ```dart
    /// // Get beacon point
    /// Point? point = beacon.getPoint();
    /// if (point != null) {
    ///  demonstratePointUsage(point);
    /// }
    /// ```
    Point get point;
    /// beacon's location identifier.
    ///
    /// Example:
    /// ```dart
    /// // Get beacon location ID
    /// int locationId = beacon.getLocationId();
    /// print('Beacon location ID: $locationId');
    /// ```
    int get locationId;
    /// beacon's sublocation identifier.
    ///
    /// Example:
    /// ```dart
    /// // Get beacon sublocation ID
    /// int sublocationId = beacon.getSublocationId();
    /// print('Beacon sublocation ID: $sublocationId');
    /// ```
    int get sublocationId;
    /// beacon's name.
    ///
    /// Example:
    /// ```dart
    /// // Get beacon name
    /// String? beaconName = beacon.getName();
    /// print('Beacon name: $beaconName');
    /// ```
    String get name;
    /// beacon's major. Values [1-65535]
    ///
    /// Example:
    /// ```dart
    /// // Get beacon major
    /// int major = beacon.getMajor();
    /// print('Beacon major: $major');
    /// ```
    int get major;
    /// beacon's minor. Values [1-65535]
    ///
    /// Example:
    /// ```dart
    /// // Get beacon minor
    /// int minor = beacon.getMinor();
    /// print('Beacon minor: $minor');
    /// ```
    int get minor;
    /// beacon's uuid. Format [XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX]
    ///
    /// Example:
    /// ```dart
    /// // Get beacon UUID
    /// String? uuid = beacon.getUuid();
    /// print('Beacon UUID: $uuid');
    /// ```
    String get uuid;
    /// beacon's power.
    ///
    /// Example:
    /// ```dart
    /// // Get beacon power
    /// int? power = beacon.getPower();
    /// if (power != null) {
    ///  print('Beacon power: $power');
    /// }
    /// ```
    int? get power;
    /// iBeacon status. [TransmitterStatus]
    ///
    /// Example:
    /// ```dart
    /// // Get beacon status
    /// TransmitterStatus status = beacon.getStatus();
    /// print('Beacon status: $status');
    /// ```
    TransmitterStatus get status;


}
