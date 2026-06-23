import 'dart:ffi';
import 'dart:math' as math;
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart' as weak_map;
import 'package:navigine_sdk/com/containers__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object_pick_result.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';
import 'package:navigine_sdk/screen_point.dart';

part 'pick_listener.impl.dart';
/// Class is used to handle for picking objects on the location view
/// Referenced from [LocationWindow].
abstract class PickListener {

    /// Receive the result from [LocationWindow] `pickMapObjectAt` method
    /// [mapObjectPickResult] [MapObjectPickResult] instance or `nil` if no objects was found.
    /// [screenPosition] position where the object was picked in pixels.
    ///
    /// Example:
    /// ```dart
    /// @override
    /// void onMapObjectPickComplete(MapObjectPickResult? mapObjectPickResult, math.Point<double> screenPosition) {
    ///  if (mapObjectPickResult != null) {
    ///    // [dart_MapObjectPickResult_getPoint]
    ///    LocationPoint point = mapObjectPickResult.point;
    ///    print("Map object picked at screen position (${screenPosition.x}, ${screenPosition.y})");
    ///    print("  Object location: (${point.x}, ${point.y})");
    ///    // [dart_MapObjectPickResult_getPoint]
    ///    // [dart_MapObjectPickResult_getMapObject]
    ///    MapObject mapObject = mapObjectPickResult.mapObject;
    ///    print("  Object type: ${mapObject.runtimeType}");
    ///    // [dart_MapObjectPickResult_getMapObject]
    ///  } else {
    ///    print("No map object found at screen position (${screenPosition.x}, ${screenPosition.y})");
    ///  }
    /// }
    /// ```
    void onMapObjectPickComplete(MapObjectPickResult mapObjectPickResult, math.Point<double> screenPosition);

    /// Receive the result from [LocationWindow] `pickMapFeatureAt`
    /// [mapFeaturePickResult] dictionary of properties of the picked feature or `nil` if no objects was found.
    /// [screenPosition] position where the object was picked in pixels.
    ///
    /// Example:
    /// ```dart
    /// @override
    /// void onMapFeaturePickComplete(Map<String, String>? mapFeaturePickResult, math.Point<double> screenPosition) {
    ///  if (mapFeaturePickResult != null) {
    ///    print("Map feature picked at screen position (${screenPosition.x}, ${screenPosition.y})");
    ///    print("  Feature properties: $mapFeaturePickResult");
    ///  } else {
    ///    print("No map feature found at screen position (${screenPosition.x}, ${screenPosition.y})");
    ///  }
    /// }
    /// ```
    void onMapFeaturePickComplete(Map<String, String> mapFeaturePickResult, math.Point<double> screenPosition);



}
