import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/location_info.dart';
import 'package:navigine_sdk/error.dart';

part 'location_list_listener.impl.dart';
/**
 * @file com/navigine/idl/location_list_listener.dart
 * @brief @copybrief LocationListListener
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_listeners
 * @brief Class provides a callback to be invoked when @see LocationListManager "LocationListManager"
 * class downloads list of available locations from server.
 *
 * Referenced from @see LocationListManager "LocationListManager".
 * @note The callback is invoked in the UI thread.
 */
abstract class LocationListListener {

    /**
     *
     * @brief Called when new list of available locations has been downloaded from server
     * @param locationInfos dictionary of @see LocationInfo "LocationInfo"s which represents location id to location general info.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_list_manager_example.dart dart_LocationListListener_onLocationListLoaded
     *
     */
    void onLocationListLoaded(Map<int, LocationInfo> locationInfos);

    /**
     *
     * @brief Called if unable to download list of available locations
     * @param error handled error.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_list_manager_example.dart dart_LocationListListener_onLocationListFailed
     *
     */
    void onLocationListFailed(Error error);



}
