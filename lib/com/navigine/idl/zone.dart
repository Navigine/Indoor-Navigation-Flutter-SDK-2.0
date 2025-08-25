import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/polygon.dart';

part 'zone.impl.dart';
/**
 * @file com/navigine/idl/zone.dart
 * @brief @copybrief Zone
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_elements
 * @brief Class is used for storing location polygonal zones.
 *
 * Referenced from @see Sublocation "Sublocation".
 *
 */
abstract class Zone implements Finalizable {


    /**
     * @brief zone's list of points composing the polygonal zone @see Polygon "Polygon"
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Zone_getPolygon
     *
     */
    Polygon get polygon;
    /**
     * @brief zone's location identifier.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Zone_getLocationId
     *
     */
    int get locationId;
    /**
     * @brief zone's sublocationId identifier.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Zone_getSublocationId
     *
     */
    int get sublocationId;
    /**
     * @brief zone's identifier.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Zone_getId
     *
     */
    int get id;
    /**
     * @brief zone's name.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Zone_getName
     *
     */
    String get name;
    /**
     * @brief zone's color.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Zone_getColor
     *
     */
    String get color;
    /**
     * @brief zone's alias.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Zone_getAlias
     *
     */
    String get alias;


}
