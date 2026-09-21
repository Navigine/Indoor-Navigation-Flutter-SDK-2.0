part of 'route_view_listener.dart';

// RouteViewListener "private" section, not exported.

final _navigine_sdk_flutter_RouteViewListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_RouteViewListener_free');

final _navigine_sdk_flutter_RouteViewListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_RouteViewListener_create_proxy'));

final _navigine_sdk_flutter_RouteViewListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_RouteViewListener_set_ports'));

int _navigine_sdk_flutter_RouteViewListener_onRouteViewsChangedStatic(Pointer<Void> _obj) {
    
    final listener = RouteViewListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onRouteViewsChanged(
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}

int _navigine_sdk_flutter_RouteViewListener_onSelectedRouteChangedStatic(Pointer<Void> _obj, Pointer<Void> route) {
    
    final listener = RouteViewListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onSelectedRouteChanged(
          RouteView$Impl.fromOptionalPtr(route),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}

int _navigine_sdk_flutter_RouteViewListener_onRouteViewTapStatic(Pointer<Void> _obj, Pointer<Void> route) {
    
    final listener = RouteViewListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onRouteViewTap(
          RouteView$Impl.fromNativePtr(route),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}


final class _navigine_sdk_flutter_RouteViewListenerNativeWrapper implements Finalizable {
    _navigine_sdk_flutter_RouteViewListenerNativeWrapper(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_RouteViewListener_free.cast());
    final Pointer<Void> ptr;
}

extension RouteViewListenerImpl on RouteViewListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<RouteViewListener>>{};
    static final _listenerToPointer = weak_map.WeakMap<RouteViewListener, _navigine_sdk_flutter_RouteViewListenerNativeWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }

    static Pointer<Void> _newNativeObject(RouteViewListener obj) {
        final ptr = _navigine_sdk_flutter_RouteViewListener_CreateProxy(
          Pointer.fromFunction<Uint8 Function(Pointer<Void>)>(_navigine_sdk_flutter_RouteViewListener_onRouteViewsChangedStatic, __lib.unknownError),
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_RouteViewListener_onSelectedRouteChangedStatic, __lib.unknownError),
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_RouteViewListener_onRouteViewTapStatic, __lib.unknownError),
        );
        _pointerToListener[ptr] = WeakReference(obj);
        _listenerToPointer[obj] = _navigine_sdk_flutter_RouteViewListenerNativeWrapper(ptr);
        _navigine_sdk_flutter_RouteViewListener_SetPorts(ptr, __lib.createPortWithCallback(_destructor), __lib.createExecutePort());
        return ptr;
    }

    static Pointer<Void> getNativePtr(RouteViewListener? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        final foundPointer = _listenerToPointer[obj];
        if (foundPointer == null) {
            return _newNativeObject(obj);
        }
        return foundPointer.ptr;
    }
}

// End of RouteViewListener "private" section.
