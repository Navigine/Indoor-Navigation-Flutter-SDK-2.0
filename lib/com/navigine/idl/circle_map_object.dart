import 'dart:ffi';
import 'dart:typed_data';
import 'dart:ui';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/navigine/idl/animation_type.dart';
import 'package:navigine_sdk/com/navigine/idl/global_point.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object_type.dart';
import 'package:navigine_sdk/com/navigine/idl/title_style.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';
import 'package:navigine_sdk/com/weak_interface_wrapper.dart' as weak_interface_wrapper;

part 'circle_map_object.impl.dart';
/// Represents a circle on the location view.
/// Referenced from [LocationWindow].
abstract class CircleMapObject implements MapObject, Finalizable {

    /// Method is used to specify the center of the circle.
    /// [point] WGS84 coordinates of the center [GlobalPoint].
    /// [sublocationId] Floor this object is attached to, or null for the outdoor map.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set circle position
    /// GlobalPoint centerPoint = GlobalPoint(100.0, 200.0);
    /// bool success = _circleMapObject!.setPosition(centerPoint, 7);
    /// print(
    ///  "Set circle position to (${centerPoint.latitude}, ${centerPoint.longitude}): $success",
    /// );
    /// ```
    bool setPosition(GlobalPoint point, int? sublocationId);

    /// Method is used to move the center of the circle with the specified animation.
    /// [point] WGS84 coordinates of the center [GlobalPoint].
    /// [sublocationId] Floor this object is attached to, or null for the outdoor map.
    /// [duration] Animation duration in seconds.
    /// [type] Animation type [AnimationType]. Default: CENTER.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set circle position with animation
    /// GlobalPoint animatedPoint = GlobalPoint(150.0, 250.0);
    /// bool animatedSuccess = _circleMapObject!.setPositionAnimated(animatedPoint, 7, 2.0, AnimationType.LINEAR,  );
    /// print(
    ///  "Set circle position with animation to (${animatedPoint.latitude}, ${animatedPoint.longitude}): $animatedSuccess",
    /// );
    /// ```
    bool setPositionAnimated(GlobalPoint point, int? sublocationId, double duration, AnimationType type);

    /// Method is used to specify the fill color of the circle.
    /// [color] Fill color.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set circle color
    /// bool colorSuccess = _circleMapObject!.setColor(const Color(0xCCFF0000));
    /// print("Set circle color to red with 80% opacity: $colorSuccess");
    /// ```
    bool setColor(Color color);

    /// Method is used to specify the size of the circle.
    /// [radius] Radius of the circle in meters.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set circle radius
    /// bool radiusSuccess = _circleMapObject!.setRadius(10.0);
    /// print("Set circle radius to 10.0 meters: $radiusSuccess");
    /// ```
    bool setRadius(double radius);

    /// Method is used to enable or disable collision detection for the circle.
    /// [enabled] Specifies whether collision detection is enabled (true) or disabled (false). Default: false.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Enable collision detection
    /// bool collisionSuccess = _circleMapObject!.setCollisionEnabled(true);
    /// print("Enabled collision detection for circle: $collisionSuccess");
    /// ```
    bool setCollisionEnabled(bool enabled);

    /// Method is used to specify the buffer size around the circle for collision detection.
    /// [width] Width of the buffer in pixels. Default: 0.
    /// [height] Height of the buffer in pixels. Default: 0.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set collision buffer
    /// bool bufferSuccess = _circleMapObject!.setBuffer(5.0, 5.0);
    /// print("Set collision buffer to 5x5 pixels: $bufferSuccess");
    /// ```
    bool setBuffer(double width, double height);

    /// Method is used to specify an offset for the circle’s position.
    /// [width] Horizontal offset in pixels.
    /// [height] Vertical offset in pixels.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set position offset
    /// bool offsetSuccess = _circleMapObject!.setOffset(2.0, 3.0);
    /// print("Set position offset to (2.0, 3.0) pixels: $offsetSuccess");
    /// ```
    bool setOffset(double width, double height);

    /// Method is used to specify the priority of the circle.
    /// [priority] The priority value for rendering or interaction. Default: 0.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set rendering priority
    /// bool prioritySuccess = _circleMapObject!.setPriority(1);
    /// print("Set rendering priority to 1: $prioritySuccess");
    /// ```
    bool setPriority(double priority);

    /// Method is used to specify the color of the circle’s outline.
    /// [color] Outline color.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set outline color
    /// bool outlineColorSuccess = _circleMapObject!.setOutlineColor(const Color(0xFF0000FF));
    /// print("Set circle outline color to blue: $outlineColorSuccess");
    /// ```
    bool setOutlineColor(Color color);

    /// Method is used to specify the thickness of the circle’s outline.
    /// [radius] Thickness of the outline in pixels.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set outline radius
    /// bool outlineRadiusSuccess = _circleMapObject!.setOutlineRadius(2.0);
    /// print("Set circle outline radius to 2.0: $outlineRadiusSuccess");
    /// ```
    bool setOutlineRadius(double radius);

    /// Method is used to specify the opacity of the circle’s outline.
    /// [alpha] Opacity multiplier (0 to 1). Values below 0 are set to 0. Default: 1.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set outline alpha
    /// bool outlineAlphaSuccess = _circleMapObject!.setOutlineAlpha(0.5);
    /// print("Set circle outline alpha to 0.5: $outlineAlphaSuccess");
    /// ```
    bool setOutlineAlpha(double alpha);

    bool isValid();



}
