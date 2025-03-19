import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/measurement_listener.dart';

part 'measurement_manager.impl.dart';
/**
 * @file com/navigine/idl/measurement_manager.dart
 * @brief @copybrief MeasurementManager
 */
abstract class MeasurementManager implements Finalizable {

    void addMeasurementListener(MeasurementListener listener);

    void removeMeasurementListener(MeasurementListener listener);

    String addBeaconGenerator(String uuid, int major, int minor, int power, int timeout, int rssiMin, int rssiMax);

    String addEddystoneGenerator(String namespaceId, String instanceId, int power, int timeout, int rssiMin, int rssiMax);

    void removeBleGenerators();

    void removeBleGenerator(String id);

    String addWifiGenerator(String mac, int timeout, int rssiMin, int rssiMax);

    void removeWifiGenerator(String id);

    void removeWifiGenerators();

    String addWifiRttGenerator(String mac, int timeout, int distMin, int distMax, int stdDevMin, int stdDevMax, int rssiMin, int rssiMax);

    void removeWifiRttGenerator(String hash);

    void removeWifiRttGenerators();

    String addLocationGenerator(double latMin, double latMax, double lonMin, double lonMax, double accMin, double accMax, int timeout);

    void removeLocationGenerator(String id);

    void removeLocationGenerators();



}
