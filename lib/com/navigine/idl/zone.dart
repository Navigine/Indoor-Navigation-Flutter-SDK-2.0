import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/navigine/idl/polygon.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';
import 'package:navigine_sdk/com/weak_interface_wrapper.dart' as weak_interface_wrapper;

part 'zone.impl.dart';
/// Class is used for storing location polygonal zones.
/// Referenced from [Sublocation].
abstract class Zone implements Finalizable {


    bool isValid();

    /// zone's list of points composing the polygonal zone [Polygon]
    ///
    /// Example:
    /// ```dart
    /// // Get zone polygon
    /// List<Point> polygon = zone.getPolygon();
    /// print('Zone polygon points: ${polygon.length}');
    /// ```
    Polygon get polygon;
    /// zone's location identifier.
    ///
    /// Example:
    /// ```dart
    /// // Get zone location ID
    /// int locationId = zone.getLocationId();
    /// print('Zone location ID: $locationId');
    /// ```
    int get locationId;
    /// zone's sublocationId identifier.
    ///
    /// Example:
    /// ```dart
    /// // Get zone sublocation ID
    /// int sublocationId = zone.getSublocationId();
    /// print('Zone sublocation ID: $sublocationId');
    /// ```
    int get sublocationId;
    /// zone's identifier.
    ///
    /// Example:
    /// ```dart
    /// // Get zone ID
    /// int zoneId = zone.getId();
    /// print('Zone ID: $zoneId');
    /// ```
    int get id;
    /// zone's name.
    ///
    /// Example:
    /// ```dart
    /// // Get zone name
    /// String? zoneName = zone.getName();
    /// print('Zone name: $zoneName');
    /// ```
    String get name;
    /// zone's color.
    ///
    /// Example:
    /// ```dart
    /// // Get zone color
    /// String? color = zone.getColor();
    /// print('Zone color: $color');
    /// ```
    String get color;
    /// zone's alias.
    ///
    /// Example:
    /// ```dart
    /// // Get zone alias
    /// String? alias = zone.getAlias();
    /// print('Zone alias: $alias');
    /// ```
    String get alias;


}
