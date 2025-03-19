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
 * @brief represents icon object on location view.
 *
 * Referenced from @see LocationWindow "LocationWindow".
 *
 * @note IconMapObject keep orientation to screen surface.
 *
 */
abstract class IconMapObject implements MapObject, Finalizable {

    /**
     *
     * @brief Method is used to specify center of object.
     * @param point metrics coordinate of center @see LocationPoint "LocationPoint".
     * @return true if success, false otherwise.
     *
     */
    bool setPosition(LocationPoint point);

    /**
     *
     * @brief Method is used to move center of object with specified animation @see LocationPoint "LocationPoint".
     * @param point metrics coordinate of center @see LocationPoint "LocationPoint".
     * @param duration animation duration in seconds.
     * @param type animation type @see AnimationType "AnimationType".
     * @return true if success, false otherwise.
     *
     */
    bool setPositionAnimated(LocationPoint point, double duration, AnimationType type);

    /**
     *
     * @brief Method is used to specify bitmap image to the object.
     * @param bitmap platfrom bitmap object.
     * @return true if success, false otherwise.
     *
     */
    bool setBitmap(ImageWrapper bitmap);

    /**
     *
     * @brief Method is used to specify size of object.
     * @param width width of object in pixels.
     * @param height width of object in pixels.
     * @return true if success, false otherwise.
     *
     */
    bool setSize(double width, double height);



}
