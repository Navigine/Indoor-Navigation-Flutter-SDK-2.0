import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

part 'location_info.impl.dart';
/// General information about location
/// Referenced from: [LocationListListener], [LocationListListener]
class LocationInfo {
    /// Default constructor.
    LocationInfo(this.id, this.version, this.name);
    /// Unique location identifier.
    ///
    /// Example:
    /// ```dart
    /// // Get location ID
    /// int id = locationInfo.id;
    /// print("Location ID: $id");
    /// ```
    int id;
    /// Current location version.
    ///
    /// Example:
    /// ```dart
    /// // Get location version
    /// int version = locationInfo.version;
    /// print("Location version: $version");
    /// ```
    int version;
    /// location name.
    ///
    /// Example:
    /// ```dart
    /// // Get location name
    /// String name = locationInfo.name;
    /// print("Location name: $name");
    /// ```
    String name;
}
