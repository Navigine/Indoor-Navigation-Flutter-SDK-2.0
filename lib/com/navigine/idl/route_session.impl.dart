part of 'route_session.dart';

// RouteSession "private" section, not exported.

final _navigine_sdk_flutter_RouteSession_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteSession_copy_handle'));

final _navigine_sdk_flutter_RouteSession_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteSession_release_handle'));

final _navigine_sdk_flutter_RouteSession_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_RouteSession_free');


class RouteSession$Impl extends __lib.NativeBase implements RouteSession, Finalizable {
    RouteSession$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_RouteSession_free.cast());

    @override
    void addRouteListener(AsyncRouteListener listener) {
        final _addRouteListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_RouteSession_addRouteListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_AsyncRouteListener_ToFfi(listener);
        final _handle = this.handle;
        _addRouteListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_AsyncRouteListener_ReleaseFfiHandle(_listenerHandle);
    }

    @override
    void removeRouteListener(AsyncRouteListener listener) {
        final _removeRouteListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_RouteSession_removeRouteListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_AsyncRouteListener_ToFfi(listener);
        final _handle = this.handle;
        _removeRouteListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_AsyncRouteListener_ReleaseFfiHandle(_listenerHandle);
    }




}

Pointer<Void> navigine_sdk_flutter_RouteSession_ToFfi(RouteSession value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_RouteSession_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

RouteSession navigine_sdk_flutter_RouteSession_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_RouteSession_CopyHandle(handle);
    final result = RouteSession$Impl(_copiedHandle);
    RouteSession$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_RouteSession_ToFfiNullable(RouteSession? value) => 
  value != null ? navigine_sdk_flutter_RouteSession_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_RouteSession_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_RouteSession_ReleaseHandle(handle);

void navigine_sdk_flutter_RouteSession_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_RouteSession_ReleaseHandle(handle);

RouteSession? navigine_sdk_flutter_RouteSession_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_RouteSession_FromFfi(handle) : null;

// End of RouteSession "private" section.
