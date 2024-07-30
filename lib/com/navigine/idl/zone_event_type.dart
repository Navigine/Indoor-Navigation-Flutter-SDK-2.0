import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

/** Describe zone event types */
enum ZoneEventType {
    /** Happens when user enters paticular zone; */
    ENTER,
    /** Happens when user leaves paticular zone, sublocation has been changed or zone has been removed; */
    EXIT,
}

// ZoneEventType "private" section, not exported.

int navigine_sdk_flutter_ZoneEventType_ToFfi(ZoneEventType value) {
    switch (value) {
    case ZoneEventType.ENTER:
        return 0;
    case ZoneEventType.EXIT:
        return 1;
    default:
        throw StateError("Invalid enum value $value for ZoneEventType enum.");
    }
}

ZoneEventType navigine_sdk_flutter_ZoneEventType_FromFfi(int handle) {
    switch (handle) {
    case 0:
        return ZoneEventType.ENTER;
    case 1:
        return ZoneEventType.EXIT;
    default:
        throw StateError("Invalid numeric value $handle for ZoneEventType enum.");
    }
}

void navigine_sdk_flutter_ZoneEventType_ReleaseFfiHandle(int handle) {}

final _navigine_sdk_flutter_ZoneEventType_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint32),
    Pointer<Void> Function(int)
  >('navigine_sdk_flutter_ZoneEventType_create_handle_nullable'));

final _navigine_sdk_flutter_ZoneEventType_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_ZoneEventType_release_handle_nullable'));

final _navigine_sdk_flutter_ZoneEventType_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_ZoneEventType_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_ZoneEventType_ToFfiNullable(ZoneEventType? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_ZoneEventType_ToFfi(value);
    final result = _navigine_sdk_flutter_ZoneEventType_CreateHandleNullable(_handle);
    navigine_sdk_flutter_ZoneEventType_ReleaseFfiHandle(_handle);
    return result;
}

ZoneEventType? navigine_sdk_flutter_ZoneEventType_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_ZoneEventType_GetValueNullable(handle);
    final result = navigine_sdk_flutter_ZoneEventType_FromFfi(_handle);
    navigine_sdk_flutter_ZoneEventType_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_ZoneEventType_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_ZoneEventType_ReleaseHandleNullable(handle);

// End of ZoneEventType "private" section.
