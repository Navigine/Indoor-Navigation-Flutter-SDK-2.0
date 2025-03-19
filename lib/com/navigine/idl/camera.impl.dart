part of 'camera.dart';

// Camera "private" section, not exported.

final _navigine_sdk_flutter_Camera_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Float, Float),
    Pointer<Void> Function(Pointer<Void>, double, double)
  >('navigine_sdk_flutter_Camera_create_handle'));

final _navigine_sdk_flutter_Camera_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Camera_release_handle'));

final _navigine_sdk_flutter_Camera_GetFieldpoint = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Camera_get_field_point'));

final _navigine_sdk_flutter_Camera_GetFieldzoom = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Float Function(Pointer<Void>),
    double Function(Pointer<Void>)
  >('navigine_sdk_flutter_Camera_get_field_zoom'));

final _navigine_sdk_flutter_Camera_GetFieldrotation = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Float Function(Pointer<Void>),
    double Function(Pointer<Void>)
  >('navigine_sdk_flutter_Camera_get_field_rotation'));


Pointer<Void> navigine_sdk_flutter_Camera_ToFfi(Camera value) {
    final _pointHandle = navigine_sdk_flutter_Point_ToFfi(value.point);
    final _zoomHandle = navigine_sdk_flutter_double_ToFfi(value.zoom);
    final _rotationHandle = navigine_sdk_flutter_double_ToFfi(value.rotation);
    final _result = _navigine_sdk_flutter_Camera_CreateHandle(_pointHandle, _zoomHandle, _rotationHandle);
    navigine_sdk_flutter_Point_ReleaseFfiHandle(_pointHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandle(_zoomHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandle(_rotationHandle);
    return _result;
}

Camera navigine_sdk_flutter_Camera_FromFfi(Pointer<Void> handle) {
    final _pointHandle = _navigine_sdk_flutter_Camera_GetFieldpoint(handle);
    final _zoomHandle = _navigine_sdk_flutter_Camera_GetFieldzoom(handle);
    final _rotationHandle = _navigine_sdk_flutter_Camera_GetFieldrotation(handle);
    final _result = Camera(
      navigine_sdk_flutter_Point_FromFfi(_pointHandle),
      navigine_sdk_flutter_double_FromFfi(_zoomHandle),
      navigine_sdk_flutter_double_FromFfi(_rotationHandle),
    );
      navigine_sdk_flutter_Point_ReleaseFfiHandle(_pointHandle);
      navigine_sdk_flutter_double_ReleaseFfiHandle(_zoomHandle);
      navigine_sdk_flutter_double_ReleaseFfiHandle(_rotationHandle);
    return _result;
}

void navigine_sdk_flutter_Camera_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_Camera_ReleaseHandle(handle);

final _navigine_sdk_flutter_Camera_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Camera_create_handle_nullable'));

final _navigine_sdk_flutter_Camera_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Camera_release_handle_nullable'));

final _navigine_sdk_flutter_Camera_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Camera_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_Camera_ToFfiNullable(Camera? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_Camera_ToFfi(value);
    final result = _navigine_sdk_flutter_Camera_CreateHandleNullable(_handle);
    navigine_sdk_flutter_Camera_ReleaseFfiHandle(_handle);
    return result;
}

Camera? navigine_sdk_flutter_Camera_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_Camera_GetValueNullable(handle);
    final result = navigine_sdk_flutter_Camera_FromFfi(_handle);
    navigine_sdk_flutter_Camera_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_Camera_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_Camera_ReleaseHandleNullable(handle);
