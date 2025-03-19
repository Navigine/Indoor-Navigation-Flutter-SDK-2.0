import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/global_point.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';

part 'position.impl.dart';
/**
 * @file com/navigine/idl/position.dart
 * @brief @copybrief Position
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_secondary_classes
 *
 * @brief Class describing user's position.
 *
 * Referenced from: @see NavigationManager "NavigationManager", @see PositionListener "PositionListener".
 *
 */
class Position {
    /// @brief Default constructor
    Position(this.point, this.accuracy, this.heading, this.headingAccuracy, this.locationPoint, this.locationHeading);
    /**
     * @brief position in WGS84 coordinates.
     */
    GlobalPoint point;
    /**
     * Position accuracy in meters
     */
    double accuracy;
    /**
     * @brief Heading, angle of rotation about the -Z axis (in radians).
     * This value represents the angle between the device's Y
     * axis and the magnetic north pole. When facing north, this
     * angle is 0, when facing south, this angle is pi.
     * Likewise, when facing east, this angle is pi/2, and
     * when facing west, this angle is -pi/2. The range of
     * values is [-pi, pi].
     */
    double? heading;
    /**
     * @brief Heading accuracy in radians
     */
    double? headingAccuracy;
    /**
     * @brief position in metrics coordinates at calculated location and sublocation @see LocationPoint
     */
    LocationPoint? locationPoint;
    /**
     * @brief Similiar to `heading` but with respect to `sublocation north` (top of the image)
     */
    double? locationHeading;
}
