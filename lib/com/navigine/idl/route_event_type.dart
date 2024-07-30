import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

/** Available route events */
enum RouteEventType {
    /** An event showing a left turn. */
    TURN_LEFT,
    /** An event showing a right turn. */
    TURN_RIGHT,
    /** An event showing a chaning of sublocation (floor). */
    TRANSITION,
}

// RouteEventType "private" section, not exported.

int navigine_sdk_flutter_RouteEventType_ToFfi(RouteEventType value) {
    switch (value) {
    case RouteEventType.TURN_LEFT:
        return 0;
    case RouteEventType.TURN_RIGHT:
        return 1;
    case RouteEventType.TRANSITION:
        return 2;
    default:
        throw StateError("Invalid enum value $value for RouteEventType enum.");
    }
}

RouteEventType navigine_sdk_flutter_RouteEventType_FromFfi(int handle) {
    switch (handle) {
    case 0:
        return RouteEventType.TURN_LEFT;
    case 1:
        return RouteEventType.TURN_RIGHT;
    case 2:
        return RouteEventType.TRANSITION;
    default:
        throw StateError("Invalid numeric value $handle for RouteEventType enum.");
    }
}

void navigine_sdk_flutter_RouteEventType_ReleaseFfiHandle(int handle) {}

final _navigine_sdk_flutter_RouteEventType_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint32),
    Pointer<Void> Function(int)
  >('navigine_sdk_flutter_RouteEventType_create_handle_nullable'));

final _navigine_sdk_flutter_RouteEventType_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteEventType_release_handle_nullable'));

final _navigine_sdk_flutter_RouteEventType_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteEventType_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_RouteEventType_ToFfiNullable(RouteEventType? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_RouteEventType_ToFfi(value);
    final result = _navigine_sdk_flutter_RouteEventType_CreateHandleNullable(_handle);
    navigine_sdk_flutter_RouteEventType_ReleaseFfiHandle(_handle);
    return result;
}

RouteEventType? navigine_sdk_flutter_RouteEventType_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_RouteEventType_GetValueNullable(handle);
    final result = navigine_sdk_flutter_RouteEventType_FromFfi(_handle);
    navigine_sdk_flutter_RouteEventType_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_RouteEventType_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_RouteEventType_ReleaseHandleNullable(handle);

// End of RouteEventType "private" section.
