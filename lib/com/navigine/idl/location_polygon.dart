import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/polygon.dart';

part 'location_polygon.impl.dart';
/**
 * @file com/navigine/idl/location_polygon.dart
 * @brief @copybrief LocationPolygon
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_geometry_classes
 *
 * @brief Class is used for representing certain polygon within the location @see Polygon "Polygon"
 *
 */
class LocationPolygon {
    /// @brief Default constructor
    LocationPolygon(this.polygon, this.locationId, this.sublocationId);
    /**
     *
     * @brief Metrics polygon @see Polygon "Polygon".
     *
     */
    Polygon polygon;
    /**
     *
     * @brief location polygon location identifier.
     *
     */
    int locationId;
    /**
     *
     * @brief location polygon sublocation identifier.
     *
     */
    int sublocationId;
}
