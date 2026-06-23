part of 'mqtt_session_listener.dart';

// MqttSessionListener "private" section, not exported.

final _navigine_sdk_flutter_MqttSessionListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_MqttSessionListener_free');

final _navigine_sdk_flutter_MqttSessionListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_MqttSessionListener_create_proxy'));

final _navigine_sdk_flutter_MqttSessionListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_MqttSessionListener_set_ports'));

int _navigine_sdk_flutter_MqttSessionListener_onConnectedStatic(Pointer<Void> _obj) {
    
    final listener = MqttSessionListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onConnected(
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}

int _navigine_sdk_flutter_MqttSessionListener_onErrorStatic(Pointer<Void> _obj, ErrorNative error) {
    
    final listener = MqttSessionListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onError(
          ErrorImpl.fromNative(error),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}

int _navigine_sdk_flutter_MqttSessionListener_onMessagePublishedStatic(Pointer<Void> _obj) {
    
    final listener = MqttSessionListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onMessagePublished(
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}


final class _navigine_sdk_flutter_MqttSessionListenerNativeWrapper implements Finalizable {
    _navigine_sdk_flutter_MqttSessionListenerNativeWrapper(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_MqttSessionListener_free.cast());
    final Pointer<Void> ptr;
}

extension MqttSessionListenerImpl on MqttSessionListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<MqttSessionListener>>{};
    static final _listenerToPointer = weak_map.WeakMap<MqttSessionListener, _navigine_sdk_flutter_MqttSessionListenerNativeWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }

    static Pointer<Void> _newNativeObject(MqttSessionListener obj) {
        final ptr = _navigine_sdk_flutter_MqttSessionListener_CreateProxy(
          Pointer.fromFunction<Uint8 Function(Pointer<Void>)>(_navigine_sdk_flutter_MqttSessionListener_onConnectedStatic, __lib.unknownError),
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, ErrorNative)>(_navigine_sdk_flutter_MqttSessionListener_onErrorStatic, __lib.unknownError),
          Pointer.fromFunction<Uint8 Function(Pointer<Void>)>(_navigine_sdk_flutter_MqttSessionListener_onMessagePublishedStatic, __lib.unknownError),
        );
        _pointerToListener[ptr] = WeakReference(obj);
        _listenerToPointer[obj] = _navigine_sdk_flutter_MqttSessionListenerNativeWrapper(ptr);
        _navigine_sdk_flutter_MqttSessionListener_SetPorts(ptr, __lib.createPortWithCallback(_destructor), __lib.createExecutePort());
        return ptr;
    }

    static Pointer<Void> getNativePtr(MqttSessionListener? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        final foundPointer = _listenerToPointer[obj];
        if (foundPointer == null) {
            return _newNativeObject(obj);
        }
        return foundPointer.ptr;
    }
}

// End of MqttSessionListener "private" section.
