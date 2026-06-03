import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

part 'signal_type.impl.dart';
/// Enum defining types of signals used in measurements.
/// Referenced from [SignalMeasurement].
enum SignalType {
    /// Wi-Fi signal type. <a href="https://en.wikipedia.org/wiki/Wi-Fi">Wi-Fi</a>.
    WIFI,
    /// Bluetooth Low Energy (BLE) beacon signal type. <a href="https://en.wikipedia.org/wiki/Bluetooth_Low_Energy#BLE_Beacons">iBeacon</a>.
    BEACON,
    /// Bluetooth signal type. <a href="https://en.wikipedia.org/wiki/Bluetooth">Bluetooth</a>.
    BLUETOOTH,
    /// Eddystone beacon signal type. <a href="https://en.wikipedia.org/wiki/Eddystone_(Google)">Eddystone</a>.
    EDDYSTONE,
    /// Wi-Fi Round-Trip Time signal type. <a href="https://en.wikipedia.org/wiki/Round-trip_delay#Wi-Fi_RTT">Wi-Fi_RTT</a>.
    WIFI_RTT,
}
