import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';

part 'target_reached_event.impl.dart';
/**
 * @file com/navigine/idl/target_reached_event.dart
 * @brief @copybrief TargetReachedEvent
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_secondary_classes
 *
 * @brief Event indicating the route target has been reached.
 *
 * Referenced from @see RouteEvent "RouteEvent".
 *
 */
class TargetReachedEvent {
    /// @brief Default constructor
    TargetReachedEvent(this.index, this.point);
    /**
     * @brief Index of reached target in target list.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet route_manager_example.dart dart_TargetReachedEvent_getIndex
     *
     */
    int index;
    /**
     * @brief Location point where target was reached.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet route_manager_example.dart dart_TargetReachedEvent_getPoint
     *
     */
    LocationPoint point;
}
