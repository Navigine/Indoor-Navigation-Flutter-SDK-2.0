import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/sensor_type.dart';
import 'package:navigine_sdk/com/navigine/idl/vector3d.dart';

part 'sensor_measurement.impl.dart';
/**
 * @file com/navigine/idl/sensor_measurement.dart
 * @brief @copybrief SensorMeasurement
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_secondary_classes
 * @brief Structure representing a sensor measurement with type, values, and timestamp.
 *
 * Referenced from @see MeasurementListener "MeasurementListener".
 *
 */
class SensorMeasurement {
    /// @brief Default constructor
    SensorMeasurement(this.type, this.values, this.time);
    /**
     * @brief Type of the sensor
     *
     *
     *
     * Dart code snippet:
     * @snippet measurement_manager_example.dart dart_SensorMeasurement_getType
     *
     */
    SensorType type;
    /**
     * @brief 3D vector containing sensor measurement values
     *
     *
     *
     * Dart code snippet:
     * @snippet measurement_manager_example.dart dart_SensorMeasurement_getValues
     *
     */
    Vector3d values;
    /**
     * @brief Timestamp of the measurement in milliseconds
     *
     *
     *
     * Dart code snippet:
     * @snippet measurement_manager_example.dart dart_SensorMeasurement_getTime
     *
     */
    int time;
}
