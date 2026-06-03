import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/building.dart';

part 'building_listener.impl.dart';
/// Listener for outdoor scenario when camera focuses on a building or leaves it.
abstract class BuildingListener {

    /// Called when camera enters a building's bounding box.
    /// [activeBuilding] The building that is now focused.
    ///
    /// Example:
    /// ```dart
    /// @override
    /// void onActiveBuildingFocused(Building activeBuilding) {
    ///  // [dart_Building_getSublocations]
    ///  final floors = activeBuilding.getSublocations();
    ///  print('Focused building, floor count: ${floors.length}');
    ///  // [dart_Building_getSublocations]
    ///  // [dart_Building_getActiveSublocationId]
    ///  final activeFloorId = activeBuilding.getActiveSublocationId();
    ///  print('Active sublocation id: $activeFloorId');
    ///  // [dart_Building_getActiveSublocationId]
    ///  // [dart_Building_setActiveSublocationId]
    ///  activeBuilding.setActiveSublocationId(activeFloorId);
    ///  // [dart_Building_setActiveSublocationId]
    /// }
    /// ```
    void onActiveBuildingFocused(Building activeBuilding);

    /// Called when camera leaves all buildings (no building bbox contains the camera).
    ///
    /// Example:
    /// ```dart
    /// @override
    /// void onActiveBuildingLeft() {
    ///  print('Camera left all building areas');
    /// }
    /// ```
    void onActiveBuildingLeft();

    /// Called when the active sublocation (floor) of the focused building changes.
    /// [activeSublocationId] New active sublocation id.
    ///
    /// Example:
    /// ```dart
    /// @override
    /// void onActiveSublocationChanged(int activeSublocationId) {
    ///  print('Active floor changed to sublocation id: $activeSublocationId');
    /// }
    /// ```
    void onActiveSublocationChanged(int activeSublocationId);



}
