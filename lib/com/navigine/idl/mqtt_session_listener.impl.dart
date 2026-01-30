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
    finally  {
    }
    return 0;
}

int _navigine_sdk_flutter_MqttSessionListener_onErrorStatic(Pointer<Void> _obj, Pointer<Void> error) {
    
    final listener = MqttSessionListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onError(
          navigine_sdk_flutter_Error_FromFfi(error),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_Error_ReleaseFfiHandle(error);
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
    finally  {
    }
    return 0;
}


class _MqttSessionListenerWrapper extends __lib.NativeBase implements Finalizable {
    _MqttSessionListenerWrapper(Pointer<Void> handle) : super(handle) {
        _finalizer.attach(this, handle);
    }
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_MqttSessionListener_free.cast());
}

extension MqttSessionListenerImpl on MqttSessionListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<MqttSessionListener>>{};
    static final _listenerToPointer = WeakMap<MqttSessionListener, _MqttSessionListenerWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }
}

Pointer<Void> navigine_sdk_flutter_MqttSessionListener_ToFfi(MqttSessionListener value) {
    final result = _navigine_sdk_flutter_MqttSessionListener_CreateProxy(
      Pointer.fromFunction<Uint8 Function(Pointer<Void>)>(_navigine_sdk_flutter_MqttSessionListener_onConnectedStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_MqttSessionListener_onErrorStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Pointer<Void>)>(_navigine_sdk_flutter_MqttSessionListener_onMessagePublishedStatic, __lib.unknownError),
    );
    MqttSessionListenerImpl._pointerToListener[result] = WeakReference(value);
    MqttSessionListenerImpl._listenerToPointer[value] = _MqttSessionListenerWrapper(result);
    _navigine_sdk_flutter_MqttSessionListener_SetPorts(result, __lib.createPortWithCallback(MqttSessionListenerImpl._destructor), __lib.createExecutePort());

    return result;
}

Pointer<Void> navigine_sdk_flutter_MqttSessionListener_ToFfiNullable(MqttSessionListener? value) => 
  value != null ? navigine_sdk_flutter_MqttSessionListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_MqttSessionListener_ReleaseFfiHandle(Pointer<Void> handle) => 
{};

void navigine_sdk_flutter_MqttSessionListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
{};

// End of MqttSessionListener "private" section.
