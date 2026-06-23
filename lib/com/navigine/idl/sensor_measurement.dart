import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/sensor_type.dart';
import 'package:navigine_sdk/com/navigine/idl/vector3d.dart';

part 'sensor_measurement.impl.dart';
/// Structure representing a sensor measurement with type, values, and timestamp.
/// Referenced from [MeasurementListener].
class SensorMeasurement {
    /// Default constructor.
    SensorMeasurement(this.type, this.values, this.time);
    /// Type of the sensor
    ///
    /// Example:
    /// ```dart
    /// // Get sensor type
    /// SensorType type = measurement.type;
    /// print("Sensor type: $type");
    /// ```
    SensorType type;
    /// 3D vector containing sensor measurement values
    ///
    /// Example:
    /// ```dart
    /// // Get sensor values
    /// Vector3d values = measurement.values;
    /// print("Sensor values - X: ${values.x}, Y: ${values.y}, Z: ${values.z}");
    /// ```
    Vector3d values;
    /// Timestamp of the measurement in milliseconds
    ///
    /// Example:
    /// ```dart
    /// // Get measurement timestamp
    /// int time = measurement.time;
    /// print("Measurement time: $time ms");
    /// ```
    int time;
}
