import 'dart:ffi';
import 'dart:typed_data';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/animation_type.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object_type.dart';

part 'circle_map_object.impl.dart';
/**
 * @file com/navigine/idl/circle_map_object.dart
 * @brief @copybrief CircleMapObject
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 *
 * @brief Represents a circle on the location view.
 *
 * Referenced from @see LocationWindow "LocationWindow".
 *
 */
abstract class CircleMapObject implements MapObject, Finalizable {

    /**
     *
     * @brief Method is used to specify the center of the circle.
     * @param point Metrics coordinates of the center @see LocationPoint "LocationPoint".
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_CircleMapObject_setPosition
     *
     */
    bool setPosition(LocationPoint point);

    /**
     *
     * @brief Method is used to move the center of the circle with the specified animation.
     * @param point Metrics coordinates of the center @see LocationPoint "LocationPoint".
     * @param duration Animation duration in seconds.
     * @param type Animation type @see AnimationType "AnimationType". Default: CENTER.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_CircleMapObject_setPositionAnimated
     *
     */
    bool setPositionAnimated(LocationPoint point, double duration, AnimationType type);

    /**
     *
     * @brief Method is used to specify the fill color of the circle.
     * @param red Red RGBA component (0 to 1).
     * @param green Green RGBA component (0 to 1).
     * @param blue Blue RGBA component (0 to 1).
     * @param alpha Opacity multiplier (0 to 1). Values below 0 are set to 0. Default: 1.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_CircleMapObject_setColor
     *
     */
    bool setColor(double red, double green, double blue, double alpha);

    /**
     *
     * @brief Method is used to specify the size of the circle.
     * @param radius Radius of the circle in meters.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_CircleMapObject_setRadius
     *
     */
    bool setRadius(double radius);

    /**
     *
     * @brief Method is used to enable or disable collision detection for the circle.
     * @param enabled Specifies whether collision detection is enabled (true) or disabled (false). Default: false.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_CircleMapObject_setCollisionEnabled
     *
     */
    bool setCollisionEnabled(bool enabled);

    /**
     *
     * @brief Method is used to specify the buffer size around the circle for collision detection.
     * @param width Width of the buffer in pixels. Default: 0.
     * @param height Height of the buffer in pixels. Default: 0.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_CircleMapObject_setBuffer
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
     * @snippet location_window_map_objects_example.dart dart_CircleMapObject_setOffset
     *
     */
    bool setOffset(double width, double height);

    /**
     *
     * @brief Method is used to specify the priority of the circle.
     * @param priority The priority value for rendering or interaction. Default: 0.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_CircleMapObject_setPriority
     *
     */
    bool setPriority(double priority);

    /**
     *
     * @brief Method is used to specify the color of the circle’s outline.
     * @param red Red RGBA component (0 to 1).
     * @param green Green RGBA component (0 to 1).
     * @param blue Blue RGBA component (0 to 1).
     * @param alpha Opacity multiplier (0 to 1). Values below 0 are set to 0. Default: 1.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_CircleMapObject_setOutlineColor
     *
     */
    bool setOutlineColor(double red, double green, double blue, double alpha);

    /**
     *
     * @brief Method is used to specify the thickness of the circle’s outline.
     * @param radius Thickness of the outline in pixels.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_CircleMapObject_setOutlineRadius
     *
     */
    bool setOutlineRadius(double radius);

    /**
     *
     * @brief Method is used to specify the opacity of the circle’s outline.
     * @param alpha Opacity multiplier (0 to 1). Values below 0 are set to 0. Default: 1.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_CircleMapObject_setOutlineAlpha
     *
     */
    bool setOutlineAlpha(double alpha);



}
