part of 'async_route_manager.dart';

// AsyncRouteManager "private" section, not exported.

final _navigine_sdk_flutter_AsyncRouteManager_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_AsyncRouteManager_free');


class AsyncRouteManager$Impl implements AsyncRouteManager, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_AsyncRouteManager_free.cast());

    AsyncRouteManager$Impl.fromExternalPtr(this.ptr);

    @internal
    AsyncRouteManager$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory AsyncRouteManager$Impl.fromNativePtr(Pointer<Void> ptr) =>
        AsyncRouteManager$Impl.fromNativePtrImpl(ptr);


    static Pointer<Void> getNativePtr(AsyncRouteManager? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as AsyncRouteManager$Impl).ptr;
    }

    static AsyncRouteManager? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return AsyncRouteManager$Impl.fromNativePtr(ptr);
    }

    @override
    RouteSession createRouteSession(LocationPoint wayPoint, RouteOptions routeOptions) {
        final _createRouteSessionFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, LocationPointNative, RouteOptionsNative),
            Pointer<Void> Function(Pointer<Void>, LocationPointNative, RouteOptionsNative)
          >('navigine_sdk_flutter_AsyncRouteManager_createRouteSession__WayPoint_RouteOptions'));
        final __resultHandle = _createRouteSessionFfi(this.ptr, LocationPointImpl.toNative(wayPoint), RouteOptionsImpl.toNative(routeOptions));
        final _result = RouteSession$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    RouteSession createRouteSessionWithTag(LocationPoint wayPoint, RouteOptions routeOptions, String tag) {
        final _createRouteSessionWithTagFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, LocationPointNative, RouteOptionsNative, NativeString),
            Pointer<Void> Function(Pointer<Void>, LocationPointNative, RouteOptionsNative, NativeString)
          >('navigine_sdk_flutter_AsyncRouteManager_createRouteSessionWithTag__WayPoint_RouteOptions_Tag'));
        final __resultHandle = _createRouteSessionWithTagFfi(this.ptr, LocationPointImpl.toNative(wayPoint), RouteOptionsImpl.toNative(routeOptions), toNativeString(tag));
        final _result = RouteSession$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    void cancelRouteSession(RouteSession session) {
        final _cancelRouteSessionFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_AsyncRouteManager_cancelRouteSession__Session'));
        _cancelRouteSessionFfi(this.ptr, RouteSession$Impl.getNativePtr(session));
        exception.checkCallResult();
    }




}

// End of AsyncRouteManager "private" section.
