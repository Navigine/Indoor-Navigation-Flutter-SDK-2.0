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

part 'eddystone.impl.dart';
/// Class is used for storing <a href="https://en.wikipedia.org/wiki/Eddystone_(Google)">Eddystone</a>.
/// Referenced from [Sublocation].
abstract class Eddystone implements Finalizable {


    bool isValid();

    /// eddystone's X and Y coordinates in meters as [Point] (within the sublocation).
    ///
    /// Example:
    /// ```dart
    /// // Get Eddystone point
    /// Point? point = eddystone.getPoint();
    /// if (point != null) {
    ///  demonstratePointUsage(point);
    /// }
    /// ```
    Point get point;
    /// eddystone's location identifier.
    /// Dart code snippet
    ///
    /// Example:
    /// ```dart
    /// // Get Eddystone location ID
    /// int locationId = eddystone.getLocationId();
    /// print('Eddystone location ID: $locationId');
    /// ```
    int get locationId;
    /// eddystone's sublocation identifier.
    ///
    /// Example:
    /// ```dart
    /// // Get Eddystone sublocation ID
    /// int sublocationId = eddystone.getSublocationId();
    /// print('Eddystone sublocation ID: $sublocationId');
    /// ```
    int get sublocationId;
    /// eddystone's name.
    ///
    /// Example:
    /// ```dart
    /// // Get Eddystone name
    /// String? eddystoneName = eddystone.getName();
    /// print('Eddystone name: $eddystoneName');
    /// ```
    String get name;
    /// eddystone's namespaceId.
    ///
    /// Example:
    /// ```dart
    /// // Get Eddystone namespace ID
    /// String? namespaceId = eddystone.getNamespaceId();
    /// print('Eddystone namespace ID: $namespaceId');
    /// ```
    String get namespaceId;
    /// eddystone's instanceId.
    ///
    /// Example:
    /// ```dart
    /// // Get Eddystone instance ID
    /// String? instanceId = eddystone.getInstanceId();
    /// print('Eddystone instance ID: $instanceId');
    /// ```
    String get instanceId;
    /// eddystone's power.
    ///
    /// Example:
    /// ```dart
    /// // Get Eddystone power
    /// int? power = eddystone.getPower();
    /// if (power != null) {
    ///  print('Eddystone power: $power');
    /// }
    /// ```
    int? get power;
    /// eddystone status. [TransmitterStatus]
    ///
    /// Example:
    /// ```dart
    /// // Get Eddystone status
    /// TransmitterStatus status = eddystone.getStatus();
    /// print('Eddystone status: $status');
    /// ```
    TransmitterStatus get status;


}
