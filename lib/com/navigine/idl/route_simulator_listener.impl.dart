part of 'route_simulator_listener.dart';

// RouteSimulatorListener "private" section, not exported.

final _navigine_sdk_flutter_RouteSimulatorListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_RouteSimulatorListener_free');

final _navigine_sdk_flutter_RouteSimulatorListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer)
  >('navigine_sdk_flutter_RouteSimulatorListener_create_proxy'));

final _navigine_sdk_flutter_RouteSimulatorListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_RouteSimulatorListener_set_ports'));

int _navigine_sdk_flutter_RouteSimulatorListener_onSampleStatic(Pointer<Void> _obj, RouteSimulatorSampleNative sample) {
    
    final listener = RouteSimulatorListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onSample(
          RouteSimulatorSampleImpl.fromNative(sample),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}

int _navigine_sdk_flutter_RouteSimulatorListener_onFinishedStatic(Pointer<Void> _obj) {
    
    final listener = RouteSimulatorListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onFinished(
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}


final class _navigine_sdk_flutter_RouteSimulatorListenerNativeWrapper implements Finalizable {
    _navigine_sdk_flutter_RouteSimulatorListenerNativeWrapper(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_RouteSimulatorListener_free.cast());
    final Pointer<Void> ptr;
}

extension RouteSimulatorListenerImpl on RouteSimulatorListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<RouteSimulatorListener>>{};
    static final _listenerToPointer = weak_map.WeakMap<RouteSimulatorListener, _navigine_sdk_flutter_RouteSimulatorListenerNativeWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }

    static Pointer<Void> _newNativeObject(RouteSimulatorListener obj) {
        final ptr = _navigine_sdk_flutter_RouteSimulatorListener_CreateProxy(
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, RouteSimulatorSampleNative)>(_navigine_sdk_flutter_RouteSimulatorListener_onSampleStatic, __lib.unknownError),
          Pointer.fromFunction<Uint8 Function(Pointer<Void>)>(_navigine_sdk_flutter_RouteSimulatorListener_onFinishedStatic, __lib.unknownError),
        );
        _pointerToListener[ptr] = WeakReference(obj);
        _listenerToPointer[obj] = _navigine_sdk_flutter_RouteSimulatorListenerNativeWrapper(ptr);
        _navigine_sdk_flutter_RouteSimulatorListener_SetPorts(ptr, __lib.createPortWithCallback(_destructor), __lib.createExecutePort());
        return ptr;
    }

    static Pointer<Void> getNativePtr(RouteSimulatorListener? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        final foundPointer = _listenerToPointer[obj];
        if (foundPointer == null) {
            return _newNativeObject(obj);
        }
        return foundPointer.ptr;
    }
}

// End of RouteSimulatorListener "private" section.
