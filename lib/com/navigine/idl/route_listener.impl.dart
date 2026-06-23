part of 'route_listener.dart';

// RouteListener "private" section, not exported.

final _navigine_sdk_flutter_RouteListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_RouteListener_free');

final _navigine_sdk_flutter_RouteListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer),
    Pointer<Void> Function(Pointer)
  >('navigine_sdk_flutter_RouteListener_create_proxy'));

final _navigine_sdk_flutter_RouteListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_RouteListener_set_ports'));

int _navigine_sdk_flutter_RouteListener_onPathsUpdatedStatic(Pointer<Void> _obj, Pointer<Void> paths) {
    
    final listener = RouteListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onPathsUpdated(
          ListRoutePathImpl.fromNativePtr(paths),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}


final class _navigine_sdk_flutter_RouteListenerNativeWrapper implements Finalizable {
    _navigine_sdk_flutter_RouteListenerNativeWrapper(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_RouteListener_free.cast());
    final Pointer<Void> ptr;
}

extension RouteListenerImpl on RouteListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<RouteListener>>{};
    static final _listenerToPointer = weak_map.WeakMap<RouteListener, _navigine_sdk_flutter_RouteListenerNativeWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }

    static Pointer<Void> _newNativeObject(RouteListener obj) {
        final ptr = _navigine_sdk_flutter_RouteListener_CreateProxy(
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_RouteListener_onPathsUpdatedStatic, __lib.unknownError),
        );
        _pointerToListener[ptr] = WeakReference(obj);
        _listenerToPointer[obj] = _navigine_sdk_flutter_RouteListenerNativeWrapper(ptr);
        _navigine_sdk_flutter_RouteListener_SetPorts(ptr, __lib.createPortWithCallback(_destructor), __lib.createExecutePort());
        return ptr;
    }

    static Pointer<Void> getNativePtr(RouteListener? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        final foundPointer = _listenerToPointer[obj];
        if (foundPointer == null) {
            return _newNativeObject(obj);
        }
        return foundPointer.ptr;
    }
}

// End of RouteListener "private" section.
