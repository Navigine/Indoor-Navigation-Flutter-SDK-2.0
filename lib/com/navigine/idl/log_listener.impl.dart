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

int _navigine_sdk_flutter_LogListener_onMessageRecievedStatic(Pointer<Void> _obj, Pointer<Void> message) {
    
    final listener = LogListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onMessageRecieved(
          navigine_sdk_flutter_LogMessage_FromFfi(message),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_LogMessage_ReleaseFfiHandle(message);
    }
    return 0;
}


class _LogListenerWrapper extends __lib.NativeBase implements Finalizable {
    _LogListenerWrapper(Pointer<Void> handle) : super(handle) {
        _finalizer.attach(this, handle);
    }
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_LogListener_free.cast());
}

extension LogListenerImpl on LogListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<LogListener>>{};
    static final _listenerToPointer = WeakMap<LogListener, _LogListenerWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }
}

Pointer<Void> navigine_sdk_flutter_LogListener_ToFfi(LogListener value) {
    final result = _navigine_sdk_flutter_LogListener_CreateProxy(
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_LogListener_onMessageRecievedStatic, __lib.unknownError),
    );
    LogListenerImpl._pointerToListener[result] = WeakReference(value);
    LogListenerImpl._listenerToPointer[value] = _LogListenerWrapper(result);
    _navigine_sdk_flutter_LogListener_SetPorts(result, __lib.createPortWithCallback(LogListenerImpl._destructor), __lib.createExecutePort());

    return result;
}

Pointer<Void> navigine_sdk_flutter_LogListener_ToFfiNullable(LogListener? value) => 
  value != null ? navigine_sdk_flutter_LogListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_LogListener_ReleaseFfiHandle(Pointer<Void> handle) => 
{};

void navigine_sdk_flutter_LogListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
{};

// End of LogListener "private" section.
