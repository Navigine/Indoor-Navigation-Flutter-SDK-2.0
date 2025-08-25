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
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_managers
 * @brief Class is used for managing measurement generators and notifying about sensor and signal measurements.
 *
 * Referenced from @see NavigineSdk "NavigineSdk".
 */
abstract class MeasurementManager implements Finalizable {

    /**
     *
     * @brief Method is used to add @see MeasurementListener "MeasurementListener" class element
     * which will notify about new sensor or signal measurements.
     * @note Do not forget to remove listener if it is no longer needed!
     * @param listener Corresponding @see MeasurementListener "MeasurementListener" class.
     *
     *
     *
     * Dart code snippet:
     * @snippet measurement_manager_example.dart dart_MeasurementManager_addMeasurementListener
     *
     */
    void addMeasurementListener(MeasurementListener listener);

    /**
     *
     * @brief Method is used for removing previously added @see MeasurementListener "MeasurementListener" class element.
     * @param listener Corresponding @see MeasurementListener "MeasurementListener" class to remove.
     *
     *
     *
     * Dart code snippet:
     * @snippet measurement_manager_example.dart dart_MeasurementManager_removeMeasurementListener
     *
     */
    void removeMeasurementListener(MeasurementListener listener);

    /**
     *
     * @brief Method adds a beacon generator for simulating BLE beacon signals.
     * @param uuid UUID of the beacon.
     * @param major Major value of the beacon.
     * @param minor Minor value of the beacon.
     * @param power Transmission power of the beacon (dBm).
     * @param timeout Duration of the generator in milliseconds.
     * @param rssiMin Minimum RSSI value for the simulated signal.
     * @param rssiMax Maximum RSSI value for the simulated signal.
     * @return Unique identifier of the created beacon generator.
     *
     *
     *
     * Dart code snippet:
     * @snippet measurement_manager_example.dart dart_MeasurementManager_addBeaconGenerator
     *
     */
    String addBeaconGenerator(String uuid, int major, int minor, int power, int timeout, int rssiMin, int rssiMax);

    /**
     *
     * @brief Method adds an Eddystone generator for simulating Eddystone beacon signals.
     * @param namespaceId Namespace ID of the Eddystone beacon.
     * @param instanceId Instance ID of the Eddystone beacon.
     * @param power Transmission power of the beacon (dBm).
     * @param timeout Duration of the generator in milliseconds.
     * @param rssiMin Minimum RSSI value for the simulated signal.
     * @param rssiMax Maximum RSSI value for the simulated signal.
     * @return Unique identifier of the created Eddystone generator.
     *
     *
     *
     * Dart code snippet:
     * @snippet measurement_manager_example.dart dart_MeasurementManager_addEddystoneGenerator
     *
     */
    String addEddystoneGenerator(String namespaceId, String instanceId, int power, int timeout, int rssiMin, int rssiMax);

    /**
     *
     * @brief Method removes all BLE beacon generators.
     *
     *
     *
     * Dart code snippet:
     * @snippet measurement_manager_example.dart dart_MeasurementManager_removeBleGenerators
     *
     */
    void removeBleGenerators();

    /**
     *
     * @brief Method removes a specific BLE beacon generator by its identifier.
     * @param id Unique identifier of the BLE generator to remove.
     *
     *
     *
     * Dart code snippet:
     * @snippet measurement_manager_example.dart dart_MeasurementManager_removeBleGenerator
     *
     */
    void removeBleGenerator(String id);

    /**
     *
     * @brief Method adds a Wi-Fi generator for simulating Wi-Fi signals.
     * @param mac MAC address of the Wi-Fi access point.
     * @param timeout Duration of the generator in milliseconds.
     * @param rssiMin Minimum RSSI value for the simulated signal.
     * @param rssiMax Maximum RSSI value for the simulated signal.
     * @return Unique identifier of the created Wi-Fi generator.
     *
     *
     *
     * Dart code snippet:
     * @snippet measurement_manager_example.dart dart_MeasurementManager_addWifiGenerator
     *
     */
    String addWifiGenerator(String mac, int timeout, int rssiMin, int rssiMax);

