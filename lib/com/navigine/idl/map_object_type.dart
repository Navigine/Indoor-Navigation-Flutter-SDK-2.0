import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

part 'map_object_type.impl.dart';
/**
 * @file com/navigine/idl/map_object_type.dart
 * @brief @copybrief MapObjectType
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 * @brief Enum underlying type of map object
 *
 * Referenced from @see MapObject "MapObject".
 *
 */
enum MapObjectType {
    /**
     * @brief icon
     *
     * @see IconMapObject "IconMapObject"
     */
    ICON,
    /**
     * @brief flat icon
     *
     * @see FlatIconMapObject "FlatIconMapObject"
     */
    FLAT_ICON,
    /**
     * @brief polygon
     *
     * @see PolygonMapObject "PolygonMapObject"
     */
    POLYGON,
    /**
     * @brief polyline
     *
     * @see PolylineMapObject "PolylineMapObject"
     */
    POLYLINE,
    /**
     * @brief circle
     *
     * @see CircleMapObject "CircleMapObject"
     */
    CIRCLE,
}
