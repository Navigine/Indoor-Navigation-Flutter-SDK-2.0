import 'dart:ffi';
import 'dart:math' as math;
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/screen_point.dart';

part 'input_listener.impl.dart';
/**
 * @file com/navigine/idl/input_listener.dart
 * @brief @copybrief InputListener
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 *
 * @brief Class is used to listen for interactions with location view
 *
 * Referenced from @see LocationWindow "LocationWindow".
 *
 */
abstract class InputListener {

    /**
     *
     * @brief Called when a tap occurred.
     * @param screenPoint point in screen coordinates.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_interaction_example.dart dart_InputListener_onViewTap
     *
     */
    void onViewTap(math.Point<double> screenPoint);

    /**
     *
     * @brief Called when a double tap occurred.
     * @param screenPoint point in screen coordinates.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_interaction_example.dart dart_InputListener_onViewDoubleTap
     *
     */
    void onViewDoubleTap(math.Point<double> screenPoint);

    /**
     *
     * @brief Called when a long tap occurred.
     * @param screenPoint point in screen coordinates.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_interaction_example.dart dart_InputListener_onViewLongTap
     *
     */
    void onViewLongTap(math.Point<double> screenPoint);



}
