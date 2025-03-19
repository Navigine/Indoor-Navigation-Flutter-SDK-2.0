part of 'route_options.dart';

// RouteOptions "private" section, not exported.

final _navigine_sdk_flutter_RouteOptions_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_RouteOptions_create_handle'));

final _navigine_sdk_flutter_RouteOptions_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteOptions_release_handle'));

final _navigine_sdk_flutter_RouteOptions_GetFieldsmoothRadius = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteOptions_get_field_smoothRadius'));

final _navigine_sdk_flutter_RouteOptions_GetFieldmaxProjectionDistance = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteOptions_get_field_maxProjectionDistance'));

final _navigine_sdk_flutter_RouteOptions_GetFieldmaxAdvance = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteOptions_get_field_maxAdvance'));


Pointer<Void> navigine_sdk_flutter_RouteOptions_ToFfi(RouteOptions value) {
    final _smoothRadiusHandle = navigine_sdk_flutter_double_ToFfiNullable(value.smoothRadius);
    final _maxProjectionDistanceHandle = navigine_sdk_flutter_double_ToFfiNullable(value.maxProjectionDistance);
    final _maxAdvanceHandle = navigine_sdk_flutter_double_ToFfiNullable(value.maxAdvance);
    final _result = _navigine_sdk_flutter_RouteOptions_CreateHandle(_smoothRadiusHandle, _maxProjectionDistanceHandle, _maxAdvanceHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandleNullable(_smoothRadiusHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandleNullable(_maxProjectionDistanceHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandleNullable(_maxAdvanceHandle);
    return _result;
}

RouteOptions navigine_sdk_flutter_RouteOptions_FromFfi(Pointer<Void> handle) {
    final _smoothRadiusHandle = _navigine_sdk_flutter_RouteOptions_GetFieldsmoothRadius(handle);
    final _maxProjectionDistanceHandle = _navigine_sdk_flutter_RouteOptions_GetFieldmaxProjectionDistance(handle);
    final _maxAdvanceHandle = _navigine_sdk_flutter_RouteOptions_GetFieldmaxAdvance(handle);
    final _result = RouteOptions(
      navigine_sdk_flutter_double_FromFfiNullable(_smoothRadiusHandle),
      navigine_sdk_flutter_double_FromFfiNullable(_maxProjectionDistanceHandle),
      navigine_sdk_flutter_double_FromFfiNullable(_maxAdvanceHandle),
    );
      navigine_sdk_flutter_double_ReleaseFfiHandleNullable(_smoothRadiusHandle);
      navigine_sdk_flutter_double_ReleaseFfiHandleNullable(_maxProjectionDistanceHandle);
      navigine_sdk_flutter_double_ReleaseFfiHandleNullable(_maxAdvanceHandle);
    return _result;
}

void navigine_sdk_flutter_RouteOptions_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_RouteOptions_ReleaseHandle(handle);

final _navigine_sdk_flutter_RouteOptions_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteOptions_create_handle_nullable'));

final _navigine_sdk_flutter_RouteOptions_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteOptions_release_handle_nullable'));

final _navigine_sdk_flutter_RouteOptions_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteOptions_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_RouteOptions_ToFfiNullable(RouteOptions? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_RouteOptions_ToFfi(value);
    final result = _navigine_sdk_flutter_RouteOptions_CreateHandleNullable(_handle);
    navigine_sdk_flutter_RouteOptions_ReleaseFfiHandle(_handle);
    return result;
}

RouteOptions? navigine_sdk_flutter_RouteOptions_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_RouteOptions_GetValueNullable(handle);
    final result = navigine_sdk_flutter_RouteOptions_FromFfi(_handle);
    navigine_sdk_flutter_RouteOptions_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_RouteOptions_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_RouteOptions_ReleaseHandleNullable(handle);
