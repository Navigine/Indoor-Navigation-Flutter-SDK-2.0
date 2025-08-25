import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

part 'animation_type.impl.dart';
/**
 * @file com/navigine/idl/animation_type.dart
 * @brief @copybrief AnimationType
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 * @brief Enum described animation functions.
 *
 * Referenced from @see CircleMapObject "CircleMapObject", @see IconMapObject "IconMapObject", @see LocationWindow "LocationWindow".
 *
 */
enum AnimationType {
    /**
     * @brief disable animation
     */
    NONE,
    /**
     * @brief animation according to formula `f(t) = t`.
     */
    LINEAR,
    /**
     * @brief animation according to formula `f(t) = (-2 * t + 3) * t * t`.
     */
    CUBIC,
    /**
     * @brief animation according to formula `f(t) = (6 * t * t - 15 * t + 10) * t * t * t`.
     */
    QUINT,
    /**
     * @brief animation according to formula `f(t) = 0.5 - 0.5 * cos(PI * t)`.
     */
    SINE,
}
