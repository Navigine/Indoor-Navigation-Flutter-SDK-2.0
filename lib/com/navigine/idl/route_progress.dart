import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/global_point.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

part 'route_progress.impl.dart';
class RouteProgress {
    /// Default constructor.
    RouteProgress(this.point, this.sublocationId, this.advance, this.remainingDistance, this.legIndex);
    GlobalPoint point;
    int? sublocationId;
    double advance;
    double remainingDistance;
    int legIndex;
}
