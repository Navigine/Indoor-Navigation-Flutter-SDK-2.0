import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

enum SignalType {
    WIFI,
    BEACON,
    BLUETOOTH,
    EDDYSTONE,
    WIFI_RTT,
}

// SignalType "private" section, not exported.

int navigine_sdk_flutter_SignalType_ToFfi(SignalType value) {
    switch (value) {
    case SignalType.WIFI:
        return 0;
    case SignalType.BEACON:
        return 1;
    case SignalType.BLUETOOTH:
        return 2;
    case SignalType.EDDYSTONE:
        return 3;
    case SignalType.WIFI_RTT:
        return 4;
    default:
        throw StateError("Invalid enum value $value for SignalType enum.");
    }
}

SignalType navigine_sdk_flutter_SignalType_FromFfi(int handle) {
    switch (handle) {
    case 0:
        return SignalType.WIFI;
    case 1:
        return SignalType.BEACON;
    case 2:
        return SignalType.BLUETOOTH;
    case 3:
        return SignalType.EDDYSTONE;
    case 4:
        return SignalType.WIFI_RTT;
    default:
        throw StateError("Invalid numeric value $handle for SignalType enum.");
    }
}

void navigine_sdk_flutter_SignalType_ReleaseFfiHandle(int handle) {}

final _navigine_sdk_flutter_SignalType_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint32),
    Pointer<Void> Function(int)
  >('navigine_sdk_flutter_SignalType_create_handle_nullable'));

final _navigine_sdk_flutter_SignalType_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_SignalType_release_handle_nullable'));

final _navigine_sdk_flutter_SignalType_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_SignalType_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_SignalType_ToFfiNullable(SignalType? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_SignalType_ToFfi(value);
    final result = _navigine_sdk_flutter_SignalType_CreateHandleNullable(_handle);
    navigine_sdk_flutter_SignalType_ReleaseFfiHandle(_handle);
    return result;
}

SignalType? navigine_sdk_flutter_SignalType_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_SignalType_GetValueNullable(handle);
    final result = navigine_sdk_flutter_SignalType_FromFfi(_handle);
    navigine_sdk_flutter_SignalType_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_SignalType_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_SignalType_ReleaseHandleNullable(handle);

// End of SignalType "private" section.
