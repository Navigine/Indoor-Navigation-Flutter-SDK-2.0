part of 'camera_update_reason.dart';

// CameraUpdateReason "private" section, not exported.

int navigine_sdk_flutter_CameraUpdateReason_ToFfi(CameraUpdateReason value) {
    switch (value) {
    case CameraUpdateReason.GESTURES:
        return 0;
    case CameraUpdateReason.APPLICATION:
        return 1;
    }
}

CameraUpdateReason navigine_sdk_flutter_CameraUpdateReason_FromFfi(int handle) {
    switch (handle) {
    case 0:
        return CameraUpdateReason.GESTURES;
    case 1:
        return CameraUpdateReason.APPLICATION;
    default:
        throw StateError("Invalid numeric value $handle for CameraUpdateReason enum.");
    }
}

void navigine_sdk_flutter_CameraUpdateReason_ReleaseFfiHandle(int handle) {}

final _navigine_sdk_flutter_CameraUpdateReason_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint32),
    Pointer<Void> Function(int)
  >('navigine_sdk_flutter_CameraUpdateReason_create_handle_nullable'));

final _navigine_sdk_flutter_CameraUpdateReason_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_CameraUpdateReason_release_handle_nullable'));

final _navigine_sdk_flutter_CameraUpdateReason_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_CameraUpdateReason_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_CameraUpdateReason_ToFfiNullable(CameraUpdateReason? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_CameraUpdateReason_ToFfi(value);
    final result = _navigine_sdk_flutter_CameraUpdateReason_CreateHandleNullable(_handle);
    navigine_sdk_flutter_CameraUpdateReason_ReleaseFfiHandle(_handle);
    return result;
}

CameraUpdateReason? navigine_sdk_flutter_CameraUpdateReason_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_CameraUpdateReason_GetValueNullable(handle);
    final result = navigine_sdk_flutter_CameraUpdateReason_FromFfi(_handle);
    navigine_sdk_flutter_CameraUpdateReason_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_CameraUpdateReason_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_CameraUpdateReason_ReleaseHandleNullable(handle);

// End of CameraUpdateReason "private" section.
