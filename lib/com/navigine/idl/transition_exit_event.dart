import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

part 'transition_exit_event.impl.dart';
/// Event describing exiting a level/sublocation transition.
/// Referenced from [RouteEvent].
class TransitionExitEvent {
    /// Default constructor.
    TransitionExitEvent(this.from, this.to);
    /// Source level identifier.
    ///
    /// Example:
    /// ```dart
    /// int from = event.from;
    /// print("Transition exit from: $from");
    /// ```
    int from;
    /// Destination level identifier.
    ///
    /// Example:
    /// ```dart
    /// int to = event.to;
    /// print("Transition exit to: $to");
    /// ```
    int to;
}
