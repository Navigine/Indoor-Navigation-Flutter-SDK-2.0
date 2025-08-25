import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

part 'join_type.impl.dart';
/**
 * @file com/navigine/idl/join_type.dart
 * @brief @copybrief JoinType
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 *
 * @brief Enum defining the type of join for polyline segments.
 *
 * Referenced from @see PolylineMapObject "PolylineMapObject".
 *
 */
enum JoinType {
    /**
     * @brief No points added at the line join.
     */
    MITER,
    /**
     * @brief One point added to flatten the corner of a join.
     */
    BEVEL,
    /**
     * @brief Five points added in a fan to make a round outer join.
     */
    ROUND,
}
