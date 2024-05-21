import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

class GlobalPoint {
    double latitude;
    double longitude;
    GlobalPoint(this.latitude, this.longitude);
}

// GlobalPoint "private" section, not exported.

final _navigine_sdk_flutter_GlobalPoint_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Double, Double),
    Pointer<Void> Function(double, double)
  >('navigine_sdk_flutter_GlobalPoint_create_handle'));

final _navigine_sdk_flutter_GlobalPoint_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_GlobalPoint_release_handle'));

final _navigine_sdk_flutter_GlobalPoint_GetFieldlatitude = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Double Function(Pointer<Void>),
    double Function(Pointer<Void>)
  >('navigine_sdk_flutter_GlobalPoint_get_field_latitude'));

final _navigine_sdk_flutter_GlobalPoint_GetFieldlongitude = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Double Function(Pointer<Void>),
    double Function(Pointer<Void>)
  >('navigine_sdk_flutter_GlobalPoint_get_field_longitude'));


Pointer<Void> navigine_sdk_flutter_GlobalPoint_ToFfi(GlobalPoint value) {
    final _latitudeHandle = navigine_sdk_flutter_double_ToFfi(value.latitude);
    final _longitudeHandle = navigine_sdk_flutter_double_ToFfi(value.longitude);
    final _result = _navigine_sdk_flutter_GlobalPoint_CreateHandle(_latitudeHandle, _longitudeHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandle(_latitudeHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandle(_longitudeHandle);
    return _result;
}

GlobalPoint navigine_sdk_flutter_GlobalPoint_FromFfi(Pointer<Void> handle) {
    final _latitudeHandle = _navigine_sdk_flutter_GlobalPoint_GetFieldlatitude(handle);
    final _longitudeHandle = _navigine_sdk_flutter_GlobalPoint_GetFieldlongitude(handle);
    try  {
        return GlobalPoint(
          navigine_sdk_flutter_double_FromFfi(_latitudeHandle),
          navigine_sdk_flutter_double_FromFfi(_longitudeHandle),
        );
    }
    finally  {
          navigine_sdk_flutter_double_ReleaseFfiHandle(_latitudeHandle);
          navigine_sdk_flutter_double_ReleaseFfiHandle(_longitudeHandle);
    }
}

void navigine_sdk_flutter_GlobalPoint_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_GlobalPoint_ReleaseHandle(handle);

final _navigine_sdk_flutter_GlobalPoint_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_GlobalPoint_create_handle_nullable'));

final _navigine_sdk_flutter_GlobalPoint_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_GlobalPoint_release_handle_nullable'));

final _navigine_sdk_flutter_GlobalPoint_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_GlobalPoint_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_GlobalPoint_ToFfiNullable(GlobalPoint? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_GlobalPoint_ToFfi(value);
    final result = _navigine_sdk_flutter_GlobalPoint_CreateHandleNullable(_handle);
    navigine_sdk_flutter_GlobalPoint_ReleaseFfiHandle(_handle);
    return result;
}

GlobalPoint? navigine_sdk_flutter_GlobalPoint_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_GlobalPoint_GetValueNullable(handle);
    final result = navigine_sdk_flutter_GlobalPoint_FromFfi(_handle);
    navigine_sdk_flutter_GlobalPoint_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_GlobalPoint_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_GlobalPoint_ReleaseHandleNullable(handle);
