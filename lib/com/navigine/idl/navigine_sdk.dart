import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/async_route_manager.dart';
import 'package:navigine_sdk/com/navigine/idl/beacon_proximity_estimator.dart';
import 'package:navigine_sdk/com/navigine/idl/location_edit_manager.dart';
import 'package:navigine_sdk/com/navigine/idl/location_list_manager.dart';
import 'package:navigine_sdk/com/navigine/idl/location_manager.dart';
import 'package:navigine_sdk/com/navigine/idl/location_window.dart';
import 'package:navigine_sdk/com/navigine/idl/measurement_manager.dart';
import 'package:navigine_sdk/com/navigine/idl/navigation_manager.dart';
import 'package:navigine_sdk/com/navigine/idl/notification_manager.dart';
import 'package:navigine_sdk/com/navigine/idl/resource_manager.dart';
import 'package:navigine_sdk/com/navigine/idl/route_manager.dart';
import 'package:navigine_sdk/com/navigine/idl/zone_manager.dart';
import 'package:navigine_sdk/location_view.dart';
import 'package:navigine_sdk/platform_view.dart';

part 'navigine_sdk.impl.dart';
/**
 * @file com/navigine/idl/navigine_sdk.dart
 * @brief @copybrief NavigineSdk
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_sdk
 * @brief Provides access to all services in the SDK.
 *
 * Class contains a list of static functions for initializing library
 * and list of functions for getting access to the managers,
 * each of which will provide different opportunities for working with SDK
 *
 * @note SDK holds objects by weak references. You need
 * to have strong references to them somewhere in the client code.
 *
 */
abstract class NavigineSdk implements Finalizable {

    /**
     *
     * @brief Method initializes Navigation library and returns NavigineSdk instance.
     * @return instance of SDK
     *
     */
    static NavigineSdk getInstance() => $prototype.getInstance();

    /**
     *
     * @brief Method returns NavigineSdk SDK Version.
     * @return version of SDK
     *
     */
    static String getVersion() => $prototype.getVersion();

    /**
     *
     * @brief Method returns persistent device id.
     * @return persistent device id
     *
     */
    static String getDeviceId() => $prototype.getDeviceId();

    /**
     *
     * @brief Method returns current timestamp.
     * @return internal timestamp
     *
     */
    static int getRelativeTime() => $prototype.getRelativeTime();

    /**
     *
     * @brief Method is used to set `USER_HASH` from the user's profile in CMS
     * @param userHash auth token in format XXXX-XXXX-XXXX-XXXX
     *
     */
    void setUserHash(String userHash);

    /**
     *
     * @brief Method is used to set server url
     * @param server custom server url in format: `http[s]://example.com`
     *
     */
    void setServer(String server);

    /**
     *
     * @brief @see LocationManager "LocationManager" instance, which could be used for working with the @see Location "Location".
     * @return @see LocationManager "LocationManager" instance
     *
     */
    LocationManager getLocationManager();

    /**
     *
     * @brief @see NavigationManager "NavigationManager" instance, which could be used for working with the @see Position.
     * @param locationManager @see LocationManager "LocationManager" instance
     * @return @see NavigationManager "NavigationManager" instance
     *
     */
    NavigationManager getNavigationManager(LocationManager locationManager);

    /**
     *
     * @brief @see ZoneManager "ZoneManager" instance, which could be used for working with zones and detecting enter and leave events. @see Zone "Zone"
     * @param navigationManager @see NavigationManager "NavigationManager" instance
     * @return @see ZoneManager "ZoneManager" instance
     *
     */
    ZoneManager getZoneManager(NavigationManager navigationManager);

    /**
     *
     * @brief @see RouteManager "RouteManager" instance, which could be used for working making routes, setting target points. @see RoutePath "RoutePath"
     * @param locationManager @see LocationManager "LocationManager" instance
     * @param navigationManager @see NavigationManager "NavigationManager" instance
     * @return @see RouteManager "RouteManager" instance
     *
     */
    RouteManager getRouteManager(LocationManager locationManager, NavigationManager navigationManager);

    /**
     *
     * @brief @see AsyncRouteManager "AsyncRouteManager" instance, which could be used for working with routing sessions. @see RouteSession "RouteSession"
     * @param locationManager @see LocationManager "LocationManager" instance
     * @param navigationManager @see NavigationManager "NavigationManager" instance
     * @return @see AsyncRouteManager "AsyncRouteManager" instance
     *
     */
    AsyncRouteManager getAsyncRouteManager(LocationManager locationManager, NavigationManager navigationManager);

    /**
     *
     * @brief @see NotificationManager "NotificationManager" instance, which could be used for working with notifications when detecting beacons. @see Notification "Notification"
     * @param locationManager @see LocationManager "LocationManager" instance
     * @return @see NotificationManager "NotificationManager" instance
     *
     */
    NotificationManager getNotificationManager(LocationManager locationManager);

    /**
     * @cond
     *
     * Returns a manager that allows to manage resources
     * 1 - download and decode images
     * 2 - managing logs
     * @param locationManager @see LocationManager "LocationManager" instance
     * @return Resource manager instance
     *
     */
    ResourceManager getResourceManager(LocationManager locationManager);

    LocationEditManager getLocationEditManager(LocationManager locationManager);

    MeasurementManager getMeasurementManager(LocationManager locationManager);

    BeaconProximityEstimator getBeaconProximityEstimator(LocationManager locationManager);

    String getErrorDescription(int errorCode);

    LocationWindow createLocationWindow(PlatformView platformView);

    /**
     * @endcond
     *
     * Returns a manager that allows to manage locations list
     * @return Location list manager instance @see LocationListManager "LocationListManager"
     *
     */
    LocationListManager getLocationListManager();



    /// @nodoc
    @visibleForTesting
    static dynamic $prototype = NavigineSdk$Impl(Pointer<Void>.fromAddress(0));
}
