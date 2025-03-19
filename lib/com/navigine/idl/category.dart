import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

part 'category.impl.dart';
/**
 * @file com/navigine/idl/category.dart
 * @brief @copybrief Category
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_elements
 * @brief class is used for storing venue categories.
 *
 * Referenced from @see Location "Location" @see Venue "Venue".
 */
class Category {
    /// @brief Default constructor
    Category(this.id, this.name, this.imageUrl);
    /**
     * @brief category identifier.
     */
    int id;
    /**
     * @brief category name.
     */
    String name;
    /**
     * @brief image source. If presented.
     */
    String? imageUrl;
}
