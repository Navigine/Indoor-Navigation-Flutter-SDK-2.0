import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/location.dart';
import 'package:navigine_sdk/error.dart';

part 'location_listener.impl.dart';
/**
 * @file com/navigine/idl/location_listener.dart
 * @brief @copybrief LocationListener
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_listeners
 * @brief Class provides a callback to be invoked when @see LocationManager "LocationManager"
 * class downloads the location from server or load it from the storage.
 *
 * Referenced from @see LocationManager "LocationManager".
 * @note The callback is invoked in the UI thread.
 */
abstract class LocationListener {

    /**
     *
     * @brief Called when new location version has been downloaded from server or load it from the storage
     * @param location @see Location "Location" instance or nil if server url or `USER_HASH` was changed.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_LocationListener_onLocationLoaded
     *
     */
    void onLocationLoaded(Location location);

    /**
     * @cond
     */
    void onLocationUploaded(int locationId);

    /**
     * @endcond
     *
     * @brief Called if unable to download location version from CMS
     * @param locationId location unique identifier in SMC.
     * @param error handled error.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_LocationListener_onLocationFailed
     *
     */
    void onLocationFailed(int locationId, Error error);



}
