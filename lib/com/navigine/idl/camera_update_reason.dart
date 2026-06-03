import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

part 'camera_update_reason.impl.dart';
/// Reason of the camera update.
/// Referenced from [CameraListener].
enum CameraUpdateReason {
    /// user manipulation.
    /// For example: zoom, scroll, rotate, fling.
    GESTURES,
    /// Application.
    /// By calling the LocationLiew::move methods.
    APPLICATION,
}
