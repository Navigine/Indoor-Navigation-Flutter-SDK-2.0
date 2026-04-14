part of 'log_message.dart';

// LogMessage "private" section, not exported.

final _navigine_sdk_flutter_LogMessage_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Int64, Uint32, Pointer<Void>, Pointer<Void>, Pointer<Void>),
    Pointer<Void> Function(int, int, Pointer<Void>, Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_LogMessage_create_handle'));

final _navigine_sdk_flutter_LogMessage_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_LogMessage_release_handle'));

final _navigine_sdk_flutter_LogMessage_GetFieldtime = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int64 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_LogMessage_get_field_time'));

final _navigine_sdk_flutter_LogMessage_GetFieldlevel = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_LogMessage_get_field_level'));

final _navigine_sdk_flutter_LogMessage_GetFieldscope = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_LogMessage_get_field_scope'));

final _navigine_sdk_flutter_LogMessage_GetFieldmessage = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_LogMessage_get_field_message'));

final _navigine_sdk_flutter_LogMessage_GetFieldverboseInfo = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_LogMessage_get_field_verboseInfo'));


Pointer<Void> navigine_sdk_flutter_LogMessage_ToFfi(LogMessage value) {
    final _timeHandle = navigine_sdk_flutter_int_ToFfi(value.time);
    final _levelHandle = navigine_sdk_flutter_LogLevel_ToFfi(value.level);
    final _scopeHandle = navigine_sdk_flutter_String_ToFfi(value.scope);
    final _messageHandle = navigine_sdk_flutter_String_ToFfi(value.message);
    final _verboseInfoHandle = navigine_sdk_flutter_String_ToFfi(value.verboseInfo);
    final _result = _navigine_sdk_flutter_LogMessage_CreateHandle(_timeHandle, _levelHandle, _scopeHandle, _messageHandle, _verboseInfoHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_timeHandle);
    navigine_sdk_flutter_LogLevel_ReleaseFfiHandle(_levelHandle);
    navigine_sdk_flutter_String_ReleaseFfiHandle(_scopeHandle);
    navigine_sdk_flutter_String_ReleaseFfiHandle(_messageHandle);
    navigine_sdk_flutter_String_ReleaseFfiHandle(_verboseInfoHandle);
    return _result;
}

LogMessage navigine_sdk_flutter_LogMessage_FromFfi(Pointer<Void> handle) {
    final _timeHandle = _navigine_sdk_flutter_LogMessage_GetFieldtime(handle);
    final _levelHandle = _navigine_sdk_flutter_LogMessage_GetFieldlevel(handle);
    final _scopeHandle = _navigine_sdk_flutter_LogMessage_GetFieldscope(handle);
    final _messageHandle = _navigine_sdk_flutter_LogMessage_GetFieldmessage(handle);
    final _verboseInfoHandle = _navigine_sdk_flutter_LogMessage_GetFieldverboseInfo(handle);
    final _result = LogMessage(
      navigine_sdk_flutter_int_FromFfi(_timeHandle),
      navigine_sdk_flutter_LogLevel_FromFfi(_levelHandle),
      navigine_sdk_flutter_String_FromFfi(_scopeHandle),
      navigine_sdk_flutter_String_FromFfi(_messageHandle),
      navigine_sdk_flutter_String_FromFfi(_verboseInfoHandle),
    );
      navigine_sdk_flutter_int_ReleaseFfiHandle(_timeHandle);
      navigine_sdk_flutter_LogLevel_ReleaseFfiHandle(_levelHandle);
      navigine_sdk_flutter_String_ReleaseFfiHandle(_scopeHandle);
      navigine_sdk_flutter_String_ReleaseFfiHandle(_messageHandle);
      navigine_sdk_flutter_String_ReleaseFfiHandle(_verboseInfoHandle);
    return _result;
}

void navigine_sdk_flutter_LogMessage_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_LogMessage_ReleaseHandle(handle);

final _navigine_sdk_flutter_LogMessage_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_LogMessage_create_handle_nullable'));

final _navigine_sdk_flutter_LogMessage_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_LogMessage_release_handle_nullable'));

final _navigine_sdk_flutter_LogMessage_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_LogMessage_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_LogMessage_ToFfiNullable(LogMessage? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_LogMessage_ToFfi(value);
    final result = _navigine_sdk_flutter_LogMessage_CreateHandleNullable(_handle);
    navigine_sdk_flutter_LogMessage_ReleaseFfiHandle(_handle);
    return result;
}

LogMessage? navigine_sdk_flutter_LogMessage_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_LogMessage_GetValueNullable(handle);
    final result = navigine_sdk_flutter_LogMessage_FromFfi(_handle);
    navigine_sdk_flutter_LogMessage_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_LogMessage_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_LogMessage_ReleaseHandleNullable(handle);
