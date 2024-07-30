import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

class BeaconProximityEntry {
    BeaconProximityEntry(this.major, this.minor, this.uuid, this.rssi, this.frequency, this.quality, this.distance);
    int major;
    int minor;
    String uuid;
    double rssi;
    double frequency;
    double quality;
    double? distance;
}

// BeaconProximityEntry "private" section, not exported.

final _navigine_sdk_flutter_BeaconProximityEntry_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Int32, Int32, Pointer<Void>, Float, Float, Float, Pointer<Void>),
    Pointer<Void> Function(int, int, Pointer<Void>, double, double, double, Pointer<Void>)
  >('navigine_sdk_flutter_BeaconProximityEntry_create_handle'));

final _navigine_sdk_flutter_BeaconProximityEntry_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_BeaconProximityEntry_release_handle'));

final _navigine_sdk_flutter_BeaconProximityEntry_GetFieldmajor = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_BeaconProximityEntry_get_field_major'));

final _navigine_sdk_flutter_BeaconProximityEntry_GetFieldminor = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_BeaconProximityEntry_get_field_minor'));

final _navigine_sdk_flutter_BeaconProximityEntry_GetFielduuid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_BeaconProximityEntry_get_field_uuid'));

final _navigine_sdk_flutter_BeaconProximityEntry_GetFieldrssi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Float Function(Pointer<Void>),
    double Function(Pointer<Void>)
  >('navigine_sdk_flutter_BeaconProximityEntry_get_field_rssi'));

final _navigine_sdk_flutter_BeaconProximityEntry_GetFieldfrequency = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Float Function(Pointer<Void>),
    double Function(Pointer<Void>)
  >('navigine_sdk_flutter_BeaconProximityEntry_get_field_frequency'));

final _navigine_sdk_flutter_BeaconProximityEntry_GetFieldquality = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Float Function(Pointer<Void>),
    double Function(Pointer<Void>)
  >('navigine_sdk_flutter_BeaconProximityEntry_get_field_quality'));

final _navigine_sdk_flutter_BeaconProximityEntry_GetFielddistance = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_BeaconProximityEntry_get_field_distance'));


Pointer<Void> navigine_sdk_flutter_BeaconProximityEntry_ToFfi(BeaconProximityEntry value) {
    final _majorHandle = navigine_sdk_flutter_int_ToFfi(value.major);
    final _minorHandle = navigine_sdk_flutter_int_ToFfi(value.minor);
    final _uuidHandle = navigine_sdk_flutter_String_ToFfi(value.uuid);
    final _rssiHandle = navigine_sdk_flutter_double_ToFfi(value.rssi);
    final _frequencyHandle = navigine_sdk_flutter_double_ToFfi(value.frequency);
    final _qualityHandle = navigine_sdk_flutter_double_ToFfi(value.quality);
    final _distanceHandle = navigine_sdk_flutter_double_ToFfiNullable(value.distance);
    final _result = _navigine_sdk_flutter_BeaconProximityEntry_CreateHandle(_majorHandle, _minorHandle, _uuidHandle, _rssiHandle, _frequencyHandle, _qualityHandle, _distanceHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_majorHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_minorHandle);
    navigine_sdk_flutter_String_ReleaseFfiHandle(_uuidHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandle(_rssiHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandle(_frequencyHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandle(_qualityHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandleNullable(_distanceHandle);
    return _result;
}

BeaconProximityEntry navigine_sdk_flutter_BeaconProximityEntry_FromFfi(Pointer<Void> handle) {
    final _majorHandle = _navigine_sdk_flutter_BeaconProximityEntry_GetFieldmajor(handle);
    final _minorHandle = _navigine_sdk_flutter_BeaconProximityEntry_GetFieldminor(handle);
    final _uuidHandle = _navigine_sdk_flutter_BeaconProximityEntry_GetFielduuid(handle);
    final _rssiHandle = _navigine_sdk_flutter_BeaconProximityEntry_GetFieldrssi(handle);
    final _frequencyHandle = _navigine_sdk_flutter_BeaconProximityEntry_GetFieldfrequency(handle);
    final _qualityHandle = _navigine_sdk_flutter_BeaconProximityEntry_GetFieldquality(handle);
    final _distanceHandle = _navigine_sdk_flutter_BeaconProximityEntry_GetFielddistance(handle);
    try  {
        return BeaconProximityEntry(
          navigine_sdk_flutter_int_FromFfi(_majorHandle),
          navigine_sdk_flutter_int_FromFfi(_minorHandle),
          navigine_sdk_flutter_String_FromFfi(_uuidHandle),
          navigine_sdk_flutter_double_FromFfi(_rssiHandle),
          navigine_sdk_flutter_double_FromFfi(_frequencyHandle),
          navigine_sdk_flutter_double_FromFfi(_qualityHandle),
          navigine_sdk_flutter_double_FromFfiNullable(_distanceHandle),
        );
    }
    finally  {
          navigine_sdk_flutter_int_ReleaseFfiHandle(_majorHandle);
          navigine_sdk_flutter_int_ReleaseFfiHandle(_minorHandle);
          navigine_sdk_flutter_String_ReleaseFfiHandle(_uuidHandle);
          navigine_sdk_flutter_double_ReleaseFfiHandle(_rssiHandle);
          navigine_sdk_flutter_double_ReleaseFfiHandle(_frequencyHandle);
          navigine_sdk_flutter_double_ReleaseFfiHandle(_qualityHandle);
          navigine_sdk_flutter_double_ReleaseFfiHandleNullable(_distanceHandle);
    }
}

void navigine_sdk_flutter_BeaconProximityEntry_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_BeaconProximityEntry_ReleaseHandle(handle);

final _navigine_sdk_flutter_BeaconProximityEntry_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_BeaconProximityEntry_create_handle_nullable'));

final _navigine_sdk_flutter_BeaconProximityEntry_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_BeaconProximityEntry_release_handle_nullable'));

final _navigine_sdk_flutter_BeaconProximityEntry_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_BeaconProximityEntry_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_BeaconProximityEntry_ToFfiNullable(BeaconProximityEntry? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_BeaconProximityEntry_ToFfi(value);
    final result = _navigine_sdk_flutter_BeaconProximityEntry_CreateHandleNullable(_handle);
    navigine_sdk_flutter_BeaconProximityEntry_ReleaseFfiHandle(_handle);
    return result;
}

BeaconProximityEntry? navigine_sdk_flutter_BeaconProximityEntry_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_BeaconProximityEntry_GetValueNullable(handle);
    final result = navigine_sdk_flutter_BeaconProximityEntry_FromFfi(_handle);
    navigine_sdk_flutter_BeaconProximityEntry_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_BeaconProximityEntry_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_BeaconProximityEntry_ReleaseHandleNullable(handle);
