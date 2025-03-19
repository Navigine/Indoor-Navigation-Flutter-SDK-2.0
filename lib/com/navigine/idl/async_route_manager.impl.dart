part of 'async_route_manager.dart';

// AsyncRouteManager "private" section, not exported.

final _navigine_sdk_flutter_AsyncRouteManager_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_AsyncRouteManager_copy_handle'));

final _navigine_sdk_flutter_AsyncRouteManager_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_AsyncRouteManager_release_handle'));

final _navigine_sdk_flutter_AsyncRouteManager_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_AsyncRouteManager_free');


class AsyncRouteManager$Impl extends __lib.NativeBase implements AsyncRouteManager, Finalizable {
    AsyncRouteManager$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_AsyncRouteManager_free.cast());

    @override
    RouteSession createRouteSession(LocationPoint wayPoint, RouteOptions routeOptions) {
        final _createRouteSessionFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_AsyncRouteManager_createRouteSession__WayPoint_RouteOptions'));
        final _wayPointHandle = navigine_sdk_flutter_LocationPoint_ToFfi(wayPoint);
        final _routeOptionsHandle = navigine_sdk_flutter_RouteOptions_ToFfi(routeOptions);
        final _handle = this.handle;
        final __resultHandle = _createRouteSessionFfi(_handle, _wayPointHandle, _routeOptionsHandle);
        navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(_wayPointHandle);
        navigine_sdk_flutter_RouteOptions_ReleaseFfiHandle(_routeOptionsHandle);
        final _result = navigine_sdk_flutter_RouteSession_FromFfi(__resultHandle);
        navigine_sdk_flutter_RouteSession_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    void cancelRouteSession(RouteSession session) {
        final _cancelRouteSessionFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_AsyncRouteManager_cancelRouteSession__Session'));
        final _sessionHandle = navigine_sdk_flutter_RouteSession_ToFfi(session);
        final _handle = this.handle;
        _cancelRouteSessionFfi(_handle, _sessionHandle);
        navigine_sdk_flutter_RouteSession_ReleaseFfiHandle(_sessionHandle);
    }




}

Pointer<Void> navigine_sdk_flutter_AsyncRouteManager_ToFfi(AsyncRouteManager value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_AsyncRouteManager_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

AsyncRouteManager navigine_sdk_flutter_AsyncRouteManager_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_AsyncRouteManager_CopyHandle(handle);
    final result = AsyncRouteManager$Impl(_copiedHandle);
    AsyncRouteManager$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_AsyncRouteManager_ToFfiNullable(AsyncRouteManager? value) => 
  value != null ? navigine_sdk_flutter_AsyncRouteManager_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_AsyncRouteManager_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_AsyncRouteManager_ReleaseHandle(handle);

void navigine_sdk_flutter_AsyncRouteManager_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_AsyncRouteManager_ReleaseHandle(handle);

AsyncRouteManager? navigine_sdk_flutter_AsyncRouteManager_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_AsyncRouteManager_FromFfi(handle) : null;

// End of AsyncRouteManager "private" section.
