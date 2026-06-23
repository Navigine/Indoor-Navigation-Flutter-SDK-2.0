part of 'async_route_listener.dart';

// AsyncRouteListener "private" section, not exported.

final _navigine_sdk_flutter_AsyncRouteListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_AsyncRouteListener_free');

final _navigine_sdk_flutter_AsyncRouteListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer)
  >('navigine_sdk_flutter_AsyncRouteListener_create_proxy'));

final _navigine_sdk_flutter_AsyncRouteListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_AsyncRouteListener_set_ports'));

int _navigine_sdk_flutter_AsyncRouteListener_onRouteChangedStatic(Pointer<Void> _obj, int status, Pointer<Void> currentPath) {
    
    final listener = AsyncRouteListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onRouteChanged(
          RouteStatusImpl.fromInt(status),
          RoutePath$Impl.fromNativePtr(currentPath),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}

int _navigine_sdk_flutter_AsyncRouteListener_onRouteAdvancedStatic(Pointer<Void> _obj, double distance, LocationPointNative point) {
    
    final listener = AsyncRouteListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onRouteAdvanced(
          distance,
          LocationPointImpl.fromNative(point),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}


final class _navigine_sdk_flutter_AsyncRouteListenerNativeWrapper implements Finalizable {
    _navigine_sdk_flutter_AsyncRouteListenerNativeWrapper(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_AsyncRouteListener_free.cast());
    final Pointer<Void> ptr;
}

extension AsyncRouteListenerImpl on AsyncRouteListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<AsyncRouteListener>>{};
    static final _listenerToPointer = weak_map.WeakMap<AsyncRouteListener, _navigine_sdk_flutter_AsyncRouteListenerNativeWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }

    static Pointer<Void> _newNativeObject(AsyncRouteListener obj) {
        final ptr = _navigine_sdk_flutter_AsyncRouteListener_CreateProxy(
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, Uint32, Pointer<Void>)>(_navigine_sdk_flutter_AsyncRouteListener_onRouteChangedStatic, __lib.unknownError),
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, Float, LocationPointNative)>(_navigine_sdk_flutter_AsyncRouteListener_onRouteAdvancedStatic, __lib.unknownError),
        );
        _pointerToListener[ptr] = WeakReference(obj);
        _listenerToPointer[obj] = _navigine_sdk_flutter_AsyncRouteListenerNativeWrapper(ptr);
        _navigine_sdk_flutter_AsyncRouteListener_SetPorts(ptr, __lib.createPortWithCallback(_destructor), __lib.createExecutePort());
        return ptr;
    }

    static Pointer<Void> getNativePtr(AsyncRouteListener? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        final foundPointer = _listenerToPointer[obj];
        if (foundPointer == null) {
            return _newNativeObject(obj);
        }
        return foundPointer.ptr;
    }
}

// End of AsyncRouteListener "private" section.
