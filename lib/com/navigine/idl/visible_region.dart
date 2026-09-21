import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/global_point.dart';

part 'visible_region.impl.dart';
/// Trapezoid of the current viewport on the ground, in WGS84.
/// With tilt the shape is not a rectangle: near edge is closer to the camera.
/// Corners are ray-cast onto the ground plane, same as
/// [LocationWindow] `screenPositionToGlobal`.
/// Referenced from [LocationWindow] `visibleRegion`.
class VisibleRegion {
    /// Default constructor.
    VisibleRegion(this.topLeft, this.topRight, this.bottomLeft, this.bottomRight);
    /// Top-left screen corner [GlobalPoint].
    GlobalPoint topLeft;
    /// Top-right screen corner [GlobalPoint].
    GlobalPoint topRight;
    /// Bottom-left screen corner [GlobalPoint].
    GlobalPoint bottomLeft;
    /// Bottom-right screen corner [GlobalPoint].
    GlobalPoint bottomRight;
}
