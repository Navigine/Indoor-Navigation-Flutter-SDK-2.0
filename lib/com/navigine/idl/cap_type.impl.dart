part of 'cap_type.dart';

// CapType "private" section, not exported.

int navigine_sdk_flutter_CapType_ToFfi(CapType value) {
    switch (value) {
    case CapType.BUTT:
        return 0;
    case CapType.SQUARE:
        return 1;
    case CapType.ROUND:
        return 2;
    }
}

CapType navigine_sdk_flutter_CapType_FromFfi(int handle) {
    switch (handle) {
    case 0:
        return CapType.BUTT;
    case 1:
        return CapType.SQUARE;
    case 2:
        return CapType.ROUND;
    default:
        throw StateError("Invalid numeric value $handle for CapType enum.");
    }
}

void navigine_sdk_flutter_CapType_ReleaseFfiHandle(int handle) {}

final _navigine_sdk_flutter_CapType_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint32),
    Pointer<Void> Function(int)
  >('navigine_sdk_flutter_CapType_create_handle_nullable'));

final _navigine_sdk_flutter_CapType_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_CapType_release_handle_nullable'));

final _navigine_sdk_flutter_CapType_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_CapType_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_CapType_ToFfiNullable(CapType? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_CapType_ToFfi(value);
    final result = _navigine_sdk_flutter_CapType_CreateHandleNullable(_handle);
    navigine_sdk_flutter_CapType_ReleaseFfiHandle(_handle);
    return result;
}

CapType? navigine_sdk_flutter_CapType_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_CapType_GetValueNullable(handle);
    final result = navigine_sdk_flutter_CapType_FromFfi(_handle);
    navigine_sdk_flutter_CapType_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_CapType_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_CapType_ReleaseHandleNullable(handle);

// End of CapType "private" section.
