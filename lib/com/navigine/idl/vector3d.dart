import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

part 'vector3d.impl.dart';
/**
 * @file com/navigine/idl/vector3d.dart
 * @brief @copybrief Vector3d
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_secondary_classes
 * @brief Structure representing a 3D vector for sensor measurements.
 *
 * Referenced from @see SensorMeasurement "SensorMeasurement".
 *
 */
class Vector3d {
    /// @brief Default constructor
    Vector3d(this.x, this.y, this.z);
    /**
     * @brief X-coordinate of the 3D vector
     */
    double x;
    /**
     * @brief Y-coordinate of the 3D vector
     */
    double y;
    /**
     * @brief Z-coordinate of the 3D vector
     */
    double z;
}
