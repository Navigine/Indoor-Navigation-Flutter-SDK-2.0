import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

part 'transition_entry_event.impl.dart';
/**
 * @file com/navigine/idl/transition_entry_event.dart
 * @brief @copybrief TransitionEntryEvent
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_secondary_classes
 *
 * @brief Event describing entering another level/sublocation transition.
 *
 * Referenced from @see RouteEvent "RouteEvent".
 *
 */
class TransitionEntryEvent {
    /// @brief Default constructor
    TransitionEntryEvent(this.from, this.to);
    /**
     * @brief Source level identifier.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet route_manager_example.dart dart_TransitionEntryEvent_getFrom
     *
     */
    int from;
    /**
     * @brief Destination level identifier.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet route_manager_example.dart dart_TransitionEntryEvent_getTo
     *
     */
    int to;
}
