import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/navigine/idl/measurement_listener.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

part 'measurement_manager.impl.dart';
/// Class is used for managing measurement generators and notifying about sensor and signal measurements.
/// Referenced from [NavigineSdk].
abstract class MeasurementManager implements Finalizable {

    /// Method is used to add [MeasurementListener] class element
    /// which will notify about new sensor or signal measurements.
    /// **Note:** Do not forget to remove listener if it is no longer needed!
    /// [listener] Corresponding [MeasurementListener] class.
    ///
    /// Example:
    /// ```dart
    /// // Add measurement listener
    /// _measurementManager!.addMeasurementListener(_measurementListener!);
    /// print("Added measurement listener");
    /// ```
    void addMeasurementListener(MeasurementListener listener);

    /// Method is used for removing previously added [MeasurementListener] class element.
    /// [listener] Corresponding [MeasurementListener] class to remove.
    ///
    /// Example:
    /// ```dart
    /// // Remove measurement listener
    /// _measurementManager!.removeMeasurementListener(_measurementListener!);
    /// print("Removed measurement listener");
    /// ```
    void removeMeasurementListener(MeasurementListener listener);

    /// Sets the interval in milliseconds between measurement batches delivered to [MeasurementListener]. Default is 1000 ms. Values less than or equal to zero are treated as the default.
    /// [intervalMs] wait time in milliseconds before the next publish cycle
    ///
    /// Example:
    /// ```dart
    /// // Optional: interval between measurement batches sent to listeners (ms)
    /// _measurementManager?.setPublishIntervalMs(1000);
    /// ```
    void setPublishIntervalMs(int intervalMs);

    /// Method adds a beacon generator for simulating BLE beacon signals.
    /// [uuid] UUID of the beacon.
    /// [major] Major value of the beacon.
    /// [minor] Minor value of the beacon.
    /// [power] Transmission power of the beacon (dBm).
    /// [timeout] Duration of the generator in milliseconds.
    /// [rssiMin] Minimum RSSI value for the simulated signal.
    /// [rssiMax] Maximum RSSI value for the simulated signal.
    /// Returns Unique identifier of the created beacon generator.
    ///
    /// Example:
    /// ```dart
    /// // Add beacon generator
    /// String beaconId = _measurementManager!.addBeaconGenerator(
    ///  "12345678-1234-1234-1234-123456789012", // UUID
    ///  100, // major
    ///  200, // minor
    ///  -60, // power (dBm)
    ///  5000, // timeout (ms)
    ///  -80, // rssiMin
    ///  -40, // rssiMax
    /// );
    /// print("Added beacon generator with ID: $beaconId");
    /// ```
    String addBeaconGenerator(String uuid, int major, int minor, int power, int timeout, int rssiMin, int rssiMax);

    /// Method adds an Eddystone generator for simulating Eddystone beacon signals.
    /// [namespaceId] Namespace ID of the Eddystone beacon.
    /// [instanceId] Instance ID of the Eddystone beacon.
    /// [power] Transmission power of the beacon (dBm).
    /// [timeout] Duration of the generator in milliseconds.
    /// [rssiMin] Minimum RSSI value for the simulated signal.
    /// [rssiMax] Maximum RSSI value for the simulated signal.
    /// Returns Unique identifier of the created Eddystone generator.
    ///
    /// Example:
    /// ```dart
    /// // Add Eddystone generator
    /// String eddystoneId = _measurementManager!.addEddystoneGenerator(
    ///  "12345678901234567890", // namespaceId
    ///  "1234567890123456", // instanceId
    ///  -65, // power (dBm)
    ///  3000, // timeout (ms)
    ///  -85, // rssiMin
    ///  -45, // rssiMax
    /// );
    /// print("Added Eddystone generator with ID: $eddystoneId");
    /// ```
    String addEddystoneGenerator(String namespaceId, String instanceId, int power, int timeout, int rssiMin, int rssiMax);

    /// Method removes all BLE beacon generators.
    ///
    /// Example:
    /// ```dart
    /// // Remove all BLE generators
    /// _measurementManager!.removeBleGenerators();
    /// print("Removed all BLE generators");
    /// ```
    void removeBleGenerators();

    /// Method removes a specific BLE beacon generator by its identifier.
    /// [id] Unique identifier of the BLE generator to remove.
    ///
    /// Example:
    /// ```dart
    /// // Remove specific BLE generator
    /// _measurementManager!.removeBleGenerator(beaconId);
    /// print("Removed BLE generator: $beaconId");
    /// ```
    void removeBleGenerator(String id);

    /// Method adds a Wi-Fi generator for simulating Wi-Fi signals.
    /// [mac] MAC address of the Wi-Fi access point.
    /// [timeout] Duration of the generator in milliseconds.
    /// [rssiMin] Minimum RSSI value for the simulated signal.
    /// [rssiMax] Maximum RSSI value for the simulated signal.
    /// Returns Unique identifier of the created Wi-Fi generator.
    ///
    /// Example:
    /// ```dart
    /// // Add Wi-Fi generator
    /// String wifiId = _measurementManager!.addWifiGenerator(
    ///  "AA:BB:CC:DD:EE:FF", // MAC address
    ///  4000, // timeout (ms)
    ///  -90, // rssiMin
    ///  -50, // rssiMax
    /// );
    /// print("Added Wi-Fi generator with ID: $wifiId");
    /// ```
    String addWifiGenerator(String mac, int timeout, int rssiMin, int rssiMax);

