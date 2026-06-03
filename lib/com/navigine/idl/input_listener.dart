import 'dart:ffi';
import 'dart:math' as math;
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/screen_point.dart';

part 'input_listener.impl.dart';
/// Class is used to listen for interactions with location view
/// Referenced from [LocationWindow].
abstract class InputListener {

    /// Called when a tap occurred.
    /// [screenPoint] point in screen coordinates.
    ///
    /// Example:
    /// ```dart
    /// @override
    /// void onViewTap(math.Point<double> screenPoint) {
    ///  print("View tapped at screen position (${screenPoint.x}, ${screenPoint.y})");
    /// }
    /// ```
    void onViewTap(math.Point<double> screenPoint);

    /// Called when a double tap occurred.
    /// [screenPoint] point in screen coordinates.
    ///
    /// Example:
    /// ```dart
    /// @override
    /// void onViewDoubleTap(math.Point<double> screenPoint) {
    ///  print("View double tapped at screen position (${screenPoint.x}, ${screenPoint.y})");
    /// }
    /// ```
    void onViewDoubleTap(math.Point<double> screenPoint);

    /// Called when a long tap occurred.
    /// [screenPoint] point in screen coordinates.
    ///
    /// Example:
    /// ```dart
    /// @override
    /// void onViewLongTap(math.Point<double> screenPoint) {
    ///  print("View long tapped at screen position (${screenPoint.x}, ${screenPoint.y})");
    /// }
    /// ```
    void onViewLongTap(math.Point<double> screenPoint);



}
