import 'dart:ffi';
import 'package:ffi/ffi.dart';

part 'route_remaining_style.impl.dart';
/// Rendering style for the remaining (not yet traveled) part of the route.
/// Referenced from [RouteLayer].
enum RouteRemainingStyle {
    /// Continuous solid polyline.
    SOLID,
    /// Dashed polyline (see setRemainingDashLength / setRemainingGapLength).
    DASHED,
    /// Points placed along the route ([DottedPolylineMapObject]).
    DOTTED,
}
