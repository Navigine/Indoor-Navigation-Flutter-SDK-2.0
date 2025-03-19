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
class SensorMeasurement {
    /// @brief Default constructor
    SensorMeasurement(this.type, this.values, this.time);
    SensorType type;
    Vector3d values;
    int time;
}
