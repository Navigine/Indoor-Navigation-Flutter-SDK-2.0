import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

/**
 *
 * A rectangle with specified origin and size.
 *
 */
class Rectangle {
    Rectangle(this.x, this.y, this.width, this.height);
    /**
     *
     * Rectangle's origin `x` coordinate.
     *
     */
    double x;
    /**
     *
     * Rectangle's origin `y` coordinate.
     *
     */
    double y;
    /**
     *
     * Rectangle's width.
     *
     */
    double width;
    /**
     *
     * Rectangle's height.
     *
     */
    double height;
}

// Rectangle "private" section, not exported.

final _navigine_sdk_flutter_Rectangle_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Float, Float, Float, Float),
    Pointer<Void> Function(double, double, double, double)
  >('navigine_sdk_flutter_Rectangle_create_handle'));

final _navigine_sdk_flutter_Rectangle_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Rectangle_release_handle'));

final _navigine_sdk_flutter_Rectangle_GetFieldx = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Float Function(Pointer<Void>),
    double Function(Pointer<Void>)
  >('navigine_sdk_flutter_Rectangle_get_field_x'));

final _navigine_sdk_flutter_Rectangle_GetFieldy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Float Function(Pointer<Void>),
    double Function(Pointer<Void>)
  >('navigine_sdk_flutter_Rectangle_get_field_y'));

final _navigine_sdk_flutter_Rectangle_GetFieldwidth = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Float Function(Pointer<Void>),
    double Function(Pointer<Void>)
  >('navigine_sdk_flutter_Rectangle_get_field_width'));

final _navigine_sdk_flutter_Rectangle_GetFieldheight = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Float Function(Pointer<Void>),
    double Function(Pointer<Void>)
  >('navigine_sdk_flutter_Rectangle_get_field_height'));


Pointer<Void> navigine_sdk_flutter_Rectangle_ToFfi(Rectangle value) {
    final _xHandle = navigine_sdk_flutter_double_ToFfi(value.x);
    final _yHandle = navigine_sdk_flutter_double_ToFfi(value.y);
    final _widthHandle = navigine_sdk_flutter_double_ToFfi(value.width);
    final _heightHandle = navigine_sdk_flutter_double_ToFfi(value.height);
    final _result = _navigine_sdk_flutter_Rectangle_CreateHandle(_xHandle, _yHandle, _widthHandle, _heightHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandle(_xHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandle(_yHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandle(_widthHandle);
    navigine_sdk_flutter_double_ReleaseFfiHandle(_heightHandle);
    return _result;
}

Rectangle navigine_sdk_flutter_Rectangle_FromFfi(Pointer<Void> handle) {
    final _xHandle = _navigine_sdk_flutter_Rectangle_GetFieldx(handle);
    final _yHandle = _navigine_sdk_flutter_Rectangle_GetFieldy(handle);
    final _widthHandle = _navigine_sdk_flutter_Rectangle_GetFieldwidth(handle);
    final _heightHandle = _navigine_sdk_flutter_Rectangle_GetFieldheight(handle);
    try  {
        return Rectangle(
          navigine_sdk_flutter_double_FromFfi(_xHandle),
          navigine_sdk_flutter_double_FromFfi(_yHandle),
          navigine_sdk_flutter_double_FromFfi(_widthHandle),
          navigine_sdk_flutter_double_FromFfi(_heightHandle),
        );
    }
    finally  {
          navigine_sdk_flutter_double_ReleaseFfiHandle(_xHandle);
          navigine_sdk_flutter_double_ReleaseFfiHandle(_yHandle);
          navigine_sdk_flutter_double_ReleaseFfiHandle(_widthHandle);
          navigine_sdk_flutter_double_ReleaseFfiHandle(_heightHandle);
    }
}

void navigine_sdk_flutter_Rectangle_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_Rectangle_ReleaseHandle(handle);

final _navigine_sdk_flutter_Rectangle_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Rectangle_create_handle_nullable'));

final _navigine_sdk_flutter_Rectangle_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Rectangle_release_handle_nullable'));

final _navigine_sdk_flutter_Rectangle_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Rectangle_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_Rectangle_ToFfiNullable(Rectangle? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_Rectangle_ToFfi(value);
    final result = _navigine_sdk_flutter_Rectangle_CreateHandleNullable(_handle);
    navigine_sdk_flutter_Rectangle_ReleaseFfiHandle(_handle);
    return result;
}

Rectangle? navigine_sdk_flutter_Rectangle_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_Rectangle_GetValueNullable(handle);
    final result = navigine_sdk_flutter_Rectangle_FromFfi(_handle);
    navigine_sdk_flutter_Rectangle_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_Rectangle_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_Rectangle_ReleaseHandleNullable(handle);
