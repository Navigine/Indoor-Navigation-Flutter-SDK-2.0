import 'dart:ffi';
import 'dart:math' as math;
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/screen_point.dart';

part 'user_location_layer.impl.dart';
/**
 * @file com/navigine/idl/user_location_layer.dart
 * @brief @copybrief UserLocationLayer
 */
/**
 *
 * @brief Layer that automatically renders current user position (arrow and accuracy circle) on the map.
 *        Provides visibility and anchoring controls.
 * Referenced from @see LocationView "LocationView".
 *
 */
abstract class UserLocationLayer implements Finalizable {

    /**
     *
     * @brief Shows or hides user location layer.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_common_example.dart dart_UserLocationLayer_setVisible
     *
     */
    void setVisible(bool visible);

    /**
     *
     * @brief Returns true if user location layer is visible.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_common_example.dart dart_UserLocationLayer_isVisible
     *
     */
    bool isVisible();

    /**
     *
     * @brief Sets anchor point for user indicator in screen pixels.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_common_example.dart dart_UserLocationLayer_setAnchor
     *
     */
    void setAnchor(math.Point<double> anchor);

    /**
     *
     * @brief Resets anchor to default (center).
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_common_example.dart dart_UserLocationLayer_resetAnchor
     *
     */
    void resetAnchor();

    /**
     *
     * @brief Returns true if custom anchor is enabled.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_common_example.dart dart_UserLocationLayer_anchorEnabled
     *
     */
    bool anchorEnabled();



}
