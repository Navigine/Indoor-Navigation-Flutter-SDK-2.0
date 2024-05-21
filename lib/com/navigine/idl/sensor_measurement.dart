import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/sensor_type.dart';
import 'package:navigine_sdk/com/navigine/idl/vector3d.dart';

class SensorMeasurement {
    SensorType type;
    Vector3d values;
    int time;
    SensorMeasurement(this.type, this.values, this.time);
}

// SensorMeasurement "private" section, not exported.

final _navigine_sdk_flutter_SensorMeasurement_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint32, Pointer<Void>, Int64),
    Pointer<Void> Function(int, Pointer<Void>, int)
  >('navigine_sdk_flutter_SensorMeasurement_create_handle'));

final _navigine_sdk_flutter_SensorMeasurement_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_SensorMeasurement_release_handle'));

final _navigine_sdk_flutter_SensorMeasurement_GetFieldtype = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_SensorMeasurement_get_field_type'));

final _navigine_sdk_flutter_SensorMeasurement_GetFieldvalues = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_SensorMeasurement_get_field_values'));

final _navigine_sdk_flutter_SensorMeasurement_GetFieldtime = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int64 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_SensorMeasurement_get_field_time'));


Pointer<Void> navigine_sdk_flutter_SensorMeasurement_ToFfi(SensorMeasurement value) {
    final _typeHandle = navigine_sdk_flutter_SensorType_ToFfi(value.type);
    final _valuesHandle = navigine_sdk_flutter_Vector3d_ToFfi(value.values);
    final _timeHandle = navigine_sdk_flutter_int_ToFfi(value.time);
    final _result = _navigine_sdk_flutter_SensorMeasurement_CreateHandle(_typeHandle, _valuesHandle, _timeHandle);
    navigine_sdk_flutter_SensorType_ReleaseFfiHandle(_typeHandle);
    navigine_sdk_flutter_Vector3d_ReleaseFfiHandle(_valuesHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_timeHandle);
    return _result;
}

SensorMeasurement navigine_sdk_flutter_SensorMeasurement_FromFfi(Pointer<Void> handle) {
    final _typeHandle = _navigine_sdk_flutter_SensorMeasurement_GetFieldtype(handle);
    final _valuesHandle = _navigine_sdk_flutter_SensorMeasurement_GetFieldvalues(handle);
    final _timeHandle = _navigine_sdk_flutter_SensorMeasurement_GetFieldtime(handle);
    try  {
        return SensorMeasurement(
          navigine_sdk_flutter_SensorType_FromFfi(_typeHandle),
          navigine_sdk_flutter_Vector3d_FromFfi(_valuesHandle),
          navigine_sdk_flutter_int_FromFfi(_timeHandle),
        );
    }
    finally  {
          navigine_sdk_flutter_SensorType_ReleaseFfiHandle(_typeHandle);
          navigine_sdk_flutter_Vector3d_ReleaseFfiHandle(_valuesHandle);
          navigine_sdk_flutter_int_ReleaseFfiHandle(_timeHandle);
    }
}

void navigine_sdk_flutter_SensorMeasurement_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_SensorMeasurement_ReleaseHandle(handle);

final _navigine_sdk_flutter_SensorMeasurement_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_SensorMeasurement_create_handle_nullable'));

final _navigine_sdk_flutter_SensorMeasurement_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_SensorMeasurement_release_handle_nullable'));

final _navigine_sdk_flutter_SensorMeasurement_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_SensorMeasurement_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_SensorMeasurement_ToFfiNullable(SensorMeasurement? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_SensorMeasurement_ToFfi(value);
    final result = _navigine_sdk_flutter_SensorMeasurement_CreateHandleNullable(_handle);
    navigine_sdk_flutter_SensorMeasurement_ReleaseFfiHandle(_handle);
    return result;
}

SensorMeasurement? navigine_sdk_flutter_SensorMeasurement_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_SensorMeasurement_GetValueNullable(handle);
    final result = navigine_sdk_flutter_SensorMeasurement_FromFfi(_handle);
    navigine_sdk_flutter_SensorMeasurement_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_SensorMeasurement_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_SensorMeasurement_ReleaseHandleNullable(handle);
