import 'dart:ffi';
import 'package:ffi/ffi.dart';

part 'camera_update_reason.impl.dart';
/// Reason of the camera update.
/// Referenced from [CameraListener].
enum CameraUpdateReason {
    /// user manipulation.
    /// For example: zoom, scroll, rotate, fling.
    GESTURES,
    /// Application.
    /// By calling the LocationView::move methods.
    APPLICATION,
}
