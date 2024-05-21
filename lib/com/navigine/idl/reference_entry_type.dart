import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

enum ReferenceEntryType {
    BEACON,
    WIFI,
    BLE,
    EDDYSTONE,
    MAGNET,
}

// ReferenceEntryType "private" section, not exported.

int navigine_sdk_flutter_ReferenceEntryType_ToFfi(ReferenceEntryType value) {
    switch (value) {
    case ReferenceEntryType.BEACON:
        return 0;
    case ReferenceEntryType.WIFI:
        return 1;
    case ReferenceEntryType.BLE:
        return 2;
    case ReferenceEntryType.EDDYSTONE:
        return 3;
    case ReferenceEntryType.MAGNET:
        return 4;
    default:
        throw StateError("Invalid enum value $value for ReferenceEntryType enum.");
    }
}

ReferenceEntryType navigine_sdk_flutter_ReferenceEntryType_FromFfi(int handle) {
    switch (handle) {
    case 0:
        return ReferenceEntryType.BEACON;
    case 1:
        return ReferenceEntryType.WIFI;
    case 2:
        return ReferenceEntryType.BLE;
    case 3:
        return ReferenceEntryType.EDDYSTONE;
    case 4:
        return ReferenceEntryType.MAGNET;
    default:
        throw StateError("Invalid numeric value $handle for ReferenceEntryType enum.");
    }
}

void navigine_sdk_flutter_ReferenceEntryType_ReleaseFfiHandle(int handle) {}

final _navigine_sdk_flutter_ReferenceEntryType_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint32),
    Pointer<Void> Function(int)
  >('navigine_sdk_flutter_ReferenceEntryType_create_handle_nullable'));

final _navigine_sdk_flutter_ReferenceEntryType_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_ReferenceEntryType_release_handle_nullable'));

final _navigine_sdk_flutter_ReferenceEntryType_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_ReferenceEntryType_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_ReferenceEntryType_ToFfiNullable(ReferenceEntryType? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_ReferenceEntryType_ToFfi(value);
    final result = _navigine_sdk_flutter_ReferenceEntryType_CreateHandleNullable(_handle);
    navigine_sdk_flutter_ReferenceEntryType_ReleaseFfiHandle(_handle);
    return result;
}

ReferenceEntryType? navigine_sdk_flutter_ReferenceEntryType_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_ReferenceEntryType_GetValueNullable(handle);
    final result = navigine_sdk_flutter_ReferenceEntryType_FromFfi(_handle);
    navigine_sdk_flutter_ReferenceEntryType_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_ReferenceEntryType_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_ReferenceEntryType_ReleaseHandleNullable(handle);

// End of ReferenceEntryType "private" section.
