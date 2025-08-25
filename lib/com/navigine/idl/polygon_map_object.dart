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
 * @brief Represents a polygon object on the location view.
 *
 * Referenced from @see LocationWindow "LocationWindow".
 *
 */
abstract class PolygonMapObject implements MapObject, Finalizable {

    /**
     *
     * @brief Method is used to specify the source polygon of the object.
     * @param polygon Metrics coordinates of the polygon @see LocationPolygon "LocationPolygon".
     * @return true if success, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_PolygonMapObject_setPolygon
     *
     */
    bool setPolygon(LocationPolygon polygon);

    /**
     *
     * @brief Method is used to specify the color of the object.
     * @param red Red RGBA component.
     * @param green Green RGBA component.
     * @param blue Blue RGBA component.
     * @param alpha Opacity multiplier. Values below 0 will be set to 0. Default: 1.
     * @return true if success, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_PolygonMapObject_setColor
     *
     */
    bool setColor(double red, double green, double blue, double alpha);

    /**
     *
     * @brief Method is used to specify the rendering order of the object.
     * @param order The rendering order value. Default: 0.
     * @return true if success, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_PolygonMapObject_setOrder
     *
     */
    bool setOrder(int order);



}