    /// Method removes a specific Wi-Fi generator by its identifier.
    /// [id] Unique identifier of the Wi-Fi generator to remove.
    ///
    /// Example:
    /// ```dart
    /// // Remove specific Wi-Fi generator
    /// _measurementManager!.removeWifiGenerator(wifiId);
    /// print("Removed Wi-Fi generator: $wifiId");
    /// ```
    void removeWifiGenerator(String id);

    /// Method removes all Wi-Fi generators.
    ///
    /// Example:
    /// ```dart
    /// // Remove all Wi-Fi generators
    /// _measurementManager!.removeWifiGenerators();
    /// print("Removed all Wi-Fi generators");
    /// ```
    void removeWifiGenerators();

    /// Method adds a Wi-Fi RTT generator for simulating Wi-Fi Round-Trip Time signals.
    /// [mac] MAC address of the Wi-Fi access point.
    /// [timeout] Duration of the generator in milliseconds.
    /// [distMin] Minimum distance for the simulated signal (in meters).
    /// [distMax] Maximum distance for the simulated signal (in meters).
    /// [stdDevMin] Minimum standard deviation for the simulated signal.
    /// [stdDevMax] Maximum standard deviation for the simulated signal.
    /// [rssiMin] Minimum RSSI value for the simulated signal.
    /// [rssiMax] Maximum RSSI value for the simulated signal.
    /// Returns Unique identifier of the created Wi-Fi RTT generator.
    ///
    /// Example:
    /// ```dart
    /// // Add Wi-Fi RTT generator
    /// String wifiRttId = _measurementManager!.addWifiRttGenerator(
    ///  "11:22:33:44:55:66", // MAC address
    ///  6000, // timeout (ms)
    ///  1, // distMin (meters)
    ///  10, // distMax (meters)
    ///  0, // stdDevMin
    ///  2, // stdDevMax
    ///  -70, // rssiMin
    ///  -30, // rssiMax
    /// );
    /// print("Added Wi-Fi RTT generator with ID: $wifiRttId");
    /// ```
    String addWifiRttGenerator(String mac, int timeout, int distMin, int distMax, int stdDevMin, int stdDevMax, int rssiMin, int rssiMax);

    /// Method removes a specific Wi-Fi RTT generator by its identifier.
    /// [hash] Unique identifier of the Wi-Fi RTT generator to remove.
    ///
    /// Example:
    /// ```dart
    /// // Remove specific Wi-Fi RTT generator
    /// _measurementManager!.removeWifiRttGenerator(wifiRttId);
    /// print("Removed Wi-Fi RTT generator: $wifiRttId");
    /// ```
    void removeWifiRttGenerator(String hash);

    /// Method removes all Wi-Fi RTT generators.
    ///
    /// Example:
    /// ```dart
    /// // Remove all Wi-Fi RTT generators
    /// _measurementManager!.removeWifiRttGenerators();
    /// print("Removed all Wi-Fi RTT generators");
    /// ```
    void removeWifiRttGenerators();

    /// Method adds a location generator for simulating location measurements.
    /// [latMin] Minimum latitude for the simulated location.
    /// [latMax] Maximum latitude for the simulated location.
    /// [lonMin] Minimum longitude for the simulated location.
    /// [lonMax] Maximum longitude for the simulated location.
    /// [accMin] Minimum accuracy for the simulated location (in meters).
    /// [accMax] Maximum accuracy for the simulated location (in meters).
    /// [timeout] Duration of the generator in milliseconds.
    /// Returns Unique identifier of the created location generator.
    ///
    /// Example:
    /// ```dart
    /// // Add location generator
    /// String locationId = _measurementManager!.addLocationGenerator(
    ///  55.7558, // latMin
    ///  55.7559, // latMax
    ///  37.6176, // lonMin
    ///  37.6177, // lonMax
    ///  1.0, // accMin (meters)
    ///  5.0, // accMax (meters)
    ///  7000, // timeout (ms)
    /// );
    /// print("Added location generator with ID: $locationId");
    /// ```
    String addLocationGenerator(double latMin, double latMax, double lonMin, double lonMax, double accMin, double accMax, int timeout);

    /// Method removes a specific location generator by its identifier.
    /// [id] Unique identifier of the location generator to remove.
    ///
    /// Example:
    /// ```dart
    /// // Remove specific location generator
    /// _measurementManager!.removeLocationGenerator(locationId);
    /// print("Removed location generator: $locationId");
    /// ```
    void removeLocationGenerator(String id);

    /// Method removes all location generators.
    ///
    /// Example:
    /// ```dart
    /// // Remove all location generators
    /// _measurementManager!.removeLocationGenerators();
    /// print("Removed all location generators");
    /// ```
    void removeLocationGenerators();



}
