import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart' as weak_map;
import 'package:navigine_sdk/com/containers__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/navigine/idl/sensor_measurement.dart';
import 'package:navigine_sdk/com/navigine/idl/sensor_type.dart';
import 'package:navigine_sdk/com/navigine/idl/signal_measurement.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

part 'measurement_listener.impl.dart';
/// Class provides callbacks to be invoked when [MeasurementManager]
/// detects new sensor or signal measurements.
/// Referenced from [MeasurementManager].
/// **Note:** The callbacks are invoked in the UI thread.
abstract class MeasurementListener {

    /// Called when new sensor measurements are detected.
    /// [sensors] A map of sensor types to their corresponding [SensorMeasurement] values.
    ///
    /// Example:
    /// ```dart
    /// onSensorMeasurementDetected: (Map<SensorType, SensorMeasurement> sensors) {
    ///  print("Sensor measurements detected");
    ///  _demonstrateSensorMeasurements(sensors);
    /// },
    /// ```
    void onSensorMeasurementDetected(Map<SensorType, SensorMeasurement> sensors);

    /// Called when new signal measurements are detected.
    /// [signals] A map of signal identifiers to their corresponding [SignalMeasurement] values.
    ///
    /// Example:
    /// ```dart
    /// onSignalMeasurementDetected: (Map<String, SignalMeasurement> signals) {
    ///  print("Signal measurements detected");
    ///  _demonstrateSignalMeasurements(signals);
    /// },
    /// ```
    void onSignalMeasurementDetected(Map<String, SignalMeasurement> signals);



}
