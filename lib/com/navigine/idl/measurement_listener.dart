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
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_listeners
 * @brief Class provides callbacks to be invoked when @see MeasurementManager "MeasurementManager"
 * detects new sensor or signal measurements.
 *
 * Referenced from @see MeasurementManager "MeasurementManager".
 *
 * @note The callbacks are invoked in the UI thread.
 */
abstract class MeasurementListener {

    /**
     *
     * @brief Called when new sensor measurements are detected.
     * @param sensors A map of sensor types to their corresponding @see SensorMeasurement "SensorMeasurement" values.
     *
     *
     *
     * Dart code snippet:
     * @snippet measurement_manager_example.dart dart_MeasurementListener_onSensorMeasurementDetected
     *
     */
    void onSensorMeasurementDetected(Map<SensorType, SensorMeasurement> sensors);

    /**
     *
     * @brief Called when new signal measurements are detected.
     * @param signals A map of signal identifiers to their corresponding @see SignalMeasurement "SignalMeasurement" values.
     *
     *
     *
     * Dart code snippet:
     * @snippet measurement_manager_example.dart dart_MeasurementListener_onSignalMeasurementDetected
     *
     */
    void onSignalMeasurementDetected(Map<String, SignalMeasurement> signals);



}
