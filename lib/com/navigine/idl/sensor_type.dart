import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

enum SensorType {
    ACCELEROMETER,
    MAGNETOMETER,
    GYROSCOPE,
    BAROMETER,
    LOCATION,
    ORIENTATION,
}

// SensorType "private" section, not exported.

int navigine_sdk_flutter_SensorType_ToFfi(SensorType value) {
    switch (value) {
    case SensorType.ACCELEROMETER:
        return 0;
    case SensorType.MAGNETOMETER:
        return 1;
    case SensorType.GYROSCOPE:
        return 2;
    case SensorType.BAROMETER:
        return 3;
    case SensorType.LOCATION:
        return 4;
    case SensorType.ORIENTATION:
        return 5;
    default:
        throw StateError("Invalid enum value $value for SensorType enum.");
    }
}

SensorType navigine_sdk_flutter_SensorType_FromFfi(int handle) {
    switch (handle) {
    case 0:
        return SensorType.ACCELEROMETER;
    case 1:
        return SensorType.MAGNETOMETER;
    case 2:
        return SensorType.GYROSCOPE;
    case 3:
        return SensorType.BAROMETER;
    case 4:
        return SensorType.LOCATION;
    case 5:
        return SensorType.ORIENTATION;
    default:
        throw StateError("Invalid numeric value $handle for SensorType enum.");
    }
}

void navigine_sdk_flutter_SensorType_ReleaseFfiHandle(int handle) {}

final _navigine_sdk_flutter_SensorType_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint32),
    Pointer<Void> Function(int)
  >('navigine_sdk_flutter_SensorType_create_handle_nullable'));

final _navigine_sdk_flutter_SensorType_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_SensorType_release_handle_nullable'));

final _navigine_sdk_flutter_SensorType_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_SensorType_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_SensorType_ToFfiNullable(SensorType? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_SensorType_ToFfi(value);
    final result = _navigine_sdk_flutter_SensorType_CreateHandleNullable(_handle);
    navigine_sdk_flutter_SensorType_ReleaseFfiHandle(_handle);
    return result;
}

SensorType? navigine_sdk_flutter_SensorType_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_SensorType_GetValueNullable(handle);
    final result = navigine_sdk_flutter_SensorType_FromFfi(_handle);
    navigine_sdk_flutter_SensorType_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_SensorType_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_SensorType_ReleaseHandleNullable(handle);

// End of SensorType "private" section.
