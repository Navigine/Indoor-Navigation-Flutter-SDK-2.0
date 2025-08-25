import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

part 'rectangle.impl.dart';
/**
 * @file com/navigine/idl/rectangle.dart
 * @brief @copybrief Rectangle
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_geometry_classes
 *
 * @brief A rectangle with specified origin and size.
 *
 *
 *
 *
 * Dart code snippet:
 * @snippet bitmap_region_decoder_example.dart dart_Rectangle_constructor
 *
 */
class Rectangle {
    /// @brief Default constructor
    Rectangle(this.x, this.y, this.width, this.height);
    /**
     *
     * @brief rectangle's origin `x` coordinate.
     *
     */
    int x;
    /**
     *
     * @brief rectangle's origin `y` coordinate.
     */
    int y;
    /**
     *
     * @brief rectangle's width.
     *
     */
    int width;
    /**
     *
     * @brief rectangle's height.
     *
     */
    int height;
}
