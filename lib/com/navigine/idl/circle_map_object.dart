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
 * @brief represents circle on location view.
 *
 * Referenced from @see LocationWindow "LocationWindow".
 *
 */
abstract class CircleMapObject implements MapObject, Finalizable {

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
     * Method is used to move center of object with specified animation @see LocationPoint "LocationPoint".
     * @param point metrics coordinate of center @see LocationPoint "LocationPoint".
     * @param duration animation duration in seconds.
     * @param type @see AnimationType "AnimationType".
     * @return true if success, false otherwise.
     *
     */
    bool setPositionAnimated(LocationPoint point, double duration, AnimationType type);

    /**
     *
     * @brief Method is used to specify color of object.
     * @param red red RGBA component.
     * @param green green RGBA component.
     * @param blue blue RGBA component.
     * @param alpha Opacity multiplicator. Values below 0 will be set to 0. Default: 1.
     * @return true if success, false otherwise.
     *
     */
    bool setColor(double red, double green, double blue, double alpha);

    /**
     *
     * @brief Method is used to specify size of object.
     * @param radius metrics radius of circle.
     * @return true if success, false otherwise.
     *
     */
    bool setRadius(double radius);



}
