import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';

class Polygon {
    List<Point> points;
    Polygon(this.points);
}

// Polygon "private" section, not exported.

final _navigine_sdk_flutter_Polygon_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Polygon_create_handle'));

final _navigine_sdk_flutter_Polygon_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Polygon_release_handle'));

final _navigine_sdk_flutter_Polygon_GetFieldpoints = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Polygon_get_field_points'));


Pointer<Void> navigine_sdk_flutter_Polygon_ToFfi(Polygon value) {
    final _pointsHandle = navigine_sdk_flutter_List_Point_ToFfi(value.points);
    final _result = _navigine_sdk_flutter_Polygon_CreateHandle(_pointsHandle);
    navigine_sdk_flutter_List_Point_ReleaseFfiHandle(_pointsHandle);
    return _result;
}

Polygon navigine_sdk_flutter_Polygon_FromFfi(Pointer<Void> handle) {
    final _pointsHandle = _navigine_sdk_flutter_Polygon_GetFieldpoints(handle);
    try  {
        return Polygon(
          navigine_sdk_flutter_List_Point_FromFfi(_pointsHandle),
        );
    }
    finally  {
          navigine_sdk_flutter_List_Point_ReleaseFfiHandle(_pointsHandle);
    }
}

void navigine_sdk_flutter_Polygon_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_Polygon_ReleaseHandle(handle);

final _navigine_sdk_flutter_Polygon_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Polygon_create_handle_nullable'));

final _navigine_sdk_flutter_Polygon_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Polygon_release_handle_nullable'));

final _navigine_sdk_flutter_Polygon_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Polygon_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_Polygon_ToFfiNullable(Polygon? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_Polygon_ToFfi(value);
    final result = _navigine_sdk_flutter_Polygon_CreateHandleNullable(_handle);
    navigine_sdk_flutter_Polygon_ReleaseFfiHandle(_handle);
    return result;
}

Polygon? navigine_sdk_flutter_Polygon_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_Polygon_GetValueNullable(handle);
    final result = navigine_sdk_flutter_Polygon_FromFfi(_handle);
    navigine_sdk_flutter_Polygon_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_Polygon_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_Polygon_ReleaseHandleNullable(handle);

final _navigine_sdk_flutter_List_Point_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_Point_create_handle'));

final _navigine_sdk_flutter_List_Point_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Point_release_handle'));

final _navigine_sdk_flutter_List_Point_Insert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_Point_insert'));

final _navigine_sdk_flutter_List_Point_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Point_iterator'));

final _navigine_sdk_flutter_List_Point_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Point_iterator_release_handle'));

final _navigine_sdk_flutter_List_Point_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_Point_iterator_is_valid'));

final _navigine_sdk_flutter_List_Point_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Point_iterator_increment'));

final _navigine_sdk_flutter_List_Point_IteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Point_iterator_get'));

Pointer<Void> navigine_sdk_flutter_List_Point_ToFfi(List<Point> value)  {
    final _result = _navigine_sdk_flutter_List_Point_CreateHandle();
    for (final element in value)  {
        final _elementHandle = navigine_sdk_flutter_Point_ToFfi(element);
        _navigine_sdk_flutter_List_Point_Insert(_result, _elementHandle);
        navigine_sdk_flutter_Point_ReleaseFfiHandle(_elementHandle);
    }
    return _result;
}

List<Point> navigine_sdk_flutter_List_Point_FromFfi(Pointer<Void> handle)  {
    final result = List<Point>.empty(growable: true);
    final _iteratorHandle = _navigine_sdk_flutter_List_Point_Iterator(handle);
    while (_navigine_sdk_flutter_List_Point_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _elementHandle = _navigine_sdk_flutter_List_Point_IteratorGet(_iteratorHandle);
        try  {
            result.add(navigine_sdk_flutter_Point_FromFfi(_elementHandle));
        }
        finally  {
            navigine_sdk_flutter_Point_ReleaseFfiHandle(_elementHandle);
        }
        _navigine_sdk_flutter_List_Point_IteratorIncrement(_iteratorHandle);
    }
    return result;
}

void navigine_sdk_flutter_List_Point_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_List_Point_ReleaseHandle(handle);

final _navigine_sdk_flutter_List_Point_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Point_create_handle_nullable'));

final _navigine_sdk_flutter_List_Point_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Point_release_handle_nullable'));

final _navigine_sdk_flutter_List_Point_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Point_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_List_Point_ToFfiNullable(List<Point>? value)  {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_List_Point_ToFfi(value);
    final result = _navigine_sdk_flutter_List_Point_CreateHandleNullable(_handle);
    navigine_sdk_flutter_List_Point_ReleaseFfiHandle(_handle);
    return result;
}

List<Point>? navigine_sdk_flutter_List_Point_FromFfiNullable(Pointer<Void> handle)  {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_List_Point_GetValueNullable(handle);
    final result = navigine_sdk_flutter_List_Point_FromFfi(_handle);
    navigine_sdk_flutter_List_Point_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_List_Point_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_Point_ReleaseHandleNullable(handle);
