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
import 'package:navigine_sdk/com/navigine/idl/mqtt_session.dart';
import 'package:navigine_sdk/com/navigine/idl/navigation_manager.dart';
import 'package:navigine_sdk/com/navigine/idl/notification_manager.dart';
import 'package:navigine_sdk/com/navigine/idl/resource_manager.dart';
import 'package:navigine_sdk/com/navigine/idl/route_manager.dart';
import 'package:navigine_sdk/com/navigine/idl/storage_manager.dart';
import 'package:navigine_sdk/com/navigine/idl/user_location_layer.dart';
import 'package:navigine_sdk/com/navigine/idl/zone_manager.dart';
import 'package:navigine_sdk/location_view.dart';
import 'package:navigine_sdk/platform_view.dart';

part 'navigine_sdk.impl.dart';
/// Provides access to all services in the SDK.
/// Class contains a list of static functions for initializing library
/// and list of functions for getting access to the managers,
/// each of which will provide different opportunities for working with SDK
/// **Note:** SDK holds objects by weak references. You need
/// to have strong references to them somewhere in the client code.
abstract class NavigineSdk implements Finalizable {

    /// Method initializes Navigation library and returns NavigineSdk instance.
    /// Returns instance of SDK
    ///
    /// Example:
    /// ```dart
    /// // Get SDK instance
    /// _sdk = NavigineSdk.getInstance();
    /// ```
    static NavigineSdk getInstance() => $prototype.getInstance();

    /// Method returns NavigineSdk SDK Version.
    /// Returns version of SDK
    ///
    /// Example:
    /// ```dart
    /// // Get SDK version
    /// print('Navigine SDK Version: ${NavigineSdk.getVersion()}');
    /// ```
    static String getVersion() => $prototype.getVersion();

    /// Method returns persistent device id.
    /// Returns persistent device id
    ///
    /// Example:
    /// ```dart
    /// // Get device ID
    /// print('Device ID: ${NavigineSdk.getDeviceId()}');
    /// ```
    static String getDeviceId() => $prototype.getDeviceId();

    /// Method returns current User-Agent string.
    /// Returns User-Agent string
    static String getUserAgent() => $prototype.getUserAgent();

    /// Method returns current timestamp.
    /// Returns internal timestamp
    ///
    /// Example:
    /// ```dart
    /// // Get relative time
    /// print('Relative Time: ${NavigineSdk.getRelativeTime()}');
    /// ```
    static int getRelativeTime() => $prototype.getRelativeTime();

    /// Method is used to set `USER_HASH` from the user's profile in CMS
    /// [userHash] auth token in format XXXX-XXXX-XXXX-XXXX
    ///
    /// Example:
    /// ```dart
    /// // Set user hash (authorization token)
    /// _sdk?.setUserHash('XXXX-XXXX-XXXX-XXXX');
    /// ```
    void setUserHash(String userHash);

    /// Method is used to set server url
    /// [server] custom server url in format: `http[s]://example.com`
    ///
    /// Example:
    /// ```dart
    /// // Set server URL (optional)
    /// _sdk?.setServer('https://custom.navigine.com');
    /// ```
    void setServer(String server);

    /// Resets SDK to the initial connection state: default production server URL, empty user hash, and a new session propagated to managers (same effect on session-aware managers as changing server or user hash). Call from the UI thread.
    void reset();

    /// [LocationManager] instance, which could be used for working with the [Location].
    /// Returns [LocationManager] instance
    ///
    /// Example:
    /// ```dart
    /// // Get LocationManager for working with locations
    /// _locationManager = _sdk?.getLocationManager();
    /// if (_locationManager != null) {
    ///  print('LocationManager successfully initialized');
    /// }
    /// ```
    LocationManager getLocationManager();

    /// [NavigationManager] instance, which could be used for working with the @see Position.
    /// [locationManager] [LocationManager] instance
    /// Returns [NavigationManager] instance
    ///
    /// Example:
    /// ```dart
    /// // Get NavigationManager for navigation
    /// if (_locationManager != null) {
    ///  _navigationManager = _sdk?.getNavigationManager(_locationManager!);
    ///  if (_navigationManager != null) {
    ///    print('NavigationManager successfully initialized');
    ///  }
    /// }
    /// ```
    NavigationManager getNavigationManager(LocationManager locationManager);

    /// [ZoneManager] instance, which could be used for working with zones and detecting enter and leave events. [Zone]
    /// [navigationManager] [NavigationManager] instance
    /// Returns [ZoneManager] instance
    ///
    /// Example:
    /// ```dart
    /// // Get ZoneManager for working with zones
    /// if (_navigationManager != null) {
    ///  _zoneManager = _sdk?.getZoneManager(_navigationManager!);
    ///  if (_zoneManager != null) {
    ///    print('ZoneManager successfully initialized');
    ///  }
    /// }
    /// ```
    ZoneManager getZoneManager(NavigationManager navigationManager);

