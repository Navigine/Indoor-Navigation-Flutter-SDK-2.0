import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

part 'signal_type.impl.dart';
/**
 * @file com/navigine/idl/signal_type.dart
 * @brief @copybrief SignalType
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_secondary_classes
 * @brief Enum defining types of signals used in measurements.
 *
 * Referenced from @see SignalMeasurement "SignalMeasurement".
 *
 */
enum SignalType {
    /**
     * @brief Wi-Fi signal type. <a href="https://en.wikipedia.org/wiki/Wi-Fi">Wi-Fi</a>.
     */
    WIFI,
    /**
     * @brief Bluetooth Low Energy (BLE) beacon signal type. <a href="https://en.wikipedia.org/wiki/Bluetooth_Low_Energy#BLE_Beacons">iBeacon</a>.
     */
    BEACON,
    /**
     * @brief Bluetooth signal type. <a href="https://en.wikipedia.org/wiki/Bluetooth">Bluetooth</a>.
     */
    BLUETOOTH,
    /**
     * @brief Eddystone beacon signal type. <a href="https://en.wikipedia.org/wiki/Eddystone_(Google)">Eddystone</a>.
     */
    EDDYSTONE,
    /**
     * @brief Wi-Fi Round-Trip Time signal type. <a href="https://en.wikipedia.org/wiki/Round-trip_delay#Wi-Fi_RTT">Wi-Fi_RTT</a>.
     */
    WIFI_RTT,
}
