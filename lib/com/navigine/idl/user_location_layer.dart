import 'dart:ffi';
import 'dart:math' as math;
import 'dart:ui';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/user_location_follow_mode.dart';
import 'package:navigine_sdk/com/weak_interface_wrapper.dart' as weak_interface_wrapper;
import 'package:navigine_sdk/image_provider.dart';
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

    /// Enables or disables heading-up mode while the user location layer is anchored.
    /// When enabled and a location heading is available, the map camera rotates to keep
    /// the user's heading pointed toward the top of the screen. Without an anchor the
    /// location icon keeps rotating independently.
    ///
    /// Example:
    /// ```dart
    /// _userLocationLayer!.setHeadingModeActive(true);
    /// print("Heading-up mode enabled");
    /// ```
    void setHeadingModeActive(bool active);

    /// Same as followMode() == HEADING.
    /// Returns true if heading-up mode is enabled.
    ///
    /// Example:
    /// ```dart
    /// bool headingModeActive = _userLocationLayer!.headingModeActive();
    /// print("Heading-up mode active: $headingModeActive");
    /// ```
    bool headingModeActive();

    /// Sets how the camera follows the user.
    /// NONE stops following and keeps a previously set anchor point.
    /// POSITION, HEADING and COURSE follow even without setAnchor (screen center).
    /// setAnchor() from NONE switches to POSITION. resetAnchor() switches to NONE.
    /// setHeadingModeActive(true) switches to HEADING.
    ///
    /// Example:
    /// ```dart
    /// _userLocationLayer!.setFollowMode(UserLocationFollowMode.HEADING);
    /// print("Follow mode set to heading");
    /// ```
    void setFollowMode(UserLocationFollowMode mode);

    /// Returns the current follow mode.
    ///
    /// Example:
    /// ```dart
    /// final followMode = _userLocationLayer!.followMode();
    /// print("Follow mode: $followMode");
    /// ```
    UserLocationFollowMode followMode();

    /// Replaces the heading arrow bitmap.
    /// Null restores the built-in heading fan.
    ///
    /// Example:
    /// ```dart
    /// _userLocationLayer!.setArrowBitmap(ImageProvider.fromImageProvider(
    ///  const AssetImage('assets/arrow.png'),
    ///  cacheable: true,
    /// ));
    /// _userLocationLayer!.setArrowBitmap(null);
    /// print("Custom arrow bitmap cleared");
    /// ```
    void setArrowBitmap(ImageProvider? bitmap);

    /// Sets the accuracy-circle fill. Default is a translucent blue.
    ///
    /// Example:
    /// ```dart
    /// _userLocationLayer!.setAccuracyColor(const Color(0x4230AAD9));
    /// print("Accuracy circle color updated");
    /// ```
    void setAccuracyColor(Color color);

    bool isValid();



}
