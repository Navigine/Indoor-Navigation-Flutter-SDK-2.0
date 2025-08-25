import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

part 'placement.impl.dart';
/**
 * @file com/navigine/idl/placement.dart
 * @brief @copybrief Placement
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 *
 * @brief Enum defining the placement mode for points along a polyline.
 *
 * Referenced from @see DottedPolylineMapObject "DottedPolylineMapObject".
 *
 */
enum Placement {
    /**
     * @brief Places points at each vertex of the polyline.
     */
    VERTEX,
    /**
     * @brief Places points at the midpoint of each polyline segment.
     */
    MIDPOINT,
    /**
     * @brief Places points at regular intervals along the polyline, controlled by spacing parameters.
     */
    SPACED,
}
