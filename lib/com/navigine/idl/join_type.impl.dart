part of 'join_type.dart';

// JoinType "private" section, not exported.

int navigine_sdk_flutter_JoinType_ToFfi(JoinType value) {
    switch (value) {
    case JoinType.MITER:
        return 0;
    case JoinType.BEVEL:
        return 1;
    case JoinType.ROUND:
        return 2;
    }
}

JoinType navigine_sdk_flutter_JoinType_FromFfi(int handle) {
    switch (handle) {
    case 0:
        return JoinType.MITER;
    case 1:
        return JoinType.BEVEL;
    case 2:
        return JoinType.ROUND;
    default:
        throw StateError("Invalid numeric value $handle for JoinType enum.");
    }
}

void navigine_sdk_flutter_JoinType_ReleaseFfiHandle(int handle) {}

final _navigine_sdk_flutter_JoinType_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint32),
    Pointer<Void> Function(int)
  >('navigine_sdk_flutter_JoinType_create_handle_nullable'));

final _navigine_sdk_flutter_JoinType_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_JoinType_release_handle_nullable'));

final _navigine_sdk_flutter_JoinType_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_JoinType_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_JoinType_ToFfiNullable(JoinType? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_JoinType_ToFfi(value);
    final result = _navigine_sdk_flutter_JoinType_CreateHandleNullable(_handle);
    navigine_sdk_flutter_JoinType_ReleaseFfiHandle(_handle);
    return result;
}

JoinType? navigine_sdk_flutter_JoinType_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_JoinType_GetValueNullable(handle);
    final result = navigine_sdk_flutter_JoinType_FromFfi(_handle);
    navigine_sdk_flutter_JoinType_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_JoinType_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_JoinType_ReleaseHandleNullable(handle);

// End of JoinType "private" section.
