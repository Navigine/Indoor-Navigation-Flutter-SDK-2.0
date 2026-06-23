import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

part 'vector3d.impl.dart';
/// Structure representing a 3D vector for sensor measurements.
/// Referenced from [SensorMeasurement].
class Vector3d {
    /// Default constructor.
    Vector3d(this.x, this.y, this.z);
    /// X-coordinate of the 3D vector
    double x;
    /// Y-coordinate of the 3D vector
    double y;
    /// Z-coordinate of the 3D vector
    double z;
}
