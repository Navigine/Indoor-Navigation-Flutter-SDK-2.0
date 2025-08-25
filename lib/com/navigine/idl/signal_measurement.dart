import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/signal_type.dart';

part 'signal_measurement.impl.dart';
/**
 * @file com/navigine/idl/signal_measurement.dart
 * @brief @copybrief SignalMeasurement
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_secondary_classes
 * @brief Structure representing a signal measurement with type, identifier, RSSI, distance, and timestamp.
 *
 * Referenced from @see MeasurementListener "MeasurementListener".
 *
 */
class SignalMeasurement {
    /// @brief Default constructor
    SignalMeasurement(this.type, this.id, this.rssi, this.distance, this.time);
    /**
     * @brief Type of the signal
     *
     *
     *
     * Dart code snippet:
     * @snippet measurement_manager_example.dart dart_SignalMeasurement_getType
     *
     */
    SignalType type;
    /**
     * @brief Unique identifier of the signal (e.g., MAC address or UUID)
     *
     *
     *
     * Dart code snippet:
     * @snippet measurement_manager_example.dart dart_SignalMeasurement_getId
     *
     */
    String id;
    /**
     * @brief Received Signal Strength Indicator (RSSI) in dBm
     *
     *
     *
     * Dart code snippet:
     * @snippet measurement_manager_example.dart dart_SignalMeasurement_getRssi
     *
     */
    double rssi;
    /**
     * @brief Estimated distance to the signal source in meters
     *
     *
     *
     * Dart code snippet:
     * @snippet measurement_manager_example.dart dart_SignalMeasurement_getDistance
     *
     */
    double distance;
    /**
     * @brief Timestamp of the measurement in milliseconds
     *
     *
     *
     * Dart code snippet:
     * @snippet measurement_manager_example.dart dart_SignalMeasurement_getTime
     *
     */
    int time;
}
