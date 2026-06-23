import 'dart:ffi';
import 'package:ffi/ffi.dart';

part 'placement.impl.dart';
/// Enum defining the placement mode for points along a polyline.
/// Referenced from [DottedPolylineMapObject].
enum Placement {
    /// Places points at each vertex of the polyline.
    VERTEX,
    /// Places points at the midpoint of each polyline segment.
    MIDPOINT,
    /// Places points at regular intervals along the polyline, controlled by spacing parameters.
    SPACED,
}
