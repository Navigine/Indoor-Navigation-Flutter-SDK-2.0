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
     */
    Polygon get polygon;
    /**
     * @brief zone's location identifier.
     */
    int get locationId;
    /**
     * @brief zone's sublocationId identifier.
     */
    int get sublocationId;
    /**
     * @brief zone's identifier.
     */
    int get id;
    /**
     * @brief zone's name.
     */
    String get name;
    /**
     * @brief zone's color.
     */
    String get color;
    /**
     * @brief zone's alias.
     */
    String get alias;


}
