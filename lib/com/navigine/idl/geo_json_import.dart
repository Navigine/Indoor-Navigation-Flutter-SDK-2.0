import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/containers__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/polygon_map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/polyline_map_object.dart';
import 'package:navigine_sdk/com/weak_interface_wrapper.dart' as weak_interface_wrapper;

part 'geo_json_import.impl.dart';
/// Polygons and polylines created from one GeoJSON document.
/// Points are not imported. The host styles and removes these objects itself.
abstract class GeoJsonImport implements Finalizable {

    /// Polygons from Polygon and MultiPolygon geometries.
    List<PolygonMapObject> polygons();

    /// Polylines from LineString and MultiLineString geometries.
    List<PolylineMapObject> polylines();

    bool isValid();



}
