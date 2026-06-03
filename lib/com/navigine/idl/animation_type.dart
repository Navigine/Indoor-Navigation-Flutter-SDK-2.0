import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

part 'animation_type.impl.dart';
/// Enum described animation functions.
/// Referenced from [CircleMapObject], [IconMapObject], [LocationWindow].
///
/// Example:
/// ```dart
/// List<AnimationType> animationTypes = [
///  AnimationType.LINEAR,
///  AnimationType.CUBIC,
///  AnimationType.QUINT,
///  AnimationType.SINE,
///  AnimationType.NONE,
/// ];
/// ```
enum AnimationType {
    /// disable animation
    NONE,
    /// animation according to formula `f(t) = t`.
    LINEAR,
    /// animation according to formula `f(t) = (-2 * t + 3) * t * t`.
    CUBIC,
    /// animation according to formula `f(t) = (6 * t * t - 15 * t + 10) * t * t * t`.
    QUINT,
    /// animation according to formula `f(t) = 0.5 - 0.5 * cos(PI * t)`.
    SINE,
}
