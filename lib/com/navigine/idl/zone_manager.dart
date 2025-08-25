import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/zone_listener.dart';

part 'zone_manager.impl.dart';
/**
 * @file com/navigine/idl/zone_manager.dart
 * @brief @copybrief ZoneManager
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_managers
 * @brief Class is used for notifying about entering or leaving @see Zone "Zone"s.
 *
 * Referenced from @see NavigineSdk "NavigineSdk".
 */
abstract class ZoneManager implements Finalizable {

    /**
     *
     * @brief Method is used to add @see ZoneListener "ZoneListener" class element
     * which will notify entering or leaving @see Zone "Zone"s.
     * @note Do not forget to remove listener if it is no longer needed!
     * @param listener Сorresponding @see ZoneListener "ZoneListener" class.
     *
     *
     *
     * Dart code snippet:
     * @snippet zone_manager_example.dart dart_ZoneManager_addZoneListener
     *
     */
    void addZoneListener(ZoneListener listener);

    /**
     *
     * @brief Method is used for removing previously added @see ZoneListener "ZoneListener" class element.
     * @param listener Сorresponding @see ZoneListener "ZoneListener" class to remove.
     *
     *
     *
     * Dart code snippet:
     * @snippet zone_manager_example.dart dart_ZoneManager_removeZoneListener
     *
     */
    void removeZoneListener(ZoneListener listener);



}
