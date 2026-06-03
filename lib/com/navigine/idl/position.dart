import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/global_point.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';

part 'position.impl.dart';
/// Class describing user's position.
/// Referenced from: [NavigationManager], [PositionListener].
class Position {
    /// Default constructor.
    Position(this.point, this.accuracy, this.heading, this.headingAccuracy, this.locationPoint, this.locationHeading);
    /// position in WGS84 coordinates.
    ///
    /// Example:
    /// ```dart
    /// // Get global point (WGS84 coordinates)
    /// GlobalPoint? globalPoint = position.point;
    /// if (globalPoint != null) {
    ///  _demonstrateGlobalPointUsage(globalPoint);
    /// }
    /// ```
    GlobalPoint point;
    /// Position accuracy in meters
    ///
    /// Example:
    /// ```dart
    /// // Get position accuracy
    /// double accuracy = position.accuracy;
    /// print("Position accuracy: $accuracy meters");
    /// ```
    double accuracy;
    /// Heading, angle of rotation about the -Z axis (in radians).
    /// This value represents the angle between the device's Y
    /// axis and the magnetic north pole. When facing north, this
    /// angle is 0, when facing south, this angle is pi.
    /// Likewise, when facing east, this angle is pi/2, and
    /// when facing west, this angle is -pi/2. The range of
    /// values is [-pi, pi].
    ///
    /// Example:
    /// ```dart
    /// // Get heading (angle of rotation about the -Z axis in radians)
    /// double? heading = position.heading;
    /// if (heading != null) {
    ///  print("Heading: $heading radians");
    /// }
    /// ```
    double? heading;
    /// Heading accuracy in radians
    ///
    /// Example:
    /// ```dart
    /// // Get heading accuracy
    /// double? headingAccuracy = position.headingAccuracy;
    /// if (headingAccuracy != null) {
    ///  print("Heading accuracy: $headingAccuracy radians");
    /// }
    /// ```
    double? headingAccuracy;
    /// position in metrics coordinates at calculated location and sublocation @see LocationPoint
    ///
    /// Example:
    /// ```dart
    /// // Get location point (metrics coordinates)
    /// LocationPoint? locationPoint = position.locationPoint;
    /// if (locationPoint != null) {
    ///  _demonstrateLocationPointUsage(locationPoint);
    /// }
    /// ```
    LocationPoint? locationPoint;
    /// Similiar to `heading` but with respect to `sublocation north` (top of the image)
    ///
    /// Example:
    /// ```dart
    /// // Get location heading (with respect to sublocation north)
    /// double? locationHeading = position.locationHeading;
    /// if (locationHeading != null) {
    ///  print("Location heading: $locationHeading radians");
    /// }
    /// ```
    double? locationHeading;
}
