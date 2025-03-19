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
     */
    Point get point;
    /**
     * @brief venue's location identifier.
     */
    int get locationId;
    /**
     * @brief venue's sublocation identifier.
     */
    int get sublocationId;
    /**
     * @brief venue's identifier.
     */
    int get id;
    /**
     * @brief venue's name.
     */
    String get name;
    /**
     * @brief venue's phone.
     */
    String get phone;
    /**
     * @brief venue's description.
     */
    String get descript;
    /**
     * @brief venue's alias.
     */
    String get alias;
    /**
     * @brief venue's category unique identifier @see Category "Category"
     */
    int get categoryId;
    /**
     * @brief venue's image url if specified.
     */
    String? get imageUrl;


}