    /// [AsyncRouteManager] instance, which could be used for working with routing sessions. [RouteSession]
    /// [locationManager] [LocationManager] instance
    /// [navigationManager] [NavigationManager] instance
    /// Returns [AsyncRouteManager] instance
    ///
    /// Example:
    /// ```dart
    /// // Get AsyncRouteManager for async route operations
    /// if (_locationManager != null && _navigationManager != null) {
    ///  _asyncRouteManager = _sdk?.getAsyncRouteManager(
    ///    _locationManager!,
    ///    _navigationManager!,
    ///  );
    ///  if (_asyncRouteManager != null) {
    ///    print('AsyncRouteManager successfully initialized');
    ///  }
    /// }
    /// ```
    AsyncRouteManager getAsyncRouteManager(LocationManager locationManager, NavigationManager navigationManager);

    /// [NotificationManager] instance, which could be used for working with notifications when detecting beacons. [Notification]
    /// [locationManager] [LocationManager] instance
    /// Returns [NotificationManager] instance
    ///
    /// Example:
    /// ```dart
    /// // Get NotificationManager for notifications
    /// if (_locationManager != null) {
    ///  _notificationManager = _sdk?.getNotificationManager(_locationManager!);
    ///  if (_notificationManager != null) {
    ///    print('NotificationManager successfully initialized');
    ///  }
    /// }
    /// ```
    NotificationManager getNotificationManager(LocationManager locationManager);

    String getErrorDescription(int errorCode);

    LocationWindow createLocationWindow(PlatformView platformView);

    /// Returns a manager that allows to manage user storages
    /// Returns Storage manager instance [StorageManager]
    ///
    /// Example:
    /// ```dart
    /// // Get StorageManager for working with storages
    /// _storageManager = _sdk?.getStorageManager();
    /// if (_storageManager != null) {
    ///  print('StorageManager successfully initialized');
    /// }
    /// ```
    StorageManager getStorageManager();

    /// Create layer with the user location icon.
    UserLocationLayer getUserLocationLayer(LocationWindow locationWindow);

    /// [RouteManager] instance, which could be used for working making routes, setting target points. [RoutePath]
    /// [locationManager] [LocationManager] instance
    /// [navigationManager] [NavigationManager] instance
    /// Returns [RouteManager] instance
    ///
    /// Example:
    /// ```dart
    /// // Get RouteManager for building routes
    /// if (_locationManager != null && _navigationManager != null) {
    ///  _routeManager = _sdk?.getRouteManager(
    ///    _locationManager!,
    ///    _navigationManager!,
    ///  );
    ///  if (_routeManager != null) {
    ///    print('RouteManager successfully initialized');
    ///  }
    /// }
    /// ```
    RouteManager getRouteManager(LocationManager locationManager, NavigationManager navigationManager);

    /// [MeasurementManager] instance, which could be used for managing measurement generators and handling sensor and signal measurements.
    /// [locationManager] [LocationManager] instance
    /// Returns [MeasurementManager] instance
    ///
    /// Example:
    /// ```dart
    /// // Get MeasurementManager for measurements
    /// if (_locationManager != null) {
    ///  _measurementManager = _sdk?.getMeasurementManager(_locationManager!);
    ///  if (_measurementManager != null) {
    ///    print('MeasurementManager successfully initialized');
    ///  }
    /// }
    /// ```
    MeasurementManager getMeasurementManager(LocationManager locationManager);

    /// Returns a manager that allows to manage resources
    /// 1 - download and decode images
    /// 2 - managing logs
    /// [locationManager] [LocationManager] instance
    /// Returns Resource manager instance
    ResourceManager getResourceManager(LocationManager locationManager);

    LocationEditManager getLocationEditManager(LocationManager locationManager);

    BeaconProximityEstimator getBeaconProximityEstimator(LocationManager locationManager);

    /// [MqttSession] instance, which could be used for working with MQTT sessions.
    /// [navigationManager] [NavigationManager] instance
    /// Returns [MqttSession] instance
    ///
    /// Example:
    /// ```dart
    /// // Get MqttSession for publishing position data via MQTT
    /// if (_navigationManager != null) {
    ///  _mqttSession = _sdk?.getMqttSession(_navigationManager!);
    ///  if (_mqttSession != null) {
    ///    print('MqttSession successfully initialized');
    ///  }
    /// }
    /// ```
    MqttSession getMqttSession(NavigationManager navigationManager);

    /// Returns a manager that allows to manage locations list
    /// Returns Location list manager instance [LocationListManager]
    ///
    /// Example:
    /// ```dart
    /// // Get LocationListManager for location list operations
    /// _locationListManager = _sdk?.getLocationListManager();
    /// if (_locationListManager != null) {
    ///  print('LocationListManager successfully initialized');
    /// }
    /// ```
    LocationListManager getLocationListManager();



    /// @nodoc
    @visibleForTesting
    static dynamic $prototype = NavigineSdk$Impl(Pointer<Void>.fromAddress(0));
}
