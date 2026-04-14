import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

part 'transition_exit_event.impl.dart';
/**
 * @file com/navigine/idl/transition_exit_event.dart
 * @brief @copybrief TransitionExitEvent
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_secondary_classes
 *
 * @brief Event describing exiting a level/sublocation transition.
 *
 * Referenced from @see RouteEvent "RouteEvent".
 *
 */
class TransitionExitEvent {
    /// @brief Default constructor
    TransitionExitEvent(this.from, this.to);
    /**
     * @brief Source level identifier.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet route_manager_example.dart dart_TransitionExitEvent_getFrom
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
     *@snippet route_manager_example.dart dart_TransitionExitEvent_getTo
     *
     */
    int to;
}
