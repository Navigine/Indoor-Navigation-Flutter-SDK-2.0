import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/sublocation.dart';

part 'building.impl.dart';
/// Interface for a building with multiple floors (Sublocations).
/// Allows selecting the active floor directly via setActiveSublocationId.
abstract class Building implements Finalizable {

    ///
    /// Example:
    /// ```dart
    /// final floors = activeBuilding.getSublocations();
    /// print('Focused building, floor count: ${floors.length}');
    /// ```
    List<Sublocation> getSublocations();

    ///
    /// Example:
    /// ```dart
    /// final activeFloorId = activeBuilding.getActiveSublocationId();
    /// print('Active sublocation id: $activeFloorId');
    /// ```
    int getActiveSublocationId();

    ///
    /// Example:
    /// ```dart
    /// activeBuilding.setActiveSublocationId(activeFloorId);
    /// ```
    void setActiveSublocationId(int activeSublocationId);



}
