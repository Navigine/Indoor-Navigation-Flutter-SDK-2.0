import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/camera_update_reason.dart';

part 'camera_listener.impl.dart';
/**
 * @file com/navigine/idl/camera_listener.dart
 * @brief @copybrief CameraListener
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 *
 * @brief Class is used to listen for camera updates
 *
 * Referenced from @see LocationWindow "LocationWindow".
 *
 */
abstract class CameraListener {

    /**
     *
     * @brief Triggered when the camera position changed.
     * @param reason reason of camera update.
     * @param finished true if the camera finished moving, false otherwise.
     *      If a movement is cancelled then reason represents initiator of cancellation.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_camera_example.dart dart_Camera_constructor
     *
     */
    void onCameraPositionChanged(CameraUpdateReason reason, bool finished);



}
