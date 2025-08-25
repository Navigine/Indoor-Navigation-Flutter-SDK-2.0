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
 * @brief Class describing position of the camera.
 *
 * Referenced from @see LocationWindow "LocationWindow".
 *
 *
 *
 * Dart code snippet:
 * @snippet location_window_camera_example.dart dart_Camera_constructor
 *
 */
class Camera {
    /// @brief Default constructor
    Camera(this.point, this.zoom, this.rotation);
    /**
     * @brief point the camera is looking at @see Point "Point"
     */
    Point point;
    /**
     * @brief zoom level.
     */
    double zoom;
    /**
     * @brief angle between `Location North` (top of the image) and the direction of interest on the view plane
     * in degrees in the range [0, 360).
     */
    double rotation;
}
