import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object.dart';

part 'map_object_pick_result.impl.dart';
/// Class is used to handle information in [PickListener].
/// Referenced from [PickListener].
abstract class MapObjectPickResult implements Finalizable {


    /// Location of the picked map object [LocationPoint].
    ///
    /// Example:
    /// ```dart
    /// LocationPoint point = mapObjectPickResult.point;
    /// print("Map object picked at screen position (${screenPosition.x}, ${screenPosition.y})");
    /// print("  Object location: (${point.x}, ${point.y})");
    /// ```
    LocationPoint get point;
    /// Picked map object [MapObject].
    ///
    /// Example:
    /// ```dart
    /// MapObject mapObject = mapObjectPickResult.mapObject;
    /// print("  Object type: ${mapObject.runtimeType}");
    /// ```
    MapObject get mapObject;


}
