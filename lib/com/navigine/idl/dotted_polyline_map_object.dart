import 'dart:ffi';
import 'dart:typed_data';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/location_polyline.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object_type.dart';
import 'package:navigine_sdk/com/navigine/idl/placement.dart';

part 'dotted_polyline_map_object.impl.dart';
/**
 * @file com/navigine/idl/dotted_polyline_map_object.dart
 * @brief @copybrief DottedPolylineMapObject
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 *
 * @brief Represents a polyline object with points placed along it on the location view.
 *
 * Referenced from @see LocationWindow "LocationWindow".
 *
 */
abstract class DottedPolylineMapObject implements MapObject, Finalizable {

    /**
     *
     * @brief Method is used to specify the source polyline for the points.
     * @param polyline Metrics coordinates of the polyline @see LocationPolyline "LocationPolyline".
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_DottedPolylineMapObject_setPolyline
     *
     */
    bool setPolyLine(LocationPolyline polyline);

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
     * @snippet location_window_map_objects_example.dart dart_DottedPolylineMapObject_setColor
     *
     */
    bool setColor(double red, double green, double blue, double alpha);

    /**
     *
     * @brief Method is used to specify the size of the points.
     * @param width Width of the points in pixels.
     * @param height Height of the points in pixels.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_DottedPolylineMapObject_setSize
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
     * @snippet location_window_map_objects_example.dart dart_DottedPolylineMapObject_setCollisionEnabled
     *
     */
    bool setCollisionEnabled(bool enabled);

    /**
     *
     * @brief Method is used to specify the placement mode for points along the polyline.
     * @param placement The placement mode @see Placement "Placement". Default: VERTEX.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_DottedPolylineMapObject_setPlacement
     *
     */
    bool setPlacement(Placement placement);

    /**
     *
     * @brief Method is used to specify the minimum ratio of the polyline length for point placement.
     * @param ratio The minimum ratio of the polyline length (typically between 0 and 1). Default: 1.0.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_DottedPolylineMapObject_setPlacementMinRatio
     *
     */
    bool setPlacementMinRatio(double ratio);

    /**
     *
     * @brief Method is used to specify the spacing between points for spaced placement.
     * @param spacing The spacing distance in pixels. Default: 80.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_DottedPolylineMapObject_setPlacementSpacing
     *
     */
    bool setPlacementSpacing(double spacing);

    /**
     *
     * @brief Method is used to specify the distance interval for repeating points along the polyline.
     * @param distance The repeat distance in pixels. Default: 0.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_DottedPolylineMapObject_setRepeatDistance
     *
     */
    bool setRepeatDistance(double distance);

    /**
     *
     * @brief Method is used to specify the group identifier for repeating points.
     * @param group The group identifier for point repetition. Default: 0.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_DottedPolylineMapObject_setRepeatGroup
     *
     */
    bool setRepeatGroup(int group);

    /**
     *
     * @brief Method is used to specify the priority of the icon.
     * @param priority The priority value for rendering or interaction. Default: max.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_DottedPolylineMapObject_setPriority
     *
     */
    bool setPriority(double priority);



}
