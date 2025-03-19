import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;

part 'camera_callback.impl.dart';
/**
 * @file com/navigine/idl/camera_callback.dart
 * @brief @copybrief CameraCallback
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 *
 * @brief Callback specified after the camera movement is stopped
 *
 * Referenced from: @ref LocationWindow "LocationWindow".
 */
abstract class CameraCallback {
    factory CameraCallback({required void Function(bool completed) onMoveFinished})  {
        return CameraCallbackImpl(onMoveFinished: onMoveFinished);
    }

    /**
     *
     * @brief Called when the move if finished.
     * @param completed determine whether the movement is finished or cancelled
     *
     */
    void onMoveFinished(bool completed);
}
