import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/global_point.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

part 'route_simulator_sample.impl.dart';
/// One sample while walking a polyline.
/// `advance` is meters from the start along the geometry.
/// `heading` is radians, clockwise from north (same sense as user-location course).
/// This is a pedestrian location fix: no accuracy noise, wheel speed, or
/// recorded-session clock.
class RouteSimulatorSample {
    /// Default constructor.
    RouteSimulatorSample(this.point, this.sublocationId, this.advance, this.heading);
    GlobalPoint point;
    int? sublocationId;
    double advance;
    double heading;
}
