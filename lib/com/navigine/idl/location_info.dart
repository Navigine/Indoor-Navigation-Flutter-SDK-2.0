import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

part 'location_info.impl.dart';
/**
 * @file com/navigine/idl/location_info.dart
 * @brief @copybrief LocationInfo
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_secondary_classes
 *
 * @brief General information about location
 *
 * Referenced from: @see LocationListListener "LocationListListener", @see LocationListListener "LocationListListener"
 *
 */
class LocationInfo {
    /// @brief Default constructor
    LocationInfo(this.id, this.version, this.name);
    /**
     * @brief Unique location identifier.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_list_manager_example.dart dart_LocationInfo_getId
     *
     */
    int id;
    /**
     * @brief Current location version.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_list_manager_example.dart dart_LocationInfo_getVersion
     *
     */
    int version;
    /**
     * @brief location name.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_list_manager_example.dart dart_LocationInfo_getName
     *
     */
    String name;
}
