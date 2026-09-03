import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/global_point.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

part 'map_object_pick_result.impl.dart';
/// Class is used to handle information in [PickListener].
/// Referenced from [PickListener].
abstract class MapObjectPickResult implements Finalizable {


    /// WGS84 location of the picked map object [GlobalPoint].
    ///
    /// Example:
    /// ```dart
    /// LocationPoint point = mapObjectPickResult.point;
    /// print("Map object picked at screen position (${screenPosition.x}, ${screenPosition.y})");
    /// print("  Object location: (${point.x}, ${point.y})");
    /// ```
    GlobalPoint get point;
    /// Floor the picked object is attached to, or null for the outdoor map.
    int? get sublocationId;
    /// Picked map object [MapObject].
    ///
    /// Example:
    /// ```dart
    /// MapObject mapObject = mapObjectPickResult.mapObject;
    /// print("  Object type: ${mapObject.runtimeType}");
    /// ```
    MapObject get mapObject;


}
