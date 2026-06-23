import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/containers__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/sublocation.dart';
import 'package:navigine_sdk/com/weak_interface_wrapper.dart' as weak_interface_wrapper;

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

    bool isValid();



}
