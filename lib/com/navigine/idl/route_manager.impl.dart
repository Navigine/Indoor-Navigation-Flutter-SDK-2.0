part of 'route_manager.dart';

// RouteManager "private" section, not exported.

final _navigine_sdk_flutter_RouteManager_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_RouteManager_free');


class RouteManager$Impl implements RouteManager, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_RouteManager_free.cast());

    RouteManager$Impl.fromExternalPtr(this.ptr);

    @internal
    RouteManager$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory RouteManager$Impl.fromNativePtr(Pointer<Void> ptr) =>
        RouteManager$Impl.fromNativePtrImpl(ptr);


    static Pointer<Void> getNativePtr(RouteManager? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as RouteManager$Impl).ptr;
    }

    static RouteManager? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return RouteManager$Impl.fromNativePtr(ptr);
    }

    @override
    RoutePath makeRoute(LocationPoint from, LocationPoint to) {
        final _makeRouteFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, LocationPointNative, LocationPointNative),
            Pointer<Void> Function(Pointer<Void>, LocationPointNative, LocationPointNative)
          >('navigine_sdk_flutter_RouteManager_makeRoute__From_To'));
        final __resultHandle = _makeRouteFfi(this.ptr, LocationPointImpl.toNative(from), LocationPointImpl.toNative(to));
        final _result = RoutePath$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    List<RoutePath> makeRoutes(LocationPoint from, List<LocationPoint> to) {
        final _makeRoutesFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, LocationPointNative, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, LocationPointNative, Pointer<Void>)
          >('navigine_sdk_flutter_RouteManager_makeRoutes__From_To'));
        final __resultHandle = _makeRoutesFfi(this.ptr, LocationPointImpl.toNative(from), ListLocationPointImpl.getNativePtr(to));
        final _result = ListRoutePathImpl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    void setTarget(LocationPoint target) {
        final _setTargetFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, LocationPointNative),
            void Function(Pointer<Void>, LocationPointNative)
          >('navigine_sdk_flutter_RouteManager_setTarget__Target'));
        _setTargetFfi(this.ptr, LocationPointImpl.toNative(target));
        exception.checkCallResult();
    }

    @override
    void addTarget(LocationPoint target) {
        final _addTargetFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, LocationPointNative),
            void Function(Pointer<Void>, LocationPointNative)
          >('navigine_sdk_flutter_RouteManager_addTarget__Target'));
        _addTargetFfi(this.ptr, LocationPointImpl.toNative(target));
        exception.checkCallResult();
    }

    @override
    void cancelTarget() {
        final _cancelTargetFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_RouteManager_cancelTarget'));
        _cancelTargetFfi(this.ptr, );
        exception.checkCallResult();
    }

    @override
    void clearTargets() {
        final _clearTargetsFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_RouteManager_clearTargets'));
        _clearTargetsFfi(this.ptr, );
        exception.checkCallResult();
    }

    @override
    void setGraphTag(String tag) {
        final _setGraphTagFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, NativeString),
            void Function(Pointer<Void>, NativeString)
          >('navigine_sdk_flutter_RouteManager_setGraphTag__Tag'));
        _setGraphTagFfi(this.ptr, toNativeString(tag));
        exception.checkCallResult();
    }

    @override
    String getGraphTag() {
        final _getGraphTagFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>, ),
            NativeString Function(Pointer<Void>, )
          >('navigine_sdk_flutter_RouteManager_getGraphTag'));
        final __resultHandle = _getGraphTagFfi(this.ptr, );
        final _result = toPlatformString(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    List<String> getGraphTags() {
        final _getGraphTagsFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_RouteManager_getGraphTags'));
        final __resultHandle = _getGraphTagsFfi(this.ptr, );
        final _result = ListStringImpl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    void addRouteListener(RouteListener listener) {
        final _addRouteListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_RouteManager_addRouteListener__Listener'));
        _addRouteListenerFfi(this.ptr, RouteListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void removeRouteListener(RouteListener listener) {
        final _removeRouteListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_RouteManager_removeRouteListener__Listener'));
        _removeRouteListenerFfi(this.ptr, RouteListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }




}

// End of RouteManager "private" section.
