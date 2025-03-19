import 'dart:ffi';
import 'dart:math' as math;
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/map_object_pick_result.dart';
import 'package:navigine_sdk/screen_point.dart';

part 'pick_listener.impl.dart';
/**
 * @file com/navigine/idl/pick_listener.dart
 * @brief @copybrief PickListener
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 *
 * @brief Class is used to handle for picking objects on the location view
 *
 * Referenced from @see LocationWindow "LocationWindow".
 *
 */
abstract class PickListener {

    /**
     *
     * @brief Receive the result from @see LocationWindow "LocationWindow" `pickMapObjectAt` method
     * @param mapObjectPickResult @see MapObjectPickResult "MapObjectPickResult" instance or `nil` if no objects was found.
     * @param screenPosition position where the object was picked in pixels.
     *
     */
    void onMapObjectPickComplete(MapObjectPickResult mapObjectPickResult, math.Point<double> screenPosition);

    /**
     *
     * @brief Receive the result from @see LocationWindow "LocationWindow" `pickMapFeatureAt`
     * @param mapFeaturePickResult dictionary of properties of the picked feature or `nil` if no objects was found.
     * @param screenPosition position where the object was picked in pixels.
     *
     */
    void onMapFeaturePickComplete(Map<String, String> mapFeaturePickResult, math.Point<double> screenPosition);



}
