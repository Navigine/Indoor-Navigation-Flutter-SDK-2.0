import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/camera_update_reason.dart';

part 'camera_listener.impl.dart';
/// Class is used to listen for camera updates
/// Referenced from [LocationWindow].
abstract class CameraListener {

    /// Triggered when the camera position changed.
    /// If a movement is cancelled then reason represents initiator of cancellation.
    /// [reason] reason of camera update.
    /// [finished] true if the camera finished moving, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Create camera with constructor
    /// Point newPoint = Point(100.0, 200.0);
    /// Camera newCamera = Camera(newPoint, 50.0, 0.0, 0.0);
    /// print("Created camera with point (${newPoint.x}, ${newPoint.y}), zoom 50.0, rotation 0°, tilt 0°");
    /// ```
    void onCameraPositionChanged(CameraUpdateReason reason, bool finished);



}
