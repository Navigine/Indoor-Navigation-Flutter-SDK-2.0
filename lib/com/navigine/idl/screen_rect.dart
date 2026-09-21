import 'dart:ffi';
import 'dart:math' as math;
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/screen_point.dart';

part 'screen_rect.impl.dart';
/// Rectangle on the device screen, in screen pixels (same units as ScreenPoint).
/// Used as `LocationWindow.focusRect` and with `getEnclosingCameraWithFocus`
/// so chrome (floor selector, follow-me, POI card) does not cover the fitted
/// geometry. Null / unset means the full viewport.
/// Origin is the top-left of the map view; +x right, +y down.
class ScreenRect {
    /// Default constructor.
    ScreenRect(this.topLeft, this.bottomRight);
    /// Top-left corner [ScreenPoint].
    math.Point<double> topLeft;
    /// Bottom-right corner [ScreenPoint].
    math.Point<double> bottomRight;
}
