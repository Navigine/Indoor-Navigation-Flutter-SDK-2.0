part of 'log_listener.dart';

// LogListener "private" section, not exported.

final _navigine_sdk_flutter_LogListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_LogListener_free');

final _navigine_sdk_flutter_LogListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer),
    Pointer<Void> Function(Pointer)
  >('navigine_sdk_flutter_LogListener_create_proxy'));

final _navigine_sdk_flutter_LogListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_LogListener_set_ports'));

int _navigine_sdk_flutter_LogListener_onMessageRecievedStatic(Pointer<Void> _obj, LogMessageNative message) {
    
    final listener = LogListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onMessageRecieved(
          LogMessageImpl.fromNative(message),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}


final class _navigine_sdk_flutter_LogListenerNativeWrapper implements Finalizable {
    _navigine_sdk_flutter_LogListenerNativeWrapper(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_LogListener_free.cast());
    final Pointer<Void> ptr;
}

extension LogListenerImpl on LogListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<LogListener>>{};
    static final _listenerToPointer = weak_map.WeakMap<LogListener, _navigine_sdk_flutter_LogListenerNativeWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }

    static Pointer<Void> _newNativeObject(LogListener obj) {
        final ptr = _navigine_sdk_flutter_LogListener_CreateProxy(
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, LogMessageNative)>(_navigine_sdk_flutter_LogListener_onMessageRecievedStatic, __lib.unknownError),
        );
        _pointerToListener[ptr] = WeakReference(obj);
        _listenerToPointer[obj] = _navigine_sdk_flutter_LogListenerNativeWrapper(ptr);
        _navigine_sdk_flutter_LogListener_SetPorts(ptr, __lib.createPortWithCallback(_destructor), __lib.createExecutePort());
        return ptr;
    }

    static Pointer<Void> getNativePtr(LogListener? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        final foundPointer = _listenerToPointer[obj];
        if (foundPointer == null) {
            return _newNativeObject(obj);
        }
        return foundPointer.ptr;
    }
}

// End of LogListener "private" section.
