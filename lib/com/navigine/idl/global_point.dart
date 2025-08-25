import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

part 'global_point.impl.dart';
/**
 * @file com/navigine/idl/global_point.dart
 * @brief @copybrief GlobalPoint
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_geometry_classes
 *
 * @brief A point at the specified WGS84 coordinates.
 *
 * Referenced from @see GeometryUtils "GeometryUtils", @see NavigationManager "NavigationManager", @see Position "Position", @see Sublocation "Sublocation".
 *
 *
 *
 * Dart code snippet:
 * @snippet geometry_utils_example.dart dart_GlobalPoint_constructor
 *
 */
class GlobalPoint {
    /// @brief Default constructor
    GlobalPoint(this.latitude, this.longitude);
    /**
     * @brief point's latitude.
     *
     *
     *
     * Dart code snippet:
     * @snippet geometry_utils_example.dart dart_GlobalPoint_getLatitude
     *
     */
    double latitude;
    /**
     * @brief point's longitude.
     *
     *
     *
     * Dart code snippet:
     * @snippet geometry_utils_example.dart dart_GlobalPoint_getLongitude
     *
     */
    double longitude;
}
