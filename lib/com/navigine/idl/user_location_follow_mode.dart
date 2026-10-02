import 'dart:ffi';
import 'package:ffi/ffi.dart';

part 'user_location_follow_mode.impl.dart';
/// How the user-location layer moves the camera.
/// Reduced to pedestrian follow: none, position, compass heading, course over
/// ground.
/// A map gesture returns the mode to NONE.
/// Referenced from [UserLocationLayer].
enum UserLocationFollowMode {
    /// Camera stays where the user left it. The arrow still rotates to heading.
    NONE,
    /// Camera follows the position and keeps its current rotation.
    POSITION,
    /// Camera follows and rotates to the compass heading.
    HEADING,
    /// Camera follows and rotates to the direction of travel.
    /// Falls back to compass heading until the user has moved.
    COURSE,
}
