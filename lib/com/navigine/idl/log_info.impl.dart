part of 'log_info.dart';

// LogInfo "private" section, not exported.

final _navigine_sdk_flutter_LogInfo_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Int32, Int32, Pointer<Void>, Int32),
    Pointer<Void> Function(Pointer<Void>, Pointer<Void>, int, int, Pointer<Void>, int)
  >('navigine_sdk_flutter_LogInfo_create_handle'));

final _navigine_sdk_flutter_LogInfo_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_LogInfo_release_handle'));

final _navigine_sdk_flutter_LogInfo_GetFieldname = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_LogInfo_get_field_name'));

final _navigine_sdk_flutter_LogInfo_GetFieldabsolutePath = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_LogInfo_get_field_absolutePath'));

final _navigine_sdk_flutter_LogInfo_GetFieldsize = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_LogInfo_get_field_size'));

final _navigine_sdk_flutter_LogInfo_GetFieldduration = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_LogInfo_get_field_duration'));

final _navigine_sdk_flutter_LogInfo_GetFielddate = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_LogInfo_get_field_date'));

final _navigine_sdk_flutter_LogInfo_GetFieldnumberOfCheckpoints = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_LogInfo_get_field_numberOfCheckpoints'));


Pointer<Void> navigine_sdk_flutter_LogInfo_ToFfi(LogInfo value) {
    final _nameHandle = navigine_sdk_flutter_String_ToFfi(value.name);
    final _absolutePathHandle = navigine_sdk_flutter_String_ToFfi(value.absolutePath);
    final _sizeHandle = navigine_sdk_flutter_int_ToFfi(value.size);
    final _durationHandle = navigine_sdk_flutter_int_ToFfi(value.duration);
    final _dateHandle = navigine_sdk_flutter_String_ToFfi(value.date);
    final _numberOfCheckpointsHandle = navigine_sdk_flutter_int_ToFfi(value.numberOfCheckpoints);
    final _result = _navigine_sdk_flutter_LogInfo_CreateHandle(_nameHandle, _absolutePathHandle, _sizeHandle, _durationHandle, _dateHandle, _numberOfCheckpointsHandle);
    navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
    navigine_sdk_flutter_String_ReleaseFfiHandle(_absolutePathHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_sizeHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_durationHandle);
    navigine_sdk_flutter_String_ReleaseFfiHandle(_dateHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_numberOfCheckpointsHandle);
    return _result;
}

LogInfo navigine_sdk_flutter_LogInfo_FromFfi(Pointer<Void> handle) {
    final _nameHandle = _navigine_sdk_flutter_LogInfo_GetFieldname(handle);
    final _absolutePathHandle = _navigine_sdk_flutter_LogInfo_GetFieldabsolutePath(handle);
    final _sizeHandle = _navigine_sdk_flutter_LogInfo_GetFieldsize(handle);
    final _durationHandle = _navigine_sdk_flutter_LogInfo_GetFieldduration(handle);
    final _dateHandle = _navigine_sdk_flutter_LogInfo_GetFielddate(handle);
    final _numberOfCheckpointsHandle = _navigine_sdk_flutter_LogInfo_GetFieldnumberOfCheckpoints(handle);
    final _result = LogInfo(
      navigine_sdk_flutter_String_FromFfi(_nameHandle),
      navigine_sdk_flutter_String_FromFfi(_absolutePathHandle),
      navigine_sdk_flutter_int_FromFfi(_sizeHandle),
      navigine_sdk_flutter_int_FromFfi(_durationHandle),
      navigine_sdk_flutter_String_FromFfi(_dateHandle),
      navigine_sdk_flutter_int_FromFfi(_numberOfCheckpointsHandle),
    );
      navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
      navigine_sdk_flutter_String_ReleaseFfiHandle(_absolutePathHandle);
      navigine_sdk_flutter_int_ReleaseFfiHandle(_sizeHandle);
      navigine_sdk_flutter_int_ReleaseFfiHandle(_durationHandle);
      navigine_sdk_flutter_String_ReleaseFfiHandle(_dateHandle);
      navigine_sdk_flutter_int_ReleaseFfiHandle(_numberOfCheckpointsHandle);
    return _result;
}

void navigine_sdk_flutter_LogInfo_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_LogInfo_ReleaseHandle(handle);

final _navigine_sdk_flutter_LogInfo_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_LogInfo_create_handle_nullable'));

final _navigine_sdk_flutter_LogInfo_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_LogInfo_release_handle_nullable'));

final _navigine_sdk_flutter_LogInfo_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_LogInfo_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_LogInfo_ToFfiNullable(LogInfo? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_LogInfo_ToFfi(value);
    final result = _navigine_sdk_flutter_LogInfo_CreateHandleNullable(_handle);
    navigine_sdk_flutter_LogInfo_ReleaseFfiHandle(_handle);
    return result;
}

LogInfo? navigine_sdk_flutter_LogInfo_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_LogInfo_GetValueNullable(handle);
    final result = navigine_sdk_flutter_LogInfo_FromFfi(_handle);
    navigine_sdk_flutter_LogInfo_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_LogInfo_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_LogInfo_ReleaseHandleNullable(handle);
