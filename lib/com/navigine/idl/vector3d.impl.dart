part of 'vector3d.dart';

// Vector3d "private" section, not exported.

final _navigine_sdk_flutter_Vector3d_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Float, Float, Float),
    Pointer<Void> Function(double, double, double)
  >('navigine_sdk_flutter_Vector3d_create_handle'));

final _navigine_sdk_flutter_Vector3d_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Vector3d_release_handle'));

final _navigine_sdk_flutter_Vector3d_GetFieldx = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Float Function(Pointer<Void>),
    double Function(Pointer<Void>)
  >('navigine_sdk_flutter_Vector3d_get_field_x'));

final _navigine_sdk_flutter_Vector3d_GetFieldy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Float Function(Pointer<Void>),
    double Function(Pointer<Void>)
  >('navigine_sdk_flutter_Vector3d_get_field_y'));

final _navigine_sdk_flutter_Vector3d_GetFieldz = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Float Function(Pointer<Void>),
    double Function(Pointer<Void>)
  >('navigine_sdk_flutter_Vector3d_get_field_z'));


Pointer<Void> navigine_sdk_flutter_Vector3d_ToFfi(Vector3d value) {
    final _xHandle = navigine_sdk_flutter_double_ToFfi(value.x);
    final _yHandle = navigine_sdk_flutter_double_ToFfi(value.y);
    final _zHandle = navigine_sdk_flutter_double_ToFfi(value.z);
    final _result = _navigine_sdk_flutter_Vector3d_CreateHandle(_xHandle, _yHandle, _zHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandle(_xHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandle(_yHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandle(_zHandle);
    return _result;
}

Vector3d navigine_sdk_flutter_Vector3d_FromFfi(Pointer<Void> handle) {
    final _xHandle = _navigine_sdk_flutter_Vector3d_GetFieldx(handle);
    final _yHandle = _navigine_sdk_flutter_Vector3d_GetFieldy(handle);
    final _zHandle = _navigine_sdk_flutter_Vector3d_GetFieldz(handle);
    final _result = Vector3d(
      navigine_sdk_flutter_double_FromFfi(_xHandle),
      navigine_sdk_flutter_double_FromFfi(_yHandle),
      navigine_sdk_flutter_double_FromFfi(_zHandle),
    );
      navigine_sdk_flutter_double_ReleaseFfiHandle(_xHandle);
      navigine_sdk_flutter_double_ReleaseFfiHandle(_yHandle);
      navigine_sdk_flutter_double_ReleaseFfiHandle(_zHandle);
    return _result;
}

void navigine_sdk_flutter_Vector3d_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_Vector3d_ReleaseHandle(handle);

final _navigine_sdk_flutter_Vector3d_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Vector3d_create_handle_nullable'));

final _navigine_sdk_flutter_Vector3d_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Vector3d_release_handle_nullable'));

final _navigine_sdk_flutter_Vector3d_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Vector3d_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_Vector3d_ToFfiNullable(Vector3d? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_Vector3d_ToFfi(value);
    final result = _navigine_sdk_flutter_Vector3d_CreateHandleNullable(_handle);
    navigine_sdk_flutter_Vector3d_ReleaseFfiHandle(_handle);
    return result;
}

Vector3d? navigine_sdk_flutter_Vector3d_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_Vector3d_GetValueNullable(handle);
    final result = navigine_sdk_flutter_Vector3d_FromFfi(_handle);
    navigine_sdk_flutter_Vector3d_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_Vector3d_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_Vector3d_ReleaseHandleNullable(handle);