    /**
     *
     * @brief Method removes a specific Wi-Fi generator by its identifier.
     * @param id Unique identifier of the Wi-Fi generator to remove.
     *
     *
     *
     * Dart code snippet:
     * @snippet measurement_manager_example.dart dart_MeasurementManager_removeWifiGenerator
     *
     */
    void removeWifiGenerator(String id);

    /**
     *
     * @brief Method removes all Wi-Fi generators.
     *
     *
     *
     * Dart code snippet:
     * @snippet measurement_manager_example.dart dart_MeasurementManager_removeWifiGenerators
     *
     */
    void removeWifiGenerators();

    /**
     *
     * @brief Method adds a Wi-Fi RTT generator for simulating Wi-Fi Round-Trip Time signals.
     * @param mac MAC address of the Wi-Fi access point.
     * @param timeout Duration of the generator in milliseconds.
     * @param distMin Minimum distance for the simulated signal (in meters).
     * @param distMax Maximum distance for the simulated signal (in meters).
     * @param stdDevMin Minimum standard deviation for the simulated signal.
     * @param stdDevMax Maximum standard deviation for the simulated signal.
     * @param rssiMin Minimum RSSI value for the simulated signal.
     * @param rssiMax Maximum RSSI value for the simulated signal.
     * @return Unique identifier of the created Wi-Fi RTT generator.
     *
     *
     *
     * Dart code snippet:
     * @snippet measurement_manager_example.dart dart_MeasurementManager_addWifiRttGenerator
     *
     */
    String addWifiRttGenerator(String mac, int timeout, int distMin, int distMax, int stdDevMin, int stdDevMax, int rssiMin, int rssiMax);

    /**
     *
     * @brief Method removes a specific Wi-Fi RTT generator by its identifier.
     * @param hash Unique identifier of the Wi-Fi RTT generator to remove.
     *
     *
     *
     * Dart code snippet:
     * @snippet measurement_manager_example.dart dart_MeasurementManager_removeWifiRttGenerator
     *
     */
    void removeWifiRttGenerator(String hash);

    /**
     *
     * @brief Method removes all Wi-Fi RTT generators.
     *
     *
     *
     * Dart code snippet:
     * @snippet measurement_manager_example.dart dart_MeasurementManager_removeWifiRttGenerators
     *
     */
    void removeWifiRttGenerators();

    /**
     *
     * @brief Method adds a location generator for simulating location measurements.
     * @param latMin Minimum latitude for the simulated location.
     * @param latMax Maximum latitude for the simulated location.
     * @param lonMin Minimum longitude for the simulated location.
     * @param lonMax Maximum longitude for the simulated location.
     * @param accMin Minimum accuracy for the simulated location (in meters).
     * @param accMax Maximum accuracy for the simulated location (in meters).
     * @param timeout Duration of the generator in milliseconds.
     * @return Unique identifier of the created location generator.
     *
     *
     *
     * Dart code snippet:
     * @snippet measurement_manager_example.dart dart_MeasurementManager_addLocationGenerator
     *
     */
    String addLocationGenerator(double latMin, double latMax, double lonMin, double lonMax, double accMin, double accMax, int timeout);

    /**
     *
     * @brief Method removes a specific location generator by its identifier.
     * @param id Unique identifier of the location generator to remove.
     *
     *
     *
     * Dart code snippet:
     * @snippet measurement_manager_example.dart dart_MeasurementManager_removeLocationGenerator
     *
     */
    void removeLocationGenerator(String id);

    /**
     *
     * @brief Method removes all location generators.
     *
     *
     *
     * Dart code snippet:
     * @snippet measurement_manager_example.dart dart_MeasurementManager_removeLocationGenerators
     *
     */
    void removeLocationGenerators();



}
