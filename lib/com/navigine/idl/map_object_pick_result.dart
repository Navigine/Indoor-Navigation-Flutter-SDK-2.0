import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object.dart';

part 'map_object_pick_result.impl.dart';
/**
 * @file com/navigine/idl/map_object_pick_result.dart
 * @brief @copybrief MapObjectPickResult
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 *
 * @brief Class is useed to handle information in @see PickListener "PickListener".
 *
 * Referenced from @see PickListener "PickListener".
 *
 */
abstract class MapObjectPickResult implements Finalizable {


    /**
     *
     * @brief Location of the picked map object @see LocationPoint "LocationPoint".
     *
     */
    LocationPoint get point;
    /**
     *
     * @brief Picked map object @see MapObject "MapObject".
     *
     */
    MapObject get mapObject;


}
