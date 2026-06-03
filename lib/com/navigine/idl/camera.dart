import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';

part 'camera.impl.dart';
/// Class describing position of the camera.
/// Referenced from [LocationWindow].
///
/// Example:
/// ```dart
/// // Create camera with constructor
/// Point newPoint = Point(100.0, 200.0);
/// Camera newCamera = Camera(newPoint, 50.0, 0.0, 0.0);
/// print("Created camera with point (${newPoint.x}, ${newPoint.y}), zoom 50.0, rotation 0°, tilt 0°");
/// ```
class Camera {
    /// Default constructor.
    Camera(this.point, this.zoom, this.rotation, this.tilt);
    /// point the camera is looking at [Point]
    Point point;
    /// zoom level.
    double zoom;
    /// Map azimuth in degrees: angle between `Location North` (top of the image) and the direction of interest
    /// on the view plane, in the range [0, 360).
    double rotation;
    /// Camera tilt in degrees. 0 means vertical downward (map seen from above).
    /// Positive values tilt the eye toward the horizon; the renderer clamps tilt to device limits when applying.
    double tilt;
}
