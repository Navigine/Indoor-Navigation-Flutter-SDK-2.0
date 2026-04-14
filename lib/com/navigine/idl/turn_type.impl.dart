part of 'turn_type.dart';

// TurnType "private" section, not exported.

int navigine_sdk_flutter_TurnType_ToFfi(TurnType value) {
    switch (value) {
    case TurnType.LEFT_SLIGHT:
        return 0;
    case TurnType.LEFT_NORMAL:
        return 1;
    case TurnType.LEFT_SHARP:
        return 2;
    case TurnType.RIGHT_SLIGHT:
        return 3;
    case TurnType.RIGHT_NORMAL:
        return 4;
    case TurnType.RIGHT_SHARP:
        return 5;
    case TurnType.COMPLETE:
        return 6;
    }
}

TurnType navigine_sdk_flutter_TurnType_FromFfi(int handle) {
    switch (handle) {
    case 0:
        return TurnType.LEFT_SLIGHT;
    case 1:
        return TurnType.LEFT_NORMAL;
    case 2:
        return TurnType.LEFT_SHARP;
    case 3:
        return TurnType.RIGHT_SLIGHT;
    case 4:
        return TurnType.RIGHT_NORMAL;
    case 5:
        return TurnType.RIGHT_SHARP;
    case 6:
        return TurnType.COMPLETE;
    default:
        throw StateError("Invalid numeric value $handle for TurnType enum.");
    }
}

void navigine_sdk_flutter_TurnType_ReleaseFfiHandle(int handle) {}

final _navigine_sdk_flutter_TurnType_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint32),
    Pointer<Void> Function(int)
  >('navigine_sdk_flutter_TurnType_create_handle_nullable'));

final _navigine_sdk_flutter_TurnType_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_TurnType_release_handle_nullable'));

final _navigine_sdk_flutter_TurnType_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_TurnType_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_TurnType_ToFfiNullable(TurnType? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_TurnType_ToFfi(value);
    final result = _navigine_sdk_flutter_TurnType_CreateHandleNullable(_handle);
    navigine_sdk_flutter_TurnType_ReleaseFfiHandle(_handle);
    return result;
}

TurnType? navigine_sdk_flutter_TurnType_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_TurnType_GetValueNullable(handle);
    final result = navigine_sdk_flutter_TurnType_FromFfi(_handle);
    navigine_sdk_flutter_TurnType_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_TurnType_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_TurnType_ReleaseHandleNullable(handle);

// End of TurnType "private" section.
