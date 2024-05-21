import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

class Point {
    double x;
    double y;
    Point(this.x, this.y);
}

// Point "private" section, not exported.

final _navigine_sdk_flutter_Point_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Float, Float),
    Pointer<Void> Function(double, double)
  >('navigine_sdk_flutter_Point_create_handle'));

final _navigine_sdk_flutter_Point_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Point_release_handle'));

final _navigine_sdk_flutter_Point_GetFieldx = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Float Function(Pointer<Void>),
    double Function(Pointer<Void>)
  >('navigine_sdk_flutter_Point_get_field_x'));

final _navigine_sdk_flutter_Point_GetFieldy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Float Function(Pointer<Void>),
    double Function(Pointer<Void>)
  >('navigine_sdk_flutter_Point_get_field_y'));


Pointer<Void> navigine_sdk_flutter_Point_ToFfi(Point value) {
    final _xHandle = navigine_sdk_flutter_double_ToFfi(value.x);
    final _yHandle = navigine_sdk_flutter_double_ToFfi(value.y);
    final _result = _navigine_sdk_flutter_Point_CreateHandle(_xHandle, _yHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandle(_xHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandle(_yHandle);
    return _result;
}

Point navigine_sdk_flutter_Point_FromFfi(Pointer<Void> handle) {
    final _xHandle = _navigine_sdk_flutter_Point_GetFieldx(handle);
    final _yHandle = _navigine_sdk_flutter_Point_GetFieldy(handle);
    try  {
        return Point(
          navigine_sdk_flutter_double_FromFfi(_xHandle),
          navigine_sdk_flutter_double_FromFfi(_yHandle),
        );
    }
    finally  {
          navigine_sdk_flutter_double_ReleaseFfiHandle(_xHandle);
          navigine_sdk_flutter_double_ReleaseFfiHandle(_yHandle);
    }
}

void navigine_sdk_flutter_Point_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_Point_ReleaseHandle(handle);

final _navigine_sdk_flutter_Point_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Point_create_handle_nullable'));

final _navigine_sdk_flutter_Point_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Point_release_handle_nullable'));

final _navigine_sdk_flutter_Point_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Point_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_Point_ToFfiNullable(Point? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_Point_ToFfi(value);
    final result = _navigine_sdk_flutter_Point_CreateHandleNullable(_handle);
    navigine_sdk_flutter_Point_ReleaseFfiHandle(_handle);
    return result;
}

Point? navigine_sdk_flutter_Point_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_Point_GetValueNullable(handle);
    final result = navigine_sdk_flutter_Point_FromFfi(_handle);
    navigine_sdk_flutter_Point_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_Point_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_Point_ReleaseHandleNullable(handle);
