import 'dart:ffi';
import 'dart:typed_data';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/animation_type.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object_type.dart';
import 'package:navigine_sdk/image_wrapper.dart';

part 'icon_map_object.impl.dart';
/**
 * @file com/navigine/idl/icon_map_object.dart
 * @brief @copybrief IconMapObject
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 *
 * @brief Represents an icon object on the location view.
 *
 * Referenced from @see LocationWindow "LocationWindow".
 *
 * @note IconMapObject maintains orientation to the screen surface by default.
 *
 */
abstract class IconMapObject implements MapObject, Finalizable {

    /**
     *
     * @brief Method is used to specify the center of the icon.
     * @param point Metrics coordinates of the center @see LocationPoint "LocationPoint".
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_IconMapObject_setPosition
     *
     */
    bool setPosition(LocationPoint point);

    /**
     *
     * @brief Method is used to move the center of the icon with the specified animation.
     * @param point Metrics coordinates of the center @see LocationPoint "LocationPoint".
     * @param duration Animation duration in seconds.
     * @param type Animation type @see AnimationType "AnimationType".
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_IconMapObject_setPositionAnimated
     *
     */
    bool setPositionAnimated(LocationPoint point, double duration, AnimationType type);

    /**
     *
     * @brief Method is used to specify the bitmap image for the icon.
     * @param bitmap Platform bitmap object.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_IconMapObject_setBitmap
     *
     */
    bool setBitmap(ImageWrapper bitmap);

    /**
     *
     * @brief Method is used to specify the size of the icon.
     * @param width Width of the icon in pixels.
     * @param height Height of the icon in pixels.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_IconMapObject_setSize
     *
     */
    bool setSize(double width, double height);

    /**
     *
     * @brief Method is used to enable or disable collision detection for the icon.
     * @param enabled Specifies whether collision detection is enabled (true) or disabled (false). Default: false.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_IconMapObject_setCollisionEnabled
     *
     */
    bool setCollisionEnabled(bool enabled);

    /**
     *
     * @brief Method is used to specify the rotation angle of the icon.
     * @param angle Rotation angle in degrees. Default: 0.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_IconMapObject_setAngle
     *
     */
    bool setAngle(double angle);

    /**
     *
     * @brief Method is used to rotate the icon with the specified animation.
     * @param angle Rotation angle in degrees.
     * @param duration Animation duration in seconds.
     * @param type Animation type @see AnimationType "AnimationType".
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_IconMapObject_setAngleAnimated
     *
     */
    bool setAngleAnimated(double angle, double duration, AnimationType type);

    /**
     *
     * @brief Method is used to specify the buffer size around the icon for collision detection.
     * @param width Width of the buffer in pixels. Default: 0.
     * @param height Height of the buffer in pixels. Default: 0.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_IconMapObject_setBuffer
     *
     */
    bool setBuffer(double width, double height);

    /**
     *
     * @brief Method is used to specify an offset for the circle’s position.
     * @param width Horizontal offset in pixels.
     * @param height Vertical offset in pixels.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_IconMapObject_setOffset
     *
     */
    bool setOffset(double width, double height);

    /**
     *
     * @brief Method is used to specify the priority of the icon.
     * @param priority The priority value for rendering or interaction. Default: max.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_IconMapObject_setPriority
     *
     */
    bool setPriority(double priority);

    /**
     *
     * @brief Method is used to specify whether the icon is flat or billboarded.
     * @param flat If true, the icon aligns with the location view surface; if false, it maintains orientation to the screen surface. Default: false.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_IconMapObject_setFlat
     *
     */
    bool setFlat(bool flat);



}
