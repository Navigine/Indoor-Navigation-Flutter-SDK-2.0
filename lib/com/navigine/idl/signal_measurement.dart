import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/signal_type.dart';

part 'signal_measurement.impl.dart';
/**
 * @file com/navigine/idl/signal_measurement.dart
 * @brief @copybrief SignalMeasurement
 */
class SignalMeasurement {
    /// @brief Default constructor
    SignalMeasurement(this.type, this.id, this.rssi, this.distance, this.time);
    SignalType type;
    String id;
    double rssi;
    double distance;
    int time;
}
