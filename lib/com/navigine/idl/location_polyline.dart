import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/polyline.dart';

part 'location_polyline.impl.dart';
/**
 * @file com/navigine/idl/location_polyline.dart
 * @brief @copybrief LocationPolyline
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_geometry_classes
 *
 * @brief Class is used for representing certain polyline within the location @see Polyline "Polyline"
 *
 */
class LocationPolyline {
    /// @brief Default constructor
    LocationPolyline(this.polyline, this.locationId, this.sublocationId);
    /**
     *
     * @brief Metrics polyline @see Polyline.
     *
     */
    Polyline polyline;
    /**
     *
     * @brief location polyline location identifier.
     *
     */
    int locationId;
    /**
     *
     * @brief location polyline sublocation identifier.
     *
     */
    int sublocationId;
}
