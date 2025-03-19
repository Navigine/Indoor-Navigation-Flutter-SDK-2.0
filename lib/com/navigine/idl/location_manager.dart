import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/location_listener.dart';

part 'location_manager.impl.dart';
/**
 * @file com/navigine/idl/location_manager.dart
 * @brief @copybrief LocationManager
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_managers
 * @brief Class is used for downloading and working with @see Location "Location".
 *
 * Referenced from @see NavigineSdk "NavigineSdk".
 */
abstract class LocationManager implements Finalizable {

    /**
     *
     * @brief Method is used to add @see LocationListener "LocationListener" element
     * which will notify about newly downloaded and set location.
     * @note Do not forget to remove listener if it is no longer needed!
     * @param listener Сorresponding @see LocationListener "LocationListener" class.
     *
     */
    void addLocationListener(LocationListener listener);

    /**
     *
     * @brief Method is used for removing previously added @see LocationListener "LocationListener" class element.
     * @param listener Сorresponding @see LocationListener "LocationListener" class to remove.
     *
     */
    void removeLocationListener(LocationListener listener);

    /**
     *
     * @brief Method is used for setting current location, which will be downloaded from server or from storage, if it was downloaded before.
     * Result will be handled by @see LocationListener "LocationListener"
     * @param locationId location id from CMS
     *
     */
    void setLocationId(int locationId);

    /**
     *
     * @brief Method returns current location unique identifier
     * @return current location unique identifier
     *
     */
    int getLocationId();

    /**
     * @cond
     */
    void commitChanges();

    void revertChanges();

    /**
     * @endcond
     *
     * @brief Method is used to change interval in seconds check for new version from server
     * Default: 300s
     * @param interval update interval in seconds
     *
     */
    void setLocationUpdateInterval(int interval);



}
