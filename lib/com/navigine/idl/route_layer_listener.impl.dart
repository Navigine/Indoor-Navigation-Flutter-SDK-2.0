part of 'route_layer_listener.dart';

// RouteLayerListener "private" section, not exported.

final _navigine_sdk_flutter_RouteLayerListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_RouteLayerListener_free');

final _navigine_sdk_flutter_RouteLayerListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_RouteLayerListener_create_proxy'));

final _navigine_sdk_flutter_RouteLayerListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_RouteLayerListener_set_ports'));

int _navigine_sdk_flutter_RouteLayerListener_onRouteChangedStatic(Pointer<Void> _obj, int status, Pointer<Void> route) {
    
    final listener = RouteLayerListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onRouteChanged(
          RouteLayerStatusImpl.fromInt(status),
          RouteView$Impl.fromOptionalPtr(route),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}

int _navigine_sdk_flutter_RouteLayerListener_onRouteAdvancedStatic(Pointer<Void> _obj, RouteProgressNative progress) {
    
    final listener = RouteLayerListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onRouteAdvanced(
          RouteProgressImpl.fromNative(progress),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}

int _navigine_sdk_flutter_RouteLayerListener_onRouteTargetReachedStatic(Pointer<Void> _obj) {
    
    final listener = RouteLayerListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onRouteTargetReached(
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}


final class _navigine_sdk_flutter_RouteLayerListenerNativeWrapper implements Finalizable {
    _navigine_sdk_flutter_RouteLayerListenerNativeWrapper(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_RouteLayerListener_free.cast());
    final Pointer<Void> ptr;
}

extension RouteLayerListenerImpl on RouteLayerListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<RouteLayerListener>>{};
    static final _listenerToPointer = weak_map.WeakMap<RouteLayerListener, _navigine_sdk_flutter_RouteLayerListenerNativeWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }

    static Pointer<Void> _newNativeObject(RouteLayerListener obj) {
        final ptr = _navigine_sdk_flutter_RouteLayerListener_CreateProxy(
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, Uint32, Pointer<Void>)>(_navigine_sdk_flutter_RouteLayerListener_onRouteChangedStatic, __lib.unknownError),
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, RouteProgressNative)>(_navigine_sdk_flutter_RouteLayerListener_onRouteAdvancedStatic, __lib.unknownError),
          Pointer.fromFunction<Uint8 Function(Pointer<Void>)>(_navigine_sdk_flutter_RouteLayerListener_onRouteTargetReachedStatic, __lib.unknownError),
        );
        _pointerToListener[ptr] = WeakReference(obj);
        _listenerToPointer[obj] = _navigine_sdk_flutter_RouteLayerListenerNativeWrapper(ptr);
        _navigine_sdk_flutter_RouteLayerListener_SetPorts(ptr, __lib.createPortWithCallback(_destructor), __lib.createExecutePort());
        return ptr;
    }

    static Pointer<Void> getNativePtr(RouteLayerListener? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        final foundPointer = _listenerToPointer[obj];
        if (foundPointer == null) {
            return _newNativeObject(obj);
        }
        return foundPointer.ptr;
    }
}

// End of RouteLayerListener "private" section.
