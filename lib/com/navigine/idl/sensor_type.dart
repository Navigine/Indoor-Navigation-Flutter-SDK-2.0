import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

part 'sensor_type.impl.dart';
/**
 * @file com/navigine/idl/sensor_type.dart
 * @brief @copybrief SensorType
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_secondary_classes
 * @brief Enum defining types of sensors used in measurements.
 *
 * Referenced from @see SensorMeasurement "SensorMeasurement".
 *
 */
enum SensorType {
    /**
     * @brief Accelerometer sensor type. <a href="https://en.wikipedia.org/wiki/Accelerometer ">Accelerometer</a>.
     */
    ACCELEROMETER,
    /**
     * @brief Magnetometer sensor type. <a href="https://en.wikipedia.org/wiki/Magnetometer">Magnetometer</a>.
     */
    MAGNETOMETER,
    /**
     * @brief Gyroscope sensor type. <a href="https://en.wikipedia.org/wiki/Gyroscope">Gyroscope</a>.
     */
    GYROSCOPE,
    /**
     * @brief Barometer sensor type. <a href="https://en.wikipedia.org/wiki/Barometer">Barometer</a>.
     */
    BAROMETER,
    /**
     * @brief Location sensor type. <a href="https://en.wikipedia.org/wiki/Satellite_navigation">GNSS</a>.
     */
    LOCATION,
    /**
     * @brief Orientation sensor type
     */
    ORIENTATION,
    /**
     * @brief NMEA GNSS sentence metadata. @see SensorMeasurement "SensorMeasurement" values: x = sentence number, y = satellite count, z unused.
     */
    NMEA,
    /**
     * @brief Odometer / wheel speed. Values: x = speed (m/s), y = accuracy if present else 0, z unused.
     */
    ODOMETER,
    /**
     * @brief Raw GNSS vectors (pseudo-ranges, etc.) — summarized for the API. Values: x = pseudoRanges count, y = pseudoRangeRates count, z = satellitesPositions count.
     */
    GNSS,
}
