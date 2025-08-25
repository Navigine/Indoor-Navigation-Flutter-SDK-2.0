import 'dart:ffi';
import 'dart:typed_data';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/cap_type.dart';
import 'package:navigine_sdk/com/navigine/idl/join_type.dart';
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
 * @brief Represents a polyline object on the location view.
 *
 * Referenced from @see LocationWindow "LocationWindow".
 *
 */
abstract class PolylineMapObject implements MapObject, Finalizable {

    /**
     *
     * @brief Method is used to specify the source polyline of the object.
     * @param polyline Metrics coordinates of the polyline @see LocationPolyline "LocationPolyline".
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_PolylineMapObject_setPolyLine
     *
     */
    bool setPolyLine(LocationPolyline polyline);

    /**
     *
     * @brief Method is used to specify the width of the polyline.
     * @param width Width of the polyline in pixels.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_PolylineMapObject_setWidth
     *
     */
    bool setWidth(double width);

    /**
     *
     * @brief Method is used to specify the fill color of the polyline.
     * @param red Red RGBA component (0 to 1).
     * @param green Green RGBA component (0 to 1).
     * @param blue Blue RGBA component (0 to 1).
     * @param alpha Opacity multiplier (0 to 1). Values below 0 are set to 0. Default: 1.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_PolylineMapObject_setColor
     *
     */
    bool setColor(double red, double green, double blue, double alpha);

    /**
     *
     * @brief Method is used to specify the rendering order of the polyline.
     * @param order The rendering order value. Default: 0.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_PolylineMapObject_setOrder
     *
     */
    bool setOrder(int order);

    /**
     *
     * @brief Method is used to specify the cap style for the polyline ends.
     * @param cap The cap type @see CapType "CapType". Default: BUTT.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_PolylineMapObject_setCapType
     *
     */
    bool setCapType(CapType cap);

    /**
     *
     * @brief Method is used to specify the join style for polyline segments.
     * @param join The join type @see JoinType "JoinType". Default: MITER.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_PolylineMapObject_setJoinType
     *
     */
    bool setJoinType(JoinType join);

    /**
     *
     * @brief Method is used to specify the miter limit for miter joins.
     * @param miterLimit The miter limit value for miter joins. Default: 3.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_PolylineMapObject_setMiterLimit
     *
     */
    bool setMiterLimit(double miterLimit);

    /**
     *
     * @brief Method is used to specify the color of the polyline’s outline.
     * @param red Red RGBA component (0 to 1).
     * @param green Green RGBA component (0 to 1).
     * @param blue Blue RGBA component (0 to 1).
     * @param alpha Opacity multiplier (0 to 1). Values below 0 are set to 0. Default: 1.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_PolylineMapObject_setOutlineColor
     *
     */
    bool setOutlineColor(double red, double green, double blue, double alpha);

    /**
     *
     * @brief Method is used to specify the width of the polyline’s outline.
     * @param radius Width of the outline in pixels.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_PolylineMapObject_setOutlineWidth
     *
     */
    bool setOutlineWidth(double radius);

    /**
     *
     * @brief Method is used to specify the opacity of the polyline’s outline.
     * @param alpha Opacity multiplier (0 to 1). Values below 0 are set to 0. Default: 1.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_PolylineMapObject_setOutlineAlpha
     *
     */
    bool setOutlineAlpha(double alpha);

    /**
     *
     * @brief Method is used to specify the cap style for the polyline’s outline ends.
     * @param cap The cap type @see CapType "CapType". Default: BUTT.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_PolylineMapObject_setOutlineCapType
     *
     */
    bool setOutlineCapType(CapType cap);

    /**
     *
     * @brief Method is used to specify the join style for the polyline’s outline segments.
     * @param join The join type @see JoinType "JoinType". Default: MITER.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_PolylineMapObject_setOutlineJoinType
     *
     */
    bool setOutlineJoinType(JoinType join);

    /**
     *
     * @brief Method is used to specify the miter limit for the polyline’s outline miter joins.
     * @param miterLimit The miter limit value for outline miter joins. Default: 3.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_PolylineMapObject_setOutlineMiterLimit
     *
     */
    bool setOutlineMiterLimit(double miterLimit);

    /**
     *
     * @brief Method is used to specify the rendering order of the polyline’s outline.
     * @param order The rendering order value for the outline. Default: 0.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_PolylineMapObject_setOutlineOrder
     *
     */
    bool setOutlineOrder(int order);



}
