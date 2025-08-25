import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

part 'cap_type.impl.dart';
/**
 * @file com/navigine/idl/cap_type.dart
 * @brief @copybrief CapType
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 *
 * @brief Enum defining the type of cap for polyline ends.
 *
 * Referenced from @see PolylineMapObject "PolylineMapObject".
 *
 */
enum CapType {
    /**
     * @brief No points added to the end of the line.
     */
    BUTT,
    /**
     * @brief Two points added to make a square extension.
     */
    SQUARE,
    /**
     * @brief Six points added in a fan to make a round cap.
     */
    ROUND,
}
