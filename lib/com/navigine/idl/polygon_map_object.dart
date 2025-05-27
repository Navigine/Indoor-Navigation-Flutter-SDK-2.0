import 'dart:ffi';
import 'dart:typed_data';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/location_polygon.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object_type.dart';

part 'polygon_map_object.impl.dart';
/**
 * @file com/navigine/idl/polygon_map_object.dart
 * @brief @copybrief PolygonMapObject
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 *
 * @brief represents polygon object on location view.
 *
 * Referenced from @see LocationWindow "LocationWindow".
 *
 */
abstract class PolygonMapObject implements MapObject, Finalizable {

    /**
     *
     * @brief Method is used to specify source polygon of object.
     * @param polygon metrics coordinate of polygon @see LocationPolygon "LocationPolygon".
     * @return true if success, false otherwise.
     *
     */
    bool setPolygon(LocationPolygon polygon);

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
