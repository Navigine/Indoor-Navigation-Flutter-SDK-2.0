import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/position.dart';
import 'package:navigine_sdk/error.dart';

part 'position_listener.impl.dart';
/**
 * @file com/navigine/idl/position_listener.dart
 * @brief @copybrief PositionListener
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_listeners
 * @brief Class provides a callback to be invoked when @see NavigationManager "NavigationManager"
 * updates the position of the device.
 *
 * Referenced from @see NavigationManager "NavigationManager" @see RouteManager "RouteManager".
 * @note The callback is invoked in the UI thread.
 */
abstract class PositionListener {

    /**
     *
     * @brief Called when new position has been calculated
     * @param position current user @see Position "Position".
     *
     */
    void onPositionUpdated(Position position);

    /**
     *
     * @brief Called if unable to calculate user's position
     * @param error handled error.
     *
     */
    void onPositionError(Error error);



}
