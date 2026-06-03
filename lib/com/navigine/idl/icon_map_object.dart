import 'dart:ffi';
import 'dart:typed_data';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/animation_type.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object_type.dart';
import 'package:navigine_sdk/image_provider.dart';

part 'icon_map_object.impl.dart';
/// Represents an icon object on the location view.
/// Referenced from [LocationWindow].
/// **Note:** IconMapObject maintains orientation to the screen surface by default.
abstract class IconMapObject implements MapObject, Finalizable {

    /// Method is used to specify the center of the icon.
    /// [point] Metrics coordinates of the center [LocationPoint].
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set icon position
    /// LocationPoint iconPoint = LocationPoint(200.0, 300.0);
    /// bool success = _iconMapObject!.setPosition(iconPoint);
    /// print("Set icon position to (${iconPoint.x}, ${iconPoint.y}): $success");
    /// ```
    bool setPosition(LocationPoint point);

    /// Method is used to move the center of the icon with the specified animation.
    /// [point] Metrics coordinates of the center [LocationPoint].
    /// [duration] Animation duration in seconds.
    /// [type] Animation type [AnimationType].
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set icon position with animation
    /// LocationPoint animatedIconPoint = LocationPoint(250.0, 350.0);
    /// bool animatedSuccess = _iconMapObject!.setPositionAnimated(
    ///  animatedIconPoint,
    ///  1.5,
    ///  AnimationType.CUBIC,
    /// );
    /// print(
    ///  "Set icon position with animation to (${animatedIconPoint.x}, ${animatedIconPoint.y}): $animatedSuccess",
    /// );
    /// ```
    bool setPositionAnimated(LocationPoint point, double duration, AnimationType type);

    /// Method is used to specify the decoded raster for the icon.
    /// [bitmap] Image provider: Android com.navigine.image.ImageProvider; iOS UIImage via binding; Flutter navigine_sdk ImageProvider.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Icon pixels come from package:navigine_sdk ImageProvider (async decode in the engine).
    /// ImageProvider iconProvider = ImageProvider.fromImageProvider(
    ///  const AssetImage('assets/icon.png'),
    ///  cacheable: true,
    /// );
    /// bool bitmapSuccess = _iconMapObject!.setBitmap(iconProvider);
    /// print("Set icon from ImageProvider: $bitmapSuccess");
    /// ```
    bool setBitmap(ImageProvider bitmap);

    /// Method is used to specify the size of the icon.
    /// [width] Width of the icon in pixels.
    /// [height] Height of the icon in pixels.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set icon size
    /// bool sizeSuccess = _iconMapObject!.setSize(32.0, 32.0);
    /// print("Set icon size to 32x32 pixels: $sizeSuccess");
    /// ```
    bool setSize(double width, double height);

    /// Method is used to enable or disable collision detection for the icon.
    /// [enabled] Specifies whether collision detection is enabled (true) or disabled (false). Default: false.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Enable collision detection
    /// bool collisionSuccess = _iconMapObject!.setCollisionEnabled(true);
    /// print("Enabled collision detection for icon: $collisionSuccess");
    /// ```
    bool setCollisionEnabled(bool enabled);

    /// Method is used to specify the rotation angle of the icon.
    /// [angle] Rotation angle in degrees. Default: 0.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set icon rotation angle
    /// bool angleSuccess = _iconMapObject!.setAngle(45.0);
    /// print("Set icon rotation angle to 45 degrees: $angleSuccess");
    /// ```
    bool setAngle(double angle);

    /// Method is used to rotate the icon with the specified animation.
    /// [angle] Rotation angle in degrees.
    /// [duration] Animation duration in seconds.
    /// [type] Animation type [AnimationType].
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set icon rotation with animation
    /// bool angleAnimatedSuccess = _iconMapObject!.setAngleAnimated(
    ///  90.0,
    ///  2.0,
    ///  AnimationType.SINE,
    /// );
    /// print(
    ///  "Set icon rotation with animation to 90 degrees: $angleAnimatedSuccess",
    /// );
    /// ```
    bool setAngleAnimated(double angle, double duration, AnimationType type);

    /// Method is used to specify the buffer size around the icon for collision detection.
    /// [width] Width of the buffer in pixels. Default: 0.
    /// [height] Height of the buffer in pixels. Default: 0.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set collision buffer
    /// bool bufferSuccess = _iconMapObject!.setBuffer(10.0, 10.0);
    /// print("Set collision buffer to 10x10 pixels: $bufferSuccess");
    /// ```
    bool setBuffer(double width, double height);

    /// Method is used to specify an offset for the icon’s anchor on screen.
    /// [width] Horizontal offset in pixels.
    /// [height] Vertical offset in pixels.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set position offset
    /// bool offsetSuccess = _iconMapObject!.setOffset(0.0, -16.0);
    /// print("Set position offset to (0.0, -16.0) pixels: $offsetSuccess");
    /// ```
    bool setOffset(double width, double height);

    /// Method is used to specify the priority of the icon.
    /// [priority] The priority value for rendering or interaction. Default: max.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set rendering priority
    /// bool prioritySuccess = _iconMapObject!.setPriority(2);
    /// print("Set rendering priority to 2: $prioritySuccess");
    /// ```
    bool setPriority(double priority);

    /// Method is used to specify whether the icon is flat or billboarded.
    /// [flat] If true, the icon aligns with the location view surface; if false, it maintains orientation to the screen surface. Default: false.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set icon flat mode
    /// bool flatSuccess = _iconMapObject!.setFlat(true);
    /// print("Set icon flat mode to true: $flatSuccess");
    /// ```
    bool setFlat(bool flat);



}
