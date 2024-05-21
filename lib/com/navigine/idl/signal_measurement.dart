import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/signal_type.dart';

class SignalMeasurement {
    SignalType type;
    String id;
    double rssi;
    double distance;
    int time;
    SignalMeasurement(this.type, this.id, this.rssi, this.distance, this.time);
}

// SignalMeasurement "private" section, not exported.

final _navigine_sdk_flutter_SignalMeasurement_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint32, Pointer<Void>, Float, Float, Int64),
    Pointer<Void> Function(int, Pointer<Void>, double, double, int)
  >('navigine_sdk_flutter_SignalMeasurement_create_handle'));

final _navigine_sdk_flutter_SignalMeasurement_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_SignalMeasurement_release_handle'));

final _navigine_sdk_flutter_SignalMeasurement_GetFieldtype = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_SignalMeasurement_get_field_type'));

final _navigine_sdk_flutter_SignalMeasurement_GetFieldid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_SignalMeasurement_get_field_id'));

final _navigine_sdk_flutter_SignalMeasurement_GetFieldrssi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Float Function(Pointer<Void>),
    double Function(Pointer<Void>)
  >('navigine_sdk_flutter_SignalMeasurement_get_field_rssi'));

final _navigine_sdk_flutter_SignalMeasurement_GetFielddistance = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Float Function(Pointer<Void>),
    double Function(Pointer<Void>)
  >('navigine_sdk_flutter_SignalMeasurement_get_field_distance'));

final _navigine_sdk_flutter_SignalMeasurement_GetFieldtime = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int64 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_SignalMeasurement_get_field_time'));


Pointer<Void> navigine_sdk_flutter_SignalMeasurement_ToFfi(SignalMeasurement value) {
    final _typeHandle = navigine_sdk_flutter_SignalType_ToFfi(value.type);
    final _idHandle = navigine_sdk_flutter_String_ToFfi(value.id);
    final _rssiHandle = navigine_sdk_flutter_double_ToFfi(value.rssi);
    final _distanceHandle = navigine_sdk_flutter_double_ToFfi(value.distance);
    final _timeHandle = navigine_sdk_flutter_int_ToFfi(value.time);
    final _result = _navigine_sdk_flutter_SignalMeasurement_CreateHandle(_typeHandle, _idHandle, _rssiHandle, _distanceHandle, _timeHandle);
    navigine_sdk_flutter_SignalType_ReleaseFfiHandle(_typeHandle);
    navigine_sdk_flutter_String_ReleaseFfiHandle(_idHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandle(_rssiHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandle(_distanceHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_timeHandle);
    return _result;
}

SignalMeasurement navigine_sdk_flutter_SignalMeasurement_FromFfi(Pointer<Void> handle) {
    final _typeHandle = _navigine_sdk_flutter_SignalMeasurement_GetFieldtype(handle);
    final _idHandle = _navigine_sdk_flutter_SignalMeasurement_GetFieldid(handle);
    final _rssiHandle = _navigine_sdk_flutter_SignalMeasurement_GetFieldrssi(handle);
    final _distanceHandle = _navigine_sdk_flutter_SignalMeasurement_GetFielddistance(handle);
    final _timeHandle = _navigine_sdk_flutter_SignalMeasurement_GetFieldtime(handle);
    try  {
        return SignalMeasurement(
          navigine_sdk_flutter_SignalType_FromFfi(_typeHandle),
          navigine_sdk_flutter_String_FromFfi(_idHandle),
          navigine_sdk_flutter_double_FromFfi(_rssiHandle),
          navigine_sdk_flutter_double_FromFfi(_distanceHandle),
          navigine_sdk_flutter_int_FromFfi(_timeHandle),
        );
    }
    finally  {
          navigine_sdk_flutter_SignalType_ReleaseFfiHandle(_typeHandle);
          navigine_sdk_flutter_String_ReleaseFfiHandle(_idHandle);
          navigine_sdk_flutter_double_ReleaseFfiHandle(_rssiHandle);
          navigine_sdk_flutter_double_ReleaseFfiHandle(_distanceHandle);
          navigine_sdk_flutter_int_ReleaseFfiHandle(_timeHandle);
    }
}

void navigine_sdk_flutter_SignalMeasurement_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_SignalMeasurement_ReleaseHandle(handle);

final _navigine_sdk_flutter_SignalMeasurement_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_SignalMeasurement_create_handle_nullable'));

final _navigine_sdk_flutter_SignalMeasurement_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_SignalMeasurement_release_handle_nullable'));

final _navigine_sdk_flutter_SignalMeasurement_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_SignalMeasurement_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_SignalMeasurement_ToFfiNullable(SignalMeasurement? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_SignalMeasurement_ToFfi(value);
    final result = _navigine_sdk_flutter_SignalMeasurement_CreateHandleNullable(_handle);
    navigine_sdk_flutter_SignalMeasurement_ReleaseFfiHandle(_handle);
    return result;
}

SignalMeasurement? navigine_sdk_flutter_SignalMeasurement_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_SignalMeasurement_GetValueNullable(handle);
    final result = navigine_sdk_flutter_SignalMeasurement_FromFfi(_handle);
    navigine_sdk_flutter_SignalMeasurement_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_SignalMeasurement_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_SignalMeasurement_ReleaseHandleNullable(handle);
