import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';

class LocationPoint {
    Point point;
    int locationId;
    int sublocationId;
    LocationPoint(this.point, this.locationId, this.sublocationId);
}

// LocationPoint "private" section, not exported.

final _navigine_sdk_flutter_LocationPoint_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int32, Int32),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_LocationPoint_create_handle'));

final _navigine_sdk_flutter_LocationPoint_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationPoint_release_handle'));

final _navigine_sdk_flutter_LocationPoint_GetFieldpoint = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationPoint_get_field_point'));

final _navigine_sdk_flutter_LocationPoint_GetFieldlocationId = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationPoint_get_field_locationId'));

final _navigine_sdk_flutter_LocationPoint_GetFieldsublocationId = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationPoint_get_field_sublocationId'));


Pointer<Void> navigine_sdk_flutter_LocationPoint_ToFfi(LocationPoint value) {
    final _pointHandle = navigine_sdk_flutter_Point_ToFfi(value.point);
    final _locationIdHandle = navigine_sdk_flutter_int_ToFfi(value.locationId);
    final _sublocationIdHandle = navigine_sdk_flutter_int_ToFfi(value.sublocationId);
    final _result = _navigine_sdk_flutter_LocationPoint_CreateHandle(_pointHandle, _locationIdHandle, _sublocationIdHandle);
    navigine_sdk_flutter_Point_ReleaseFfiHandle(_pointHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_locationIdHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_sublocationIdHandle);
    return _result;
}

LocationPoint navigine_sdk_flutter_LocationPoint_FromFfi(Pointer<Void> handle) {
    final _pointHandle = _navigine_sdk_flutter_LocationPoint_GetFieldpoint(handle);
    final _locationIdHandle = _navigine_sdk_flutter_LocationPoint_GetFieldlocationId(handle);
    final _sublocationIdHandle = _navigine_sdk_flutter_LocationPoint_GetFieldsublocationId(handle);
    try  {
        return LocationPoint(
          navigine_sdk_flutter_Point_FromFfi(_pointHandle),
          navigine_sdk_flutter_int_FromFfi(_locationIdHandle),
          navigine_sdk_flutter_int_FromFfi(_sublocationIdHandle),
        );
    }
    finally  {
          navigine_sdk_flutter_Point_ReleaseFfiHandle(_pointHandle);
          navigine_sdk_flutter_int_ReleaseFfiHandle(_locationIdHandle);
          navigine_sdk_flutter_int_ReleaseFfiHandle(_sublocationIdHandle);
    }
}

void navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_LocationPoint_ReleaseHandle(handle);

final _navigine_sdk_flutter_LocationPoint_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationPoint_create_handle_nullable'));

final _navigine_sdk_flutter_LocationPoint_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationPoint_release_handle_nullable'));

final _navigine_sdk_flutter_LocationPoint_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationPoint_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_LocationPoint_ToFfiNullable(LocationPoint? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_LocationPoint_ToFfi(value);
    final result = _navigine_sdk_flutter_LocationPoint_CreateHandleNullable(_handle);
    navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(_handle);
    return result;
}

LocationPoint? navigine_sdk_flutter_LocationPoint_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_LocationPoint_GetValueNullable(handle);
    final result = navigine_sdk_flutter_LocationPoint_FromFfi(_handle);
    navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_LocationPoint_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_LocationPoint_ReleaseHandleNullable(handle);
