part of 'debug_flag.dart';

// DebugFlag "private" section, not exported.

int navigine_sdk_flutter_DebugFlag_ToFfi(DebugFlag value) {
    switch (value) {
    case DebugFlag.NONE:
        return 0;
    case DebugFlag.INFOS:
        return 1;
    case DebugFlag.STATS:
        return 2;
    case DebugFlag.LABELS:
        return 3;
    case DebugFlag.DRAW_ALL_LABELS:
        return 4;
    case DebugFlag.SELECTION_BUFFER:
        return 5;
    }
}

DebugFlag navigine_sdk_flutter_DebugFlag_FromFfi(int handle) {
    switch (handle) {
    case 0:
        return DebugFlag.NONE;
    case 1:
        return DebugFlag.INFOS;
    case 2:
        return DebugFlag.STATS;
    case 3:
        return DebugFlag.LABELS;
    case 4:
        return DebugFlag.DRAW_ALL_LABELS;
    case 5:
        return DebugFlag.SELECTION_BUFFER;
    default:
        throw StateError("Invalid numeric value $handle for DebugFlag enum.");
    }
}

void navigine_sdk_flutter_DebugFlag_ReleaseFfiHandle(int handle) {}

final _navigine_sdk_flutter_DebugFlag_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint32),
    Pointer<Void> Function(int)
  >('navigine_sdk_flutter_DebugFlag_create_handle_nullable'));

final _navigine_sdk_flutter_DebugFlag_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_DebugFlag_release_handle_nullable'));

final _navigine_sdk_flutter_DebugFlag_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_DebugFlag_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_DebugFlag_ToFfiNullable(DebugFlag? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_DebugFlag_ToFfi(value);
    final result = _navigine_sdk_flutter_DebugFlag_CreateHandleNullable(_handle);
    navigine_sdk_flutter_DebugFlag_ReleaseFfiHandle(_handle);
    return result;
}

DebugFlag? navigine_sdk_flutter_DebugFlag_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_DebugFlag_GetValueNullable(handle);
    final result = navigine_sdk_flutter_DebugFlag_FromFfi(_handle);
    navigine_sdk_flutter_DebugFlag_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_DebugFlag_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_DebugFlag_ReleaseHandleNullable(handle);

// End of DebugFlag "private" section.
