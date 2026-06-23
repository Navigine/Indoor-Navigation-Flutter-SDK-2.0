import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart' as weak_map;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/location.dart';
import 'package:navigine_sdk/error.dart';

part 'location_listener.impl.dart';
/// Class provides a callback to be invoked when [LocationManager]
/// class downloads the location from server or load it from the storage.
/// Referenced from [LocationManager].
/// **Note:** The callback is invoked in the UI thread.
abstract class LocationListener {

    /// Called when new location version has been downloaded from server or load it from the storage
    /// [location] [Location] instance or nil if server url or `USER_HASH` was changed.
    ///
    /// Example:
    /// ```dart
    /// void onLocationLoaded(Location? location) {
    ///  print('Location loaded successfully');
    ///  _currentLocation = location;
    ///  if (location != null) {
    ///    demonstrateLocationUsage(location);
    ///  }
    /// }
    /// ```
    void onLocationLoaded(Location location);

    void onLocationUploaded(int locationId);

    /// Called if unable to download location version from CMS
    /// [locationId] location unique identifier in SMC.
    /// [error] handled error.
    ///
    /// Example:
    /// ```dart
    /// void onLocationFailed(int locationId, Object error) {
    ///  print('Failed to load location $locationId: $error');
    /// }
    /// ```
    void onLocationFailed(int locationId, Error error);



}
