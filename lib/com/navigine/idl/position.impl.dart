part of 'position.dart';

// Position "private" section, not exported.

final _navigine_sdk_flutter_Position_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Double, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>, double, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_Position_create_handle'));

final _navigine_sdk_flutter_Position_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Position_release_handle'));

final _navigine_sdk_flutter_Position_GetFieldpoint = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Position_get_field_point'));

final _navigine_sdk_flutter_Position_GetFieldaccuracy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Double Function(Pointer<Void>),
    double Function(Pointer<Void>)
  >('navigine_sdk_flutter_Position_get_field_accuracy'));

final _navigine_sdk_flutter_Position_GetFieldheading = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Position_get_field_heading'));

final _navigine_sdk_flutter_Position_GetFieldheadingAccuracy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Position_get_field_headingAccuracy'));

final _navigine_sdk_flutter_Position_GetFieldlocationPoint = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Position_get_field_locationPoint'));

final _navigine_sdk_flutter_Position_GetFieldlocationHeading = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Position_get_field_locationHeading'));


Pointer<Void> navigine_sdk_flutter_Position_ToFfi(Position value) {
    final _pointHandle = navigine_sdk_flutter_GlobalPoint_ToFfi(value.point);
    final _accuracyHandle = navigine_sdk_flutter_double_ToFfi(value.accuracy);
    final _headingHandle = navigine_sdk_flutter_double_ToFfiNullable(value.heading);
    final _headingAccuracyHandle = navigine_sdk_flutter_double_ToFfiNullable(value.headingAccuracy);
    final _locationPointHandle = navigine_sdk_flutter_LocationPoint_ToFfiNullable(value.locationPoint);
    final _locationHeadingHandle = navigine_sdk_flutter_double_ToFfiNullable(value.locationHeading);
    final _result = _navigine_sdk_flutter_Position_CreateHandle(_pointHandle, _accuracyHandle, _headingHandle, _headingAccuracyHandle, _locationPointHandle, _locationHeadingHandle);
    navigine_sdk_flutter_GlobalPoint_ReleaseFfiHandle(_pointHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandle(_accuracyHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandleNullable(_headingHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandleNullable(_headingAccuracyHandle);
    navigine_sdk_flutter_LocationPoint_ReleaseFfiHandleNullable(_locationPointHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandleNullable(_locationHeadingHandle);
    return _result;
}

Position navigine_sdk_flutter_Position_FromFfi(Pointer<Void> handle) {
    final _pointHandle = _navigine_sdk_flutter_Position_GetFieldpoint(handle);
    final _accuracyHandle = _navigine_sdk_flutter_Position_GetFieldaccuracy(handle);
    final _headingHandle = _navigine_sdk_flutter_Position_GetFieldheading(handle);
    final _headingAccuracyHandle = _navigine_sdk_flutter_Position_GetFieldheadingAccuracy(handle);
    final _locationPointHandle = _navigine_sdk_flutter_Position_GetFieldlocationPoint(handle);
    final _locationHeadingHandle = _navigine_sdk_flutter_Position_GetFieldlocationHeading(handle);
    final _result = Position(
      navigine_sdk_flutter_GlobalPoint_FromFfi(_pointHandle),
      navigine_sdk_flutter_double_FromFfi(_accuracyHandle),
      navigine_sdk_flutter_double_FromFfiNullable(_headingHandle),
      navigine_sdk_flutter_double_FromFfiNullable(_headingAccuracyHandle),
      navigine_sdk_flutter_LocationPoint_FromFfiNullable(_locationPointHandle),
      navigine_sdk_flutter_double_FromFfiNullable(_locationHeadingHandle),
    );
      navigine_sdk_flutter_GlobalPoint_ReleaseFfiHandle(_pointHandle);
      navigine_sdk_flutter_double_ReleaseFfiHandle(_accuracyHandle);
      navigine_sdk_flutter_double_ReleaseFfiHandleNullable(_headingHandle);
      navigine_sdk_flutter_double_ReleaseFfiHandleNullable(_headingAccuracyHandle);
      navigine_sdk_flutter_LocationPoint_ReleaseFfiHandleNullable(_locationPointHandle);
      navigine_sdk_flutter_double_ReleaseFfiHandleNullable(_locationHeadingHandle);
    return _result;
}

void navigine_sdk_flutter_Position_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_Position_ReleaseHandle(handle);

final _navigine_sdk_flutter_Position_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Position_create_handle_nullable'));

final _navigine_sdk_flutter_Position_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Position_release_handle_nullable'));

final _navigine_sdk_flutter_Position_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Position_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_Position_ToFfiNullable(Position? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_Position_ToFfi(value);
    final result = _navigine_sdk_flutter_Position_CreateHandleNullable(_handle);
    navigine_sdk_flutter_Position_ReleaseFfiHandle(_handle);
    return result;
}

Position? navigine_sdk_flutter_Position_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_Position_GetValueNullable(handle);
    final result = navigine_sdk_flutter_Position_FromFfi(_handle);
    navigine_sdk_flutter_Position_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_Position_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_Position_ReleaseHandleNullable(handle);
