import 'dart:ffi';
import 'dart:typed_data';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object_type.dart';

part 'map_object.impl.dart';
/**
 * @file com/navigine/idl/map_object.dart
 * @brief @copybrief MapObject
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 *
 * @brief Base interface for handling objects on the location view.
 *
 * Used to manage objects in @see LocationWindow "LocationWindow".
 * Can be handled in the `pickMapObjectAt` method @see LocationWindow "LocationWindow".
 *
 * Referenced from @see CircleMapObject "CircleMapObject", @see IconMapObject "IconMapObject", @see PolylineMapObject "PolylineMapObject", @see PolygonMapObject "PolygonMapObject", @see DottedPolylineMapObject "DottedPolylineMapObject".
 *
 */
abstract class MapObject implements Finalizable {

    /**
     *
     * @brief Gets the unique identifier of the map object.
     * @return The unique identifier of the map object.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_MapObject_getId
     *
     */
    int getId();

    /**
     *
     * @brief Gets the type of the map object.
     * @return The type of the map object @see MapObjectType "MapObjectType".
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_MapObject_getType
     *
     */
    MapObjectType getType();

    /**
     *
     * @brief Gets the user-defined data associated with the map object.
     * @return The data stored in the map object.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_MapObject_getData
     *
     */
    Uint8List getData();

    /**
     *
     * @brief Method is used to specify the visibility of the map object.
     * @param visible Specifies whether the object is visible (true) or hidden (false). Default: true.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_MapObject_setVisible
     *
     */
    bool setVisible(bool visible);

    /**
     *
     * @brief Method is used to specify whether the map object can be interacted with.
     * @param interactive Specifies whether the object can be picked in the `pickMapObjectAt` method (true) or not (false). Default: false.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_MapObject_setInteractive
     *
     */
    bool setInteractive(bool interactive);

    /**
     *
     * @brief Method is used to set user-defined data for the map object.
     * @param data Data to store in the map object.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_MapObject_setData
     *
     */
    void setData(Uint8List data);

    /**
     *
     * @brief Method is used to set the title of the map object.
     * @param title The title to display on the location view.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_MapObject_setTitle
     *
     */
    bool setTitle(String title);

    /**
     *
     * @brief Method is used to set the opacity of the map object.
     * @param alpha Opacity multiplier. Values below 0 will be set to 0. Values above 1 will be set to 1. Default: 1.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_MapObject_setAlpha
     *
     */
    bool setAlpha(double alpha);



}
