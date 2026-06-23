part of 'position_listener.dart';

// PositionListener "private" section, not exported.

final _navigine_sdk_flutter_PositionListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_PositionListener_free');

final _navigine_sdk_flutter_PositionListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer)
  >('navigine_sdk_flutter_PositionListener_create_proxy'));

final _navigine_sdk_flutter_PositionListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_PositionListener_set_ports'));

int _navigine_sdk_flutter_PositionListener_onPositionUpdatedStatic(Pointer<Void> _obj, PositionNative position) {
    
    final listener = PositionListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onPositionUpdated(
          PositionImpl.fromNative(position),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}

int _navigine_sdk_flutter_PositionListener_onPositionErrorStatic(Pointer<Void> _obj, ErrorNative error) {
    
    final listener = PositionListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onPositionError(
          ErrorImpl.fromNative(error),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}


final class _navigine_sdk_flutter_PositionListenerNativeWrapper implements Finalizable {
    _navigine_sdk_flutter_PositionListenerNativeWrapper(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_PositionListener_free.cast());
    final Pointer<Void> ptr;
}

extension PositionListenerImpl on PositionListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<PositionListener>>{};
    static final _listenerToPointer = weak_map.WeakMap<PositionListener, _navigine_sdk_flutter_PositionListenerNativeWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }

    static Pointer<Void> _newNativeObject(PositionListener obj) {
        final ptr = _navigine_sdk_flutter_PositionListener_CreateProxy(
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, PositionNative)>(_navigine_sdk_flutter_PositionListener_onPositionUpdatedStatic, __lib.unknownError),
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, ErrorNative)>(_navigine_sdk_flutter_PositionListener_onPositionErrorStatic, __lib.unknownError),
        );
        _pointerToListener[ptr] = WeakReference(obj);
        _listenerToPointer[obj] = _navigine_sdk_flutter_PositionListenerNativeWrapper(ptr);
        _navigine_sdk_flutter_PositionListener_SetPorts(ptr, __lib.createPortWithCallback(_destructor), __lib.createExecutePort());
        return ptr;
    }

    static Pointer<Void> getNativePtr(PositionListener? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        final foundPointer = _listenerToPointer[obj];
        if (foundPointer == null) {
            return _newNativeObject(obj);
        }
        return foundPointer.ptr;
    }
}

// End of PositionListener "private" section.
