import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';

part 'venue.impl.dart';
/**
 * @file com/navigine/idl/venue.dart
 * @brief @copybrief Venue
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_elements
 * @brief Class is used for storing venue.
 *
 * Referenced from @see Sublocation "Sublocation".
 *
 */
abstract class Venue implements Finalizable {


    /**
     * @brief venue's X and Y coordinates in meters as @see Point "Point" (within the sublocation).
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Venue_getPoint
     *
     */
    Point get point;
    /**
     * @brief venue's location identifier.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Venue_getLocationId
     *
     */
    int get locationId;
    /**
     * @brief venue's sublocation identifier.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Venue_getSublocationId
     *
     */
    int get sublocationId;
    /**
     * @brief venue's identifier.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Venue_getId
     *
     */
    int get id;
    /**
     * @brief venue's name.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Venue_getName
     *
     */
    String get name;
    /**
     * @brief venue's phone.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Venue_getPhone
     *
     */
    String get phone;
    /**
     * @brief venue's description.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Venue_getDescript
     *
     */
    String get descript;
    /**
     * @brief venue's alias.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Venue_getAlias
     *
     */
    String get alias;
    /**
     * @brief venue's category unique identifier @see Category "Category"
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Venue_getCategoryId
     *
     */
    int get categoryId;
    /**
     * @brief venue's image url if specified.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Venue_getImageUrl
     *
     */
    String? get imageUrl;


}
