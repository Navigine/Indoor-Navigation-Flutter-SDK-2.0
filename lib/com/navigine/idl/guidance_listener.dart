import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart' as weak_map;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/guidance_camera_mode.dart';
import 'package:navigine_sdk/com/navigine/idl/route_instruction.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

part 'guidance_listener.impl.dart';
/// Guidance camera and next-instruction updates.
abstract class GuidanceListener {

    /// Mode changed, including an automatic drop to `FREE` after a gesture.
    void onCameraModeChanged(GuidanceCameraMode mode);

    /// Next instruction changed, or null when the route is gone / finished.
    void onInstructionChanged(RouteInstruction? instruction);



}
