import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';
import 'package:navigine_sdk/com/navigine/idl/transmitter_status.dart';

part 'wifi.impl.dart';
/// Class is used for storing <a href="https://en.wikipedia.org/wiki/Wi-Fi">WiFi</a>.
/// Referenced from [Sublocation].
abstract class Wifi implements Finalizable {


    /// wifi's X and Y coordinates in meters as [Point] (within the sublocation).
    ///
    /// Example:
    /// ```dart
    /// // Get WiFi point
    /// Point? point = wifi.getPoint();
    /// if (point != null) {
    ///  demonstratePointUsage(point);
    /// }
    /// ```
    Point get point;
    /// wifi's location identifier.
    ///
    /// Example:
    /// ```dart
    /// // Get WiFi location ID
    /// int locationId = wifi.getLocationId();
    /// print('WiFi location ID: $locationId');
    /// ```
    int get locationId;
    /// wifi's sublocation identifier.
    ///
    /// Example:
    /// ```dart
    /// // Get WiFi sublocation ID
    /// int sublocationId = wifi.getSublocationId();
    /// print('WiFi sublocation ID: $sublocationId');
    /// ```
    int get sublocationId;
    /// wifi's name.
    ///
    /// Example:
    /// ```dart
    /// // Get WiFi name
    /// String? wifiName = wifi.getName();
    /// print('WiFi name: $wifiName');
    /// ```
    String get name;
    /// wifi's mac.
    ///
    /// Example:
    /// ```dart
    /// // Get WiFi MAC address
    /// String? mac = wifi.getMac();
    /// print('WiFi MAC: $mac');
    /// ```
    String get mac;
    /// wifi's status. [TransmitterStatus]
    ///
    /// Example:
    /// ```dart
    /// // Get WiFi status
    /// TransmitterStatus status = wifi.getStatus();
    /// print('WiFi status: $status');
    /// ```
    TransmitterStatus get status;


}
