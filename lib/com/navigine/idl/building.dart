import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/sublocation.dart';

part 'building.impl.dart';
/**
 * @file com/navigine/idl/building.dart
 * @brief @copybrief Building
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 *
 * @brief Interface for a building with multiple floors (Sublocations).
 * Allows selecting the active floor directly via setActiveSublocationId.
 *
 */
abstract class Building implements Finalizable {

    /**
     *
     *
     *
     *Dart code snippet:
     *@snippet location_window_building_example.dart dart_Building_getSublocations
     *
     */
    List<Sublocation> getSublocations();

    /**
     *
     *
     *
     *Dart code snippet:
     *@snippet location_window_building_example.dart dart_Building_getActiveSublocationId
     *
     */
    int getActiveSublocationId();

    /**
     *
     *
     *
     *Dart code snippet:
     *@snippet location_window_building_example.dart dart_Building_setActiveSublocationId
     *
     */
    void setActiveSublocationId(int activeSublocationId);



}
