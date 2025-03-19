import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/location_edit_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';

part 'location_edit_manager.impl.dart';
/**
 * @file com/navigine/idl/location_edit_manager.dart
 * @brief @copybrief LocationEditManager
 */
abstract class LocationEditManager implements Finalizable {

    void addBeacon(int subLocId, String uuid, int major, int minor, Point point, String name, int? power);

    void editBeacon(int subLocId, String uuid, int major, int minor, Point point, String name, int? power);

    void removeBeacon(int subLocId, String uuid, int major, int minor);

    void addEddystone(int subLocId, String namespaceId, String instanceId, Point point, String name, int? power);

    void editEddystone(int subLocId, String namespaceId, String instanceId, Point point, String name, int? power);

    void removeEddystone(int subLocId, String namespaceId, String instanceId);

    void addWifi(int subLocId, String mac, Point point, String name);

    void editWifi(int subLocId, String mac, Point point, String name);

    void removeWifi(int subLocId, String mac);

    void addWifiRtt();

    void editWifiRtt();

    void removeWifiRtt(int subLocId, String mac);

    void addLocationEditListener(LocationEditListener locationEditListener);

    void removeLocationEditListener(LocationEditListener locationEditListener);



}
