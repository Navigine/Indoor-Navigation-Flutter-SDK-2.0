import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/navigine/idl/global_point.dart';
import 'package:navigine_sdk/com/navigine/idl/route_annotation_type.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

part 'route_instruction.impl.dart';
/// Next instruction for a guidance banner.
/// Built from the next [RouteAnnotation] ahead of the
/// current route progress. `distance` is meters along the route, not a
/// straight-line chord. This is a pedestrian manoeuvre (no lanes, signs, or road
/// events).
class RouteInstruction {
    /// Default constructor.
    RouteInstruction(this.type, this.point, this.sublocationId, this.distance, this.title);
    /// Annotation kind (transition, maneuver, finish, …).
    RouteAnnotationType type;
    /// Instruction point in WGS84.
    GlobalPoint point;
    /// Floor id, or null when the instruction is outdoor.
    int? sublocationId;
    /// Meters along the route from the current progress to this point.
    double distance;
    /// Short label, when the annotation has one.
    String? title;
}
