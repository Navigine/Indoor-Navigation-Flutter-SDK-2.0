import 'dart:ffi';
import 'dart:typed_data';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/location_polyline.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object_type.dart';

part 'polyline_map_object.impl.dart';
/**
 * @file com/navigine/idl/polyline_map_object.dart
 * @brief @copybrief PolylineMapObject
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 *
 * @brief represents polyline object on location view.
 *
 * Referenced from @see LocationWindow "LocationWindow".
 *
 */
abstract class PolylineMapObject implements MapObject, Finalizable {

    /**
     *
     * @brief Method is used to specify source pyline of object.
     * @param polyline metrics coordinate of pyline @see LocationPolyline "LocationPolyline".
     * @return true if success, false otherwise.
     *
     */
    bool setPolyLine(LocationPolyline polyline);

    /**
     *
     * @brief Method is used to specify width of a line.
     * @param width width of a line in pixels.
     * @return true if success, false otherwise.
     *
     */
    bool setWidth(double width);

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



}
