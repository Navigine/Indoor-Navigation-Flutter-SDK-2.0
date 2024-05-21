import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

enum TransmitterStatus {
    NONE,
    NEW,
    DELETED,
    MODIFIED,
}

// TransmitterStatus "private" section, not exported.

int navigine_sdk_flutter_TransmitterStatus_ToFfi(TransmitterStatus value) {
    switch (value) {
    case TransmitterStatus.NONE:
        return 0;
    case TransmitterStatus.NEW:
        return 1;
    case TransmitterStatus.DELETED:
        return 2;
    case TransmitterStatus.MODIFIED:
        return 3;
    default:
        throw StateError("Invalid enum value $value for TransmitterStatus enum.");
    }
}

TransmitterStatus navigine_sdk_flutter_TransmitterStatus_FromFfi(int handle) {
    switch (handle) {
    case 0:
        return TransmitterStatus.NONE;
    case 1:
        return TransmitterStatus.NEW;
    case 2:
        return TransmitterStatus.DELETED;
    case 3:
        return TransmitterStatus.MODIFIED;
    default:
        throw StateError("Invalid numeric value $handle for TransmitterStatus enum.");
    }
}

void navigine_sdk_flutter_TransmitterStatus_ReleaseFfiHandle(int handle) {}

final _navigine_sdk_flutter_TransmitterStatus_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint32),
    Pointer<Void> Function(int)
  >('navigine_sdk_flutter_TransmitterStatus_create_handle_nullable'));

final _navigine_sdk_flutter_TransmitterStatus_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_TransmitterStatus_release_handle_nullable'));

final _navigine_sdk_flutter_TransmitterStatus_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_TransmitterStatus_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_TransmitterStatus_ToFfiNullable(TransmitterStatus? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_TransmitterStatus_ToFfi(value);
    final result = _navigine_sdk_flutter_TransmitterStatus_CreateHandleNullable(_handle);
    navigine_sdk_flutter_TransmitterStatus_ReleaseFfiHandle(_handle);
    return result;
}

TransmitterStatus? navigine_sdk_flutter_TransmitterStatus_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_TransmitterStatus_GetValueNullable(handle);
    final result = navigine_sdk_flutter_TransmitterStatus_FromFfi(_handle);
    navigine_sdk_flutter_TransmitterStatus_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_TransmitterStatus_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_TransmitterStatus_ReleaseHandleNullable(handle);

// End of TransmitterStatus "private" section.
