import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

part 'cap_type.impl.dart';
/// Enum defining the type of cap for polyline ends.
/// Referenced from [PolylineMapObject].
enum CapType {
    /// No points added to the end of the line.
    BUTT,
    /// Two points added to make a square extension.
    SQUARE,
    /// Six points added in a fan to make a round cap.
    ROUND,
}
