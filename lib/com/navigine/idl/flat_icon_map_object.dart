import 'dart:ffi';
import 'dart:typed_data';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/animation_type.dart';
import 'package:navigine_sdk/com/navigine/idl/icon_map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object_type.dart';
import 'package:navigine_sdk/image_wrapper.dart';

part 'flat_icon_map_object.impl.dart';
/**
 * @file com/navigine/idl/flat_icon_map_object.dart
 * @brief @copybrief FlatIconMapObject
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 *
 * @brief represents icon object on location view.
 *
 * Referenced from @see LocationWindow "LocationWindow".
 *
 * @note FlatIconMapObject keep orientation to location view surface.
 *
 */
abstract class FlatIconMapObject implements IconMapObject, Finalizable {

    /**
     *
     * @brief Method is used to specify rotation of object.
     * @param angle angle of rotation in degrees.
     * @return true if success, false otherwise.
     *
     */
    bool setAngle(double angle);

    /**
     *
     * @brief Method is used to rotate object with specified animation.
     * @param angle angle of rotation in degrees.
     * @param duration animation duration in seconds.
     * @param type animation type @see AnimationType "AnimationType".
     * @return true if success, false otherwise.
     *
     */
    bool setAngleAnimated(double angle, double duration, AnimationType type);



}
