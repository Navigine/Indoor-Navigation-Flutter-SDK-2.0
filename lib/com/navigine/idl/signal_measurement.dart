import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/signal_type.dart';

part 'signal_measurement.impl.dart';
/// Structure representing a signal measurement with type, identifier, RSSI, distance, and timestamp.
/// Referenced from [MeasurementListener].
class SignalMeasurement {
    /// Default constructor.
    SignalMeasurement(this.type, this.id, this.rssi, this.distance, this.time);
    /// Type of the signal
    ///
    /// Example:
    /// ```dart
    /// // Get signal type
    /// SignalType type = measurement.type;
    /// print("Signal type: $type");
    /// ```
    SignalType type;
    /// Unique identifier of the signal (e.g., MAC address or UUID)
    ///
    /// Example:
    /// ```dart
    /// // Get signal identifier
    /// String id = measurement.id;
    /// print("Signal ID: $id");
    /// ```
    String id;
    /// Received Signal Strength Indicator (RSSI) in dBm
    ///
    /// Example:
    /// ```dart
    /// // Get RSSI value
    /// double rssi = measurement.rssi;
    /// print("Signal RSSI: $rssi dBm");
    /// ```
    double rssi;
    /// Estimated distance to the signal source in meters
    ///
    /// Example:
    /// ```dart
    /// // Get estimated distance
    /// double distance = measurement.distance;
    /// print("Signal distance: $distance meters");
    /// ```
    double distance;
    /// Timestamp of the measurement in milliseconds
    ///
    /// Example:
    /// ```dart
    /// // Get measurement timestamp
    /// int time = measurement.time;
    /// print("Signal measurement time: $time ms");
    /// ```
    int time;
}
