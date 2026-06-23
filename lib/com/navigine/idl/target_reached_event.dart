import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';

part 'target_reached_event.impl.dart';
/// Event indicating the route target has been reached.
/// Referenced from [RouteEvent].
class TargetReachedEvent {
    /// Default constructor.
    TargetReachedEvent(this.index, this.point);
    /// Index of reached target in target list.
    ///
    /// Example:
    /// ```dart
    /// int index = event.index;
    /// print("Reached target index: $index");
    /// ```
    int index;
    /// Location point where target was reached.
    ///
    /// Example:
    /// ```dart
    /// LocationPoint point = event.point;
    /// _demonstrateLocationPointUsage(point);
    /// ```
    LocationPoint point;
}
