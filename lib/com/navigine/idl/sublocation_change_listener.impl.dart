part of 'sublocation_change_listener.dart';

// SublocationChangeListener "private" section, not exported.

final _navigine_sdk_flutter_SublocationChangeListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_SublocationChangeListener_free');

final _navigine_sdk_flutter_SublocationChangeListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer),
    Pointer<Void> Function(Pointer)
  >('navigine_sdk_flutter_SublocationChangeListener_create_proxy'));

final _navigine_sdk_flutter_SublocationChangeListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_SublocationChangeListener_set_ports'));

int _navigine_sdk_flutter_SublocationChangeListener_onActiveSublocationChangedStatic(Pointer<Void> _obj, int sublocationId) {
    
    final listener = SublocationChangeListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onActiveSublocationChanged(
          navigine_sdk_flutter_int_FromFfi(sublocationId),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_int_ReleaseFfiHandle(sublocationId);
    }
    return 0;
}


class _SublocationChangeListenerWrapper extends __lib.NativeBase implements Finalizable {
    _SublocationChangeListenerWrapper(Pointer<Void> handle) : super(handle) {
        _finalizer.attach(this, handle);
    }
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_SublocationChangeListener_free.cast());
}

extension SublocationChangeListenerImpl on SublocationChangeListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<SublocationChangeListener>>{};
    static final _listenerToPointer = WeakMap<SublocationChangeListener, _SublocationChangeListenerWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }
}

Pointer<Void> navigine_sdk_flutter_SublocationChangeListener_ToFfi(SublocationChangeListener value) {
    final result = _navigine_sdk_flutter_SublocationChangeListener_CreateProxy(
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Int32)>(_navigine_sdk_flutter_SublocationChangeListener_onActiveSublocationChangedStatic, __lib.unknownError),
    );
    SublocationChangeListenerImpl._pointerToListener[result] = WeakReference(value);
    SublocationChangeListenerImpl._listenerToPointer[value] = _SublocationChangeListenerWrapper(result);
    _navigine_sdk_flutter_SublocationChangeListener_SetPorts(result, __lib.createPortWithCallback(SublocationChangeListenerImpl._destructor), __lib.createExecutePort());

    return result;
}

Pointer<Void> navigine_sdk_flutter_SublocationChangeListener_ToFfiNullable(SublocationChangeListener? value) => 
  value != null ? navigine_sdk_flutter_SublocationChangeListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_SublocationChangeListener_ReleaseFfiHandle(Pointer<Void> handle) => 
{};

void navigine_sdk_flutter_SublocationChangeListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
{};

// End of SublocationChangeListener "private" section.
