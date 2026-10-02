import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/guidance_camera_mode.dart';
import 'package:navigine_sdk/com/navigine/idl/guidance_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/route_instruction.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';
import 'package:navigine_sdk/com/weak_interface_wrapper.dart' as weak_interface_wrapper;

part 'guidance_camera.impl.dart';
/// Drives the map camera from a [RouteLayer] and exposes
/// the next instruction. Does not draw the route.
/// Overview uses the window focus rect, so set `LocationWindow.focusRect` for
/// chrome (floor selector, banner) before switching to `OVERVIEW`.
/// Referenced from [NavigineSdk].
abstract class GuidanceCamera implements Finalizable {

    /// Sets Free / Following / Overview.
    ///
    /// Example:
    /// ```dart
    /// _guidanceCamera?.setMode(GuidanceCameraMode.FOLLOWING);
    /// ```
    void setMode(GuidanceCameraMode mode);

    /// Current mode.
    ///
    /// Example:
    /// ```dart
    /// print('Guidance mode: ${_guidanceCamera?.mode()}');
    /// ```
    GuidanceCameraMode mode();

    /// Forces a top-down camera (tilt 0) in Following and Overview.
    /// When false, Following uses a fixed forward tilt.
    ///
    /// Example:
    /// ```dart
    /// _guidanceCamera?.set2DMode(false);
    /// ```
    void set2DMode(bool enabled);

    /// Returns true when top-down guidance is enabled.
    bool is2DMode();

    /// When false, the camera is not moved. Instructions still update.
    void setActive(bool active);

    /// Returns true when this controller may move the camera.
    bool isActive();

    /// Latest next instruction, or null.
    ///
    /// Example:
    /// ```dart
    /// final next = _guidanceCamera?.instruction();
    /// print('Next instruction: ${next?.title} ${next?.distance} m');
    /// ```
    RouteInstruction? instruction();

    /// Adds a listener for mode and instruction changes.
    /// Dart apps implement `GuidanceListener` and pass it to `addListener`.
    void addListener(GuidanceListener listener);

    /// Removes a previously added listener.
    void removeListener(GuidanceListener listener);

    bool isValid();



}
