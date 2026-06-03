import 'dart:ffi';
import 'dart:math' as math;
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/screen_point.dart';

part 'user_location_layer.impl.dart';
/// Layer that automatically renders current user position (arrow and accuracy circle) on the map.
/// Provides visibility and anchoring controls.
/// Referenced from [LocationView].
abstract class UserLocationLayer implements Finalizable {

    /// Shows or hides user location layer.
    ///
    /// Example:
    /// ```dart
    /// _userLocationLayer!.setVisible(true);
    /// print("User location layer set visible");
    /// ```
    void setVisible(bool visible);

    /// Returns true if user location layer is visible.
    ///
    /// Example:
    /// ```dart
    /// bool visible = _userLocationLayer!.isVisible();
    /// print("User location layer is visible: $visible");
    /// ```
    bool isVisible();

    /// Sets anchor point for user indicator in screen pixels.
    ///
    /// Example:
    /// ```dart
    /// ScreenPoint anchor = ScreenPoint(100.0, 200.0);
    /// _userLocationLayer!.setAnchor(anchor);
    /// print("Set user location anchor to: (${anchor.x}, ${anchor.y})");
    /// ```
    void setAnchor(math.Point<double> anchor);

    /// Resets anchor to default (center).
    ///
    /// Example:
    /// ```dart
    /// _userLocationLayer!.resetAnchor();
    /// print("Anchor reset to default");
    /// ```
    void resetAnchor();

    /// Returns true if custom anchor is enabled.
    ///
    /// Example:
    /// ```dart
    /// bool anchorEnabled = _userLocationLayer!.anchorEnabled();
    /// print("Anchor enabled: $anchorEnabled");
    /// ```
    bool anchorEnabled();



}
