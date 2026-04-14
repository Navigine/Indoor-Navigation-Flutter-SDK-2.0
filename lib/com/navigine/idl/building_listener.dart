import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/building.dart';

part 'building_listener.impl.dart';
/**
 * @file com/navigine/idl/building_listener.dart
 * @brief @copybrief BuildingListener
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 *
 * @brief Listener for outdoor scenario when camera focuses on a building or leaves it.
 *
 */
abstract class BuildingListener {

    /**
     * @brief Called when camera enters a building's bounding box.
     * @param activeBuilding The building that is now focused.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet location_window_building_example.dart dart_BuildingListener_onActiveBuildingFocused
     *
     */
    void onActiveBuildingFocused(Building activeBuilding);

    /**
     * @brief Called when camera leaves all buildings (no building bbox contains the camera).
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet location_window_building_example.dart dart_BuildingListener_onActiveBuildingLeft
     *
     */
    void onActiveBuildingLeft();

    /**
     * @brief Called when the active sublocation (floor) of the focused building changes.
     * @param activeSublocationId New active sublocation id.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet location_window_building_example.dart dart_BuildingListener_onActiveSublocationChanged
     *
     */
    void onActiveSublocationChanged(int activeSublocationId);



}
