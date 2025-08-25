import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/location_info.dart';
import 'package:navigine_sdk/com/navigine/idl/location_list_listener.dart';

part 'location_list_manager.impl.dart';
/**
 * @file com/navigine/idl/location_list_manager.dart
 * @brief @copybrief LocationListManager
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_managers
 * @brief Class is used for downloading locations list from the server and providing it to the user.
 *
 * Referenced from @see NavigineSdk "NavigineSdk".
 */
abstract class LocationListManager implements Finalizable {

    /**
     *
     * @brief Method is used to add @see LocationListListener "LocationListListener" element
     * which will notify about newly downloaded list of available locations.
     * @note Do not forget to remove listener if it is no longer needed!
     * @param listener Сorresponding @see LocationListListener "LocationListListener" class.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_list_manager_example.dart dart_LocationListManager_addLocationListListener
     *
     */
    void addLocationListListener(LocationListListener listener);

    /**
     *
     * @brief Method is used for removing previously added @see LocationListListener "LocationListListener" class element.
     * @param listener Сorresponding @see LocationListListener "LocationListListener" class to remove.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_list_manager_example.dart dart_LocationListManager_removeLocationListListener
     *
     */
    void removeLocationListListener(LocationListListener listener);

    /**
     *
     * @brief Method is used to force reload location list.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_list_manager_example.dart dart_LocationListManager_updateLocationList
     *
     */
    void updateLocationList();

    /**
     *
     * @brief Method is used to get current location list @see LocationInfo "LocationInfo".
     * @return dictionary {location_id -> location_info}
     *
     *
     *
     * Dart code snippet:
     * @snippet location_list_manager_example.dart dart_LocationListManager_getLocationList
     *
     */
    Map<int, LocationInfo> getLocationList();



}
