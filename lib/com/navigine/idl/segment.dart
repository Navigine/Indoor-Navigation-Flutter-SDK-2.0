import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';

/**
 *
 * Line between two points.
 *
 */
class Segment {
    Segment(this.start, this.end);
    /** Starting point of the segment. */
    Point start;
    /** End point of the segment. */
    Point end;
}

// Segment "private" section, not exported.

final _navigine_sdk_flutter_Segment_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_Segment_create_handle'));

final _navigine_sdk_flutter_Segment_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Segment_release_handle'));

final _navigine_sdk_flutter_Segment_GetFieldstart = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Segment_get_field_start'));

final _navigine_sdk_flutter_Segment_GetFieldend = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Segment_get_field_end'));


Pointer<Void> navigine_sdk_flutter_Segment_ToFfi(Segment value) {
    final _startHandle = navigine_sdk_flutter_Point_ToFfi(value.start);
    final _endHandle = navigine_sdk_flutter_Point_ToFfi(value.end);
    final _result = _navigine_sdk_flutter_Segment_CreateHandle(_startHandle, _endHandle);
    navigine_sdk_flutter_Point_ReleaseFfiHandle(_startHandle);
    navigine_sdk_flutter_Point_ReleaseFfiHandle(_endHandle);
    return _result;
}

Segment navigine_sdk_flutter_Segment_FromFfi(Pointer<Void> handle) {
    final _startHandle = _navigine_sdk_flutter_Segment_GetFieldstart(handle);
    final _endHandle = _navigine_sdk_flutter_Segment_GetFieldend(handle);
    try  {
        return Segment(
          navigine_sdk_flutter_Point_FromFfi(_startHandle),
          navigine_sdk_flutter_Point_FromFfi(_endHandle),
        );
    }
    finally  {
          navigine_sdk_flutter_Point_ReleaseFfiHandle(_startHandle);
          navigine_sdk_flutter_Point_ReleaseFfiHandle(_endHandle);
    }
}

void navigine_sdk_flutter_Segment_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_Segment_ReleaseHandle(handle);

final _navigine_sdk_flutter_Segment_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Segment_create_handle_nullable'));

final _navigine_sdk_flutter_Segment_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Segment_release_handle_nullable'));

final _navigine_sdk_flutter_Segment_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Segment_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_Segment_ToFfiNullable(Segment? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_Segment_ToFfi(value);
    final result = _navigine_sdk_flutter_Segment_CreateHandleNullable(_handle);
    navigine_sdk_flutter_Segment_ReleaseFfiHandle(_handle);
    return result;
}

Segment? navigine_sdk_flutter_Segment_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_Segment_GetValueNullable(handle);
    final result = navigine_sdk_flutter_Segment_FromFfi(_handle);
    navigine_sdk_flutter_Segment_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_Segment_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_Segment_ReleaseHandleNullable(handle);
