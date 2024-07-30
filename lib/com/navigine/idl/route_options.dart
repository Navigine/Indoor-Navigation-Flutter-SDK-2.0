import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

class RouteOptions {
    RouteOptions(this.smoothRadius, this.maxProjectionDistance, this.maxAdvance);
    /**
     * This parameter controls if the resulting route should be smoothed for better
     * user experience. It can be considered as the maximum distance (in meters)
     * by which the smoothed route can deviate from the original route. The original
     * route follows exactly the edges of the route graph. If you don't want the route
     * to be smoothed, use value 0. Default value is 0.
     */
    double? smoothRadius;
    /**
     * This parameter controls the router behaviour in case if the position essentially
     * deviates from the proposed route. If the position deviates more than the specified
     * distance (in meters), then the route will be rebuilt. You should not set the
     * maxProjectionDistance value too low. The reasonable interval of values is [3, 10].
     * Default value is 5.
     */
    double? maxProjectionDistance;
    /**
     * This parameter controls the maximum distance (in meters) that a position can advance
     * along the route between the two consecutive navigation solutions separated in time
     * by 1 second. If this constraint is broken, the route will be completely rebuilt.
     * The reasonable interval of values is [1, 3]. Default value is 2.
     */
    double? maxAdvance;
}

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
    try  {
        return RouteOptions(
          navigine_sdk_flutter_double_FromFfiNullable(_smoothRadiusHandle),
          navigine_sdk_flutter_double_FromFfiNullable(_maxProjectionDistanceHandle),
          navigine_sdk_flutter_double_FromFfiNullable(_maxAdvanceHandle),
        );
    }
    finally  {
          navigine_sdk_flutter_double_ReleaseFfiHandleNullable(_smoothRadiusHandle);
          navigine_sdk_flutter_double_ReleaseFfiHandleNullable(_maxProjectionDistanceHandle);
          navigine_sdk_flutter_double_ReleaseFfiHandleNullable(_maxAdvanceHandle);
    }
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
