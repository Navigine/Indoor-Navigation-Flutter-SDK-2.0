

import 'dart:ffi';
import 'dart:math' as math;
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

// math.Point<double> "private" section, not exported.

final _navigine_sdk_flutter_math_Point_double_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Double, Double),
    Pointer<Void> Function(double, double)
  >('navigine_sdk_flutter_math_Point_double_create_handle'));
final _navigine_sdk_flutter_math_Point_double_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_math_Point_double_release_handle'));
final _navigine_sdk_flutter_math_Point_double_GetFieldx = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Double Function(Pointer<Void>),
    double Function(Pointer<Void>)
  >('navigine_sdk_flutter_math_Point_double_get_field_x'));
final _navigine_sdk_flutter_math_Point_double_GetFieldy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Double Function(Pointer<Void>),
    double Function(Pointer<Void>)
  >('navigine_sdk_flutter_math_Point_double_get_field_y'));


Pointer<Void> navigine_sdk_flutter_math_Point_double_ToFfi(math.Point<double> value) {
  final _xHandle = (value.x);
  final _yHandle = (value.y);
  final _result = _navigine_sdk_flutter_math_Point_double_CreateHandle(_xHandle, _yHandle);


  return _result;
}

math.Point<double> navigine_sdk_flutter_math_Point_double_FromFfi(Pointer<Void> handle) {
  final _xHandle = _navigine_sdk_flutter_math_Point_double_GetFieldx(handle);
  final _yHandle = _navigine_sdk_flutter_math_Point_double_GetFieldy(handle);
  try {
    return math.Point<double>(
      (_xHandle),
      (_yHandle)
    );
  } finally {


  }
}

void navigine_sdk_flutter_math_Point_double_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_math_Point_double_ReleaseHandle(handle);

// Nullable math.Point<double>

final _navigine_sdk_flutter_math_Point_double_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_math_Point_double_create_handle_nullable'));
final _navigine_sdk_flutter_math_Point_double_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_math_Point_double_release_handle_nullable'));
final _navigine_sdk_flutter_math_Point_double_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_math_Point_double_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_math_Point_double_ToFfiNullable(math.Point<double>? value) {
  if (value == null) return Pointer<Void>.fromAddress(0);
  final _handle = navigine_sdk_flutter_math_Point_double_ToFfi(value);
  final result = _navigine_sdk_flutter_math_Point_double_CreateHandleNullable(_handle);
  navigine_sdk_flutter_math_Point_double_ReleaseFfiHandle(_handle);
  return result;
}

math.Point<double>? navigine_sdk_flutter_math_Point_double_FromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _navigine_sdk_flutter_math_Point_double_GetValueNullable(handle);
  final result = navigine_sdk_flutter_math_Point_double_FromFfi(_handle);
  navigine_sdk_flutter_math_Point_double_ReleaseFfiHandle(_handle);
  return result;
}

void navigine_sdk_flutter_math_Point_double_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_math_Point_double_ReleaseHandleNullable(handle);

// End of math.Point<double> "private" section.
