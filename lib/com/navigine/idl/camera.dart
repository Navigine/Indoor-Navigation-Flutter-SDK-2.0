import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';

part 'camera.impl.dart';
/**
 * @file com/navigine/idl/camera.dart
 * @brief @copybrief Camera
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 *
 * @brief Class describing position of the camera.
 *
 * Referenced from @see LocationWindow "LocationWindow".
 *
 *
 *
 *
 *Dart code snippet:
 *@snippet location_window_camera_example.dart dart_Camera_constructor
 *
 */
class Camera {
    /// @brief Default constructor
    Camera(this.point, this.zoom, this.rotation, this.tilt);
    /**
     * @brief point the camera is looking at @see Point "Point"
     */
    Point point;
    /**
     * @brief zoom level.
     */
    double zoom;
    /**
     * @brief Map azimuth in degrees: angle between `Location North` (top of the image) and the direction of interest
     * on the view plane, in the range [0, 360).
     */
    double rotation;
    /**
     * @brief Camera tilt in degrees. 0 means vertical downward (map seen from above).
     * Positive values tilt the eye toward the horizon; the renderer clamps tilt to device limits when applying.
     */
    double tilt;
}
