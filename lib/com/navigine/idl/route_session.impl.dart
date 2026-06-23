part of 'route_session.dart';

// RouteSession "private" section, not exported.

final _navigine_sdk_flutter_RouteSession_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteSession_check'));

final _navigine_sdk_flutter_RouteSession_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_RouteSession_free');


class RouteSession$Impl implements RouteSession, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_RouteSession_free.cast());

    RouteSession$Impl.fromExternalPtr(this.ptr);

    @internal
    RouteSession$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory RouteSession$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_RouteSession_check(ptr);

    static Pointer<Void> getNativePtr(RouteSession? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as RouteSession$Impl).ptr;
    }

    static RouteSession? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return RouteSession$Impl.fromNativePtr(ptr);
    }

    @override
    void addRouteListener(AsyncRouteListener listener) {
        final _addRouteListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_RouteSession_addRouteListener__Listener'));
        _addRouteListenerFfi(this.ptr, AsyncRouteListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void removeRouteListener(AsyncRouteListener listener) {
        final _removeRouteListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_RouteSession_removeRouteListener__Listener'));
        _removeRouteListenerFfi(this.ptr, AsyncRouteListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }




}

// End of RouteSession "private" section.
