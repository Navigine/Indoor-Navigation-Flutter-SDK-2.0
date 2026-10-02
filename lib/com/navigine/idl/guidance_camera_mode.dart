import 'dart:ffi';
import 'package:ffi/ffi.dart';

part 'guidance_camera_mode.impl.dart';
/// Camera behavior while a route is shown.
/// `FREE` leaves the camera alone (also entered when the user pans or pinches).
/// `FOLLOWING` looks along the route at the current progress.
/// `OVERVIEW` fits the whole route into `LocationWindow.focusRect` (or the full
/// view when focus rect is null).
/// Modes: Free / Following / Overview. A user gesture drops tracking.
enum GuidanceCameraMode {
    FREE,
    FOLLOWING,
    OVERVIEW,
}
