import 'dart:ffi';
import 'package:ffi/ffi.dart';

part 'join_type.impl.dart';
/// Enum defining the type of join for polyline segments.
/// Referenced from [PolylineMapObject].
enum JoinType {
    /// No points added at the line join.
    MITER,
    /// One point added to flatten the corner of a join.
    BEVEL,
    /// Five points added in a fan to make a round outer join.
    ROUND,
}
