import 'dart:ffi';
import 'package:ffi/ffi.dart';

part 'sensor_type.impl.dart';
/// Enum defining types of sensors used in measurements.
/// Referenced from [SensorMeasurement].
enum SensorType {
    /// Accelerometer sensor type. <a href="https://en.wikipedia.org/wiki/Accelerometer ">Accelerometer</a>.
    ACCELEROMETER,
    /// Magnetometer sensor type. <a href="https://en.wikipedia.org/wiki/Magnetometer">Magnetometer</a>.
    MAGNETOMETER,
    /// Gyroscope sensor type. <a href="https://en.wikipedia.org/wiki/Gyroscope">Gyroscope</a>.
    GYROSCOPE,
    /// Barometer sensor type. <a href="https://en.wikipedia.org/wiki/Barometer">Barometer</a>.
    BAROMETER,
    /// Location sensor type. <a href="https://en.wikipedia.org/wiki/Satellite_navigation">GNSS</a>.
    LOCATION,
    /// Orientation sensor type
    ORIENTATION,
    /// NMEA GNSS sentence metadata. [SensorMeasurement] values: x = sentence number, y = satellite count, z unused.
    NMEA,
    /// Odometer / wheel speed. Values: x = speed (m/s), y = accuracy if present else 0, z unused.
    ODOMETER,
    /// Raw GNSS vectors (pseudo-ranges, etc.) — summarized for the API. Values: x = pseudoRanges count, y = pseudoRangeRates count, z = satellitesPositions count.
    GNSS,
}
