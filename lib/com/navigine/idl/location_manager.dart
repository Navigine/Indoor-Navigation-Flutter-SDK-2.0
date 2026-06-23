import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/location_listener.dart';

part 'location_manager.impl.dart';
/// Class is used for downloading and working with [Location].
/// Referenced from [NavigineSdk].
abstract class LocationManager implements Finalizable {

    /// Method is used to add [LocationListener] element
    /// which will notify about newly downloaded and set location.
    /// **Note:** Do not forget to remove listener if it is no longer needed!
    /// [listener] Corresponding [LocationListener] class.
    ///
    /// Example:
    /// ```dart
    /// // Add location listener
    /// _locationManager!.addLocationListener(this);
    /// ```
    void addLocationListener(LocationListener listener);

    /// Method is used for removing previously added [LocationListener] class element.
    /// [listener] Corresponding [LocationListener] class to remove.
    ///
    /// Example:
    /// ```dart
    /// // Remove location listener
    /// _locationManager!.removeLocationListener(this);
    /// ```
    void removeLocationListener(LocationListener listener);

    /// Method is used for setting current location, which will be downloaded from server or from storage, if it was downloaded before.
    /// Result will be handled by [LocationListener]
    /// [locationId] location id from CMS
    ///
    /// Example:
    /// ```dart
    /// // Set location ID to load
    /// _locationManager!.setLocationId(12345);
    /// ```
    void setLocationId(int locationId);

    /// Method returns current location unique identifier
    /// Returns current location unique identifier
    ///
    /// Example:
    /// ```dart
    /// // Get current location ID
    /// int currentLocationId = _locationManager!.getLocationId();
    /// print('Current location ID: $currentLocationId');
    /// ```
    int getLocationId();

    void commitChanges();

    void revertChanges();

    /// Method is used to change interval in seconds check for new version from server
    /// Default: 300s
    /// [interval] update interval in seconds
    ///
    /// Example:
    /// ```dart
    /// // Set location update interval (in seconds)
    /// _locationManager!.setLocationUpdateInterval(600); // 10 minutes
    /// ```
    void setLocationUpdateInterval(int interval);



}
