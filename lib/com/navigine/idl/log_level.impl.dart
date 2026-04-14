part of 'log_level.dart';

// LogLevel "private" section, not exported.

int navigine_sdk_flutter_LogLevel_ToFfi(LogLevel value) {
    switch (value) {
    case LogLevel.ERROR:
        return 0;
    case LogLevel.WARNING:
        return 1;
    case LogLevel.INFO:
        return 2;
    case LogLevel.DEBUGGING:
        return 3;
    }
}

LogLevel navigine_sdk_flutter_LogLevel_FromFfi(int handle) {
    switch (handle) {
    case 0:
        return LogLevel.ERROR;
    case 1:
        return LogLevel.WARNING;
    case 2:
        return LogLevel.INFO;
    case 3:
        return LogLevel.DEBUGGING;
    default:
        throw StateError("Invalid numeric value $handle for LogLevel enum.");
    }
}

void navigine_sdk_flutter_LogLevel_ReleaseFfiHandle(int handle) {}

final _navigine_sdk_flutter_LogLevel_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint32),
    Pointer<Void> Function(int)
  >('navigine_sdk_flutter_LogLevel_create_handle_nullable'));

final _navigine_sdk_flutter_LogLevel_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_LogLevel_release_handle_nullable'));

final _navigine_sdk_flutter_LogLevel_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_LogLevel_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_LogLevel_ToFfiNullable(LogLevel? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_LogLevel_ToFfi(value);
    final result = _navigine_sdk_flutter_LogLevel_CreateHandleNullable(_handle);
    navigine_sdk_flutter_LogLevel_ReleaseFfiHandle(_handle);
    return result;
}

LogLevel? navigine_sdk_flutter_LogLevel_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_LogLevel_GetValueNullable(handle);
    final result = navigine_sdk_flutter_LogLevel_FromFfi(_handle);
    navigine_sdk_flutter_LogLevel_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_LogLevel_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_LogLevel_ReleaseHandleNullable(handle);

// End of LogLevel "private" section.
