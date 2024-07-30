import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/segment.dart';

/**
 *
 * A polyline with specified list of segments.
 *
 */
class Line {
    Line(this.segments);
    /** List of segments to connect. */
    List<Segment> segments;
}

// Line "private" section, not exported.

final _navigine_sdk_flutter_Line_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Line_create_handle'));

final _navigine_sdk_flutter_Line_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Line_release_handle'));

final _navigine_sdk_flutter_Line_GetFieldsegments = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Line_get_field_segments'));


Pointer<Void> navigine_sdk_flutter_Line_ToFfi(Line value) {
    final _segmentsHandle = navigine_sdk_flutter_List_Segment_ToFfi(value.segments);
    final _result = _navigine_sdk_flutter_Line_CreateHandle(_segmentsHandle);
    navigine_sdk_flutter_List_Segment_ReleaseFfiHandle(_segmentsHandle);
    return _result;
}

Line navigine_sdk_flutter_Line_FromFfi(Pointer<Void> handle) {
    final _segmentsHandle = _navigine_sdk_flutter_Line_GetFieldsegments(handle);
    try  {
        return Line(
          navigine_sdk_flutter_List_Segment_FromFfi(_segmentsHandle),
        );
    }
    finally  {
          navigine_sdk_flutter_List_Segment_ReleaseFfiHandle(_segmentsHandle);
    }
}

void navigine_sdk_flutter_Line_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_Line_ReleaseHandle(handle);

final _navigine_sdk_flutter_Line_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Line_create_handle_nullable'));

final _navigine_sdk_flutter_Line_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Line_release_handle_nullable'));

final _navigine_sdk_flutter_Line_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Line_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_Line_ToFfiNullable(Line? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_Line_ToFfi(value);
    final result = _navigine_sdk_flutter_Line_CreateHandleNullable(_handle);
    navigine_sdk_flutter_Line_ReleaseFfiHandle(_handle);
    return result;
}

Line? navigine_sdk_flutter_Line_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_Line_GetValueNullable(handle);
    final result = navigine_sdk_flutter_Line_FromFfi(_handle);
    navigine_sdk_flutter_Line_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_Line_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_Line_ReleaseHandleNullable(handle);

final _navigine_sdk_flutter_List_Segment_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_Segment_create_handle'));

final _navigine_sdk_flutter_List_Segment_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Segment_release_handle'));

final _navigine_sdk_flutter_List_Segment_Insert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_Segment_insert'));

final _navigine_sdk_flutter_List_Segment_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Segment_iterator'));

final _navigine_sdk_flutter_List_Segment_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Segment_iterator_release_handle'));

final _navigine_sdk_flutter_List_Segment_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_Segment_iterator_is_valid'));

final _navigine_sdk_flutter_List_Segment_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Segment_iterator_increment'));

final _navigine_sdk_flutter_List_Segment_IteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Segment_iterator_get'));

Pointer<Void> navigine_sdk_flutter_List_Segment_ToFfi(List<Segment> value)  {
    final _result = _navigine_sdk_flutter_List_Segment_CreateHandle();
    for (final element in value)  {
        final _elementHandle = navigine_sdk_flutter_Segment_ToFfi(element);
        _navigine_sdk_flutter_List_Segment_Insert(_result, _elementHandle);
        navigine_sdk_flutter_Segment_ReleaseFfiHandle(_elementHandle);
    }
    return _result;
}

List<Segment> navigine_sdk_flutter_List_Segment_FromFfi(Pointer<Void> handle)  {
    final result = List<Segment>.empty(growable: true);
    final _iteratorHandle = _navigine_sdk_flutter_List_Segment_Iterator(handle);
    while (_navigine_sdk_flutter_List_Segment_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _elementHandle = _navigine_sdk_flutter_List_Segment_IteratorGet(_iteratorHandle);
        try  {
            result.add(navigine_sdk_flutter_Segment_FromFfi(_elementHandle));
        }
        finally  {
            navigine_sdk_flutter_Segment_ReleaseFfiHandle(_elementHandle);
        }
        _navigine_sdk_flutter_List_Segment_IteratorIncrement(_iteratorHandle);
    }
    return result;
}

void navigine_sdk_flutter_List_Segment_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_List_Segment_ReleaseHandle(handle);

final _navigine_sdk_flutter_List_Segment_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Segment_create_handle_nullable'));

final _navigine_sdk_flutter_List_Segment_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Segment_release_handle_nullable'));

final _navigine_sdk_flutter_List_Segment_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Segment_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_List_Segment_ToFfiNullable(List<Segment>? value)  {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_List_Segment_ToFfi(value);
    final result = _navigine_sdk_flutter_List_Segment_CreateHandleNullable(_handle);
    navigine_sdk_flutter_List_Segment_ReleaseFfiHandle(_handle);
    return result;
}

List<Segment>? navigine_sdk_flutter_List_Segment_FromFfiNullable(Pointer<Void> handle)  {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_List_Segment_GetValueNullable(handle);
    final result = navigine_sdk_flutter_List_Segment_FromFfi(_handle);
    navigine_sdk_flutter_List_Segment_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_List_Segment_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_Segment_ReleaseHandleNullable(handle);
