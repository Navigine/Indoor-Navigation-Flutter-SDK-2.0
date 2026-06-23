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
          sublocationId,
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}


final class _navigine_sdk_flutter_SublocationChangeListenerNativeWrapper implements Finalizable {
    _navigine_sdk_flutter_SublocationChangeListenerNativeWrapper(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_SublocationChangeListener_free.cast());
    final Pointer<Void> ptr;
}

extension SublocationChangeListenerImpl on SublocationChangeListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<SublocationChangeListener>>{};
    static final _listenerToPointer = weak_map.WeakMap<SublocationChangeListener, _navigine_sdk_flutter_SublocationChangeListenerNativeWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }

    static Pointer<Void> _newNativeObject(SublocationChangeListener obj) {
        final ptr = _navigine_sdk_flutter_SublocationChangeListener_CreateProxy(
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, Int32)>(_navigine_sdk_flutter_SublocationChangeListener_onActiveSublocationChangedStatic, __lib.unknownError),
        );
        _pointerToListener[ptr] = WeakReference(obj);
        _listenerToPointer[obj] = _navigine_sdk_flutter_SublocationChangeListenerNativeWrapper(ptr);
        _navigine_sdk_flutter_SublocationChangeListener_SetPorts(ptr, __lib.createPortWithCallback(_destructor), __lib.createExecutePort());
        return ptr;
    }

    static Pointer<Void> getNativePtr(SublocationChangeListener? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        final foundPointer = _listenerToPointer[obj];
        if (foundPointer == null) {
            return _newNativeObject(obj);
        }
        return foundPointer.ptr;
    }
}

// End of SublocationChangeListener "private" section.
