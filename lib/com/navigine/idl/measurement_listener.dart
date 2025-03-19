import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/sensor_measurement.dart';
import 'package:navigine_sdk/com/navigine/idl/sensor_type.dart';
import 'package:navigine_sdk/com/navigine/idl/signal_measurement.dart';

part 'measurement_listener.impl.dart';
/**
 * @file com/navigine/idl/measurement_listener.dart
 * @brief @copybrief MeasurementListener
 */
abstract class MeasurementListener {

    void onSensorMeasurementDetected(Map<SensorType, SensorMeasurement> sensors);

    void onSignalMeasurementDetected(Map<String, SignalMeasurement> signals);



}
