part of 'route_status.dart';

// RouteStatus "private" section, not exported.

int navigine_sdk_flutter_RouteStatus_ToFfi(RouteStatus value) {
    switch (value) {
    case RouteStatus.MISSING_GRAPH:
        return 0;
    case RouteStatus.MISSING_POSITION:
        return 1;
    case RouteStatus.MISSING_ROUTE:
        return 2;
    case RouteStatus.MISSING_PROJECTION:
        return 3;
    case RouteStatus.NEW_ROUTE:
        return 4;
    }
}

RouteStatus navigine_sdk_flutter_RouteStatus_FromFfi(int handle) {
    switch (handle) {
    case 0:
        return RouteStatus.MISSING_GRAPH;
    case 1:
        return RouteStatus.MISSING_POSITION;
    case 2:
        return RouteStatus.MISSING_ROUTE;
    case 3:
        return RouteStatus.MISSING_PROJECTION;
    case 4:
        return RouteStatus.NEW_ROUTE;
    default:
        throw StateError("Invalid numeric value $handle for RouteStatus enum.");
    }
}

void navigine_sdk_flutter_RouteStatus_ReleaseFfiHandle(int handle) {}

final _navigine_sdk_flutter_RouteStatus_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint32),
    Pointer<Void> Function(int)
  >('navigine_sdk_flutter_RouteStatus_create_handle_nullable'));

final _navigine_sdk_flutter_RouteStatus_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteStatus_release_handle_nullable'));

final _navigine_sdk_flutter_RouteStatus_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteStatus_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_RouteStatus_ToFfiNullable(RouteStatus? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_RouteStatus_ToFfi(value);
    final result = _navigine_sdk_flutter_RouteStatus_CreateHandleNullable(_handle);
    navigine_sdk_flutter_RouteStatus_ReleaseFfiHandle(_handle);
    return result;
}

RouteStatus? navigine_sdk_flutter_RouteStatus_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_RouteStatus_GetValueNullable(handle);
    final result = navigine_sdk_flutter_RouteStatus_FromFfi(_handle);
    navigine_sdk_flutter_RouteStatus_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_RouteStatus_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_RouteStatus_ReleaseHandleNullable(handle);

// End of RouteStatus "private" section.
