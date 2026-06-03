import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

part 'transition_entry_event.impl.dart';
/// Event describing entering another level/sublocation transition.
/// Referenced from [RouteEvent].
class TransitionEntryEvent {
    /// Default constructor.
    TransitionEntryEvent(this.from, this.to);
    /// Source level identifier.
    ///
    /// Example:
    /// ```dart
    /// int from = event.from;
    /// print("Transition entry from: $from");
    /// ```
    int from;
    /// Destination level identifier.
    ///
    /// Example:
    /// ```dart
    /// int to = event.to;
    /// print("Transition entry to: $to");
    /// ```
    int to;
}
