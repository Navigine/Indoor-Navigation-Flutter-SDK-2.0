import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/containers__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/location_info.dart';
import 'package:navigine_sdk/com/navigine/idl/location_list_listener.dart';

part 'location_list_manager.impl.dart';
/// Class is used for downloading locations list from the server and providing it to the user.
/// Referenced from [NavigineSdk].
abstract class LocationListManager implements Finalizable {

    /// Method is used to add [LocationListListener] element
    /// which will notify about newly downloaded list of available locations.
    /// **Note:** Do not forget to remove listener if it is no longer needed!
    /// [listener] Corresponding [LocationListListener] class.
    ///
    /// Example:
    /// ```dart
    /// // Add location list listener
    /// _locationListManager!.addLocationListListener(_locationListListener!);
    /// print("Added location list listener");
    /// ```
    void addLocationListListener(LocationListListener listener);

    /// Method is used for removing previously added [LocationListListener] class element.
    /// [listener] Corresponding [LocationListListener] class to remove.
    ///
    /// Example:
    /// ```dart
    /// // Remove location list listener
    /// _locationListManager!.removeLocationListListener(_locationListListener!);
    /// print("Removed location list listener");
    /// ```
    void removeLocationListListener(LocationListListener listener);

    /// Method is used to force reload location list.
    ///
    /// Example:
    /// ```dart
    /// // Force reload location list
    /// _locationListManager!.updateLocationList();
    /// print("Requested location list update");
    /// ```
    void updateLocationList();

    /// Method is used to get current location list [LocationInfo].
    /// Returns dictionary {location_id -> location_info}
    ///
    /// Example:
    /// ```dart
    /// // Get current location list
    /// Map<int, LocationInfo> currentLocationList = _locationListManager!.getLocationList();
    /// print("Current location list contains ${currentLocationList.length} locations");
    /// _demonstrateLocationList(currentLocationList);
    /// ```
    Map<int, LocationInfo> getLocationList();



}
