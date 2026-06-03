import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

part 'map_object_type.impl.dart';
/// Enum defining the type of map object.
/// Referenced from [MapObject].
enum MapObjectType {
    /// Icon.
    /// [IconMapObject]
    ICON,
    /// Polygon.
    /// [PolygonMapObject]
    POLYGON,
    /// Polyline.
    /// [PolylineMapObject]
    POLYLINE,
    /// DottedPolyline.
    /// [DottedPolylineMapObject]
    DOTTED_POLYLINE,
    /// Circle.
    /// [CircleMapObject]
    CIRCLE,
    /// Model.
    /// [ModelMapObject]
    MODEL,
}
