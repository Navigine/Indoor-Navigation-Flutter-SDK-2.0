import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart' as weak_map;
import 'package:navigine_sdk/com/containers__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/location_info.dart';
import 'package:navigine_sdk/error.dart';

part 'location_list_listener.impl.dart';
/// Class provides a callback to be invoked when [LocationListManager]
/// class downloads list of available locations from server.
/// Referenced from [LocationListManager].
/// **Note:** The callback is invoked in the UI thread.
abstract class LocationListListener {

    /// Called when new list of available locations has been downloaded from server
    /// [locationInfos] dictionary of [LocationInfo]s which represents location id to location general info.
    ///
    /// Example:
    /// ```dart
    /// onLocationListLoaded: (Map<int, LocationInfo> locationInfos) {
    ///  print("Location list loaded");
    ///  _demonstrateLocationList(locationInfos);
    /// },
    /// ```
    void onLocationListLoaded(Map<int, LocationInfo> locationInfos);

    /// Called if unable to download list of available locations
    /// [error] handled error.
    ///
    /// Example:
    /// ```dart
    /// onLocationListFailed: (Error error) {
    ///  print("Location list failed: ${error.message}");
    ///  _demonstrateErrorHandling(error);
    /// },
    /// ```
    void onLocationListFailed(Error error);



}
