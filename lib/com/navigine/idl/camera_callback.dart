import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/exception.dart' as exception;

part 'camera_callback.impl.dart';
/// Callback specified after the camera movement is stopped
/// Referenced from: [LocationWindow].
abstract class CameraCallback {
    factory CameraCallback({required void Function(bool completed) onMoveFinished})  {
        return CameraCallbackImpl(onMoveFinished: onMoveFinished);
    }

    /// Called when the move if finished.
    /// [completed] determine whether the movement is finished or cancelled
    ///
    /// Example:
    /// ```dart
    /// onMoveFinished: (bool completed) {
    ///  if (completed) {
    ///    print("Camera movement completed successfully");
    ///  } else {
    ///    print("Camera movement was cancelled");
    ///  }
    /// },
    /// ```
    void onMoveFinished(bool completed);
}
