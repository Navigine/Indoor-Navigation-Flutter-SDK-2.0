import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart' as weak_map;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/position.dart';
import 'package:navigine_sdk/error.dart';

part 'position_listener.impl.dart';
/// Class provides a callback to be invoked when [NavigationManager]
/// updates the position of the device.
/// Referenced from [NavigationManager] [RouteManager].
/// **Note:** The callback is invoked in the UI thread.
abstract class PositionListener {

    /// Called when new position has been calculated
    /// [position] current user [Position].
    ///
    /// Example:
    /// ```dart
    /// onPositionUpdated: (Position position) {
    ///  print("Position updated successfully");
    ///  _demonstratePositionUsage(position);
    /// },
    /// ```
    void onPositionUpdated(Position position);

    /// Called if unable to calculate user's position
    /// [error] handled error.
    ///
    /// Example:
    /// ```dart
    /// onPositionError: (Error error) {
    ///  print("Position error: ${error.message}");
    /// },
    /// ```
    void onPositionError(Error error);



}
