import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/turn_type.dart';

part 'turn_event.impl.dart';
/// Class describing turn guidance event.
/// Referenced from [RouteEvent].
class TurnEvent {
    /// Default constructor.
    TurnEvent(this.type, this.angle);
    /// Turn direction/severity type.
    ///
    /// Example:
    /// ```dart
    /// TurnType type = event.type;
    /// print("Turn type: $type");
    /// ```
    TurnType type;
    /// Signed turn angle in degrees.
    ///
    /// Example:
    /// ```dart
    /// int angle = event.angle;
    /// print("Turn angle: $angle");
    /// ```
    int angle;
}
