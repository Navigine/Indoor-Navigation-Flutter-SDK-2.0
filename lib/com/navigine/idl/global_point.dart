import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

part 'global_point.impl.dart';
/// A point at the specified WGS84 coordinates.
/// Referenced from [GeometryUtils], [NavigationManager], [Position], [Sublocation].
///
/// Example:
/// ```dart
/// // Create global points with latitude, longitude
/// GlobalPoint globalPoint1 = GlobalPoint(55.7558, 37.6176); // Moscow
/// GlobalPoint globalPoint2 = GlobalPoint(59.9311, 30.3609); // St. Petersburg
/// GlobalPoint globalPoint3 = GlobalPoint(55.7522, 37.6156); // Moscow center
/// print("Created global points: GP1(${globalPoint1.latitude}, ${globalPoint1.longitude}), GP2(${globalPoint2.latitude}, ${globalPoint2.longitude})");
/// ```
class GlobalPoint {
    /// Default constructor.
    GlobalPoint(this.latitude, this.longitude);
    /// point's latitude.
    ///
    /// Example:
    /// ```dart
    /// // Get latitude
    /// double lat1 = globalPoint1.latitude;
    /// print("GlobalPoint1 latitude: $lat1");
    /// ```
    double latitude;
    /// point's longitude.
    ///
    /// Example:
    /// ```dart
    /// // Get longitude
    /// double lon1 = globalPoint1.longitude;
    /// print("GlobalPoint1 longitude: $lon1");
    /// ```
    double longitude;
}
