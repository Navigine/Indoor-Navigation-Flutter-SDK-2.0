part of 'location_polyline.dart';

// LocationPolyline "private" section, not exported.

final _navigine_sdk_flutter_LocationPolyline_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int32, Int32),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_LocationPolyline_create_handle'));

final _navigine_sdk_flutter_LocationPolyline_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationPolyline_release_handle'));

final _navigine_sdk_flutter_LocationPolyline_GetFieldpolyline = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationPolyline_get_field_polyline'));

final _navigine_sdk_flutter_LocationPolyline_GetFieldlocationId = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationPolyline_get_field_locationId'));

final _navigine_sdk_flutter_LocationPolyline_GetFieldsublocationId = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationPolyline_get_field_sublocationId'));


Pointer<Void> navigine_sdk_flutter_LocationPolyline_ToFfi(LocationPolyline value) {
    final _polylineHandle = navigine_sdk_flutter_Polyline_ToFfi(value.polyline);
    final _locationIdHandle = navigine_sdk_flutter_int_ToFfi(value.locationId);
    final _sublocationIdHandle = navigine_sdk_flutter_int_ToFfi(value.sublocationId);
    final _result = _navigine_sdk_flutter_LocationPolyline_CreateHandle(_polylineHandle, _locationIdHandle, _sublocationIdHandle);
    navigine_sdk_flutter_Polyline_ReleaseFfiHandle(_polylineHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_locationIdHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_sublocationIdHandle);
    return _result;
}

LocationPolyline navigine_sdk_flutter_LocationPolyline_FromFfi(Pointer<Void> handle) {
    final _polylineHandle = _navigine_sdk_flutter_LocationPolyline_GetFieldpolyline(handle);
    final _locationIdHandle = _navigine_sdk_flutter_LocationPolyline_GetFieldlocationId(handle);
    final _sublocationIdHandle = _navigine_sdk_flutter_LocationPolyline_GetFieldsublocationId(handle);
    final _result = LocationPolyline(
      navigine_sdk_flutter_Polyline_FromFfi(_polylineHandle),
      navigine_sdk_flutter_int_FromFfi(_locationIdHandle),
      navigine_sdk_flutter_int_FromFfi(_sublocationIdHandle),
    );
      navigine_sdk_flutter_Polyline_ReleaseFfiHandle(_polylineHandle);
      navigine_sdk_flutter_int_ReleaseFfiHandle(_locationIdHandle);
      navigine_sdk_flutter_int_ReleaseFfiHandle(_sublocationIdHandle);
    return _result;
}

void navigine_sdk_flutter_LocationPolyline_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_LocationPolyline_ReleaseHandle(handle);

final _navigine_sdk_flutter_LocationPolyline_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationPolyline_create_handle_nullable'));

final _navigine_sdk_flutter_LocationPolyline_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationPolyline_release_handle_nullable'));

final _navigine_sdk_flutter_LocationPolyline_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationPolyline_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_LocationPolyline_ToFfiNullable(LocationPolyline? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_LocationPolyline_ToFfi(value);
    final result = _navigine_sdk_flutter_LocationPolyline_CreateHandleNullable(_handle);
    navigine_sdk_flutter_LocationPolyline_ReleaseFfiHandle(_handle);
    return result;
}

LocationPolyline? navigine_sdk_flutter_LocationPolyline_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_LocationPolyline_GetValueNullable(handle);
    final result = navigine_sdk_flutter_LocationPolyline_FromFfi(_handle);
    navigine_sdk_flutter_LocationPolyline_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_LocationPolyline_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_LocationPolyline_ReleaseHandleNullable(handle);
