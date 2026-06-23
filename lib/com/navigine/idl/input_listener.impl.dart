part of 'input_listener.dart';

// InputListener "private" section, not exported.

final _navigine_sdk_flutter_InputListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_InputListener_free');

final _navigine_sdk_flutter_InputListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_InputListener_create_proxy'));

final _navigine_sdk_flutter_InputListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_InputListener_set_ports'));

int _navigine_sdk_flutter_InputListener_onViewTapStatic(Pointer<Void> _obj, ScreenPointNative screenPoint) {
    
    final listener = InputListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onViewTap(
          ScreenPointImpl.fromNative(screenPoint),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}

int _navigine_sdk_flutter_InputListener_onViewDoubleTapStatic(Pointer<Void> _obj, ScreenPointNative screenPoint) {
    
    final listener = InputListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onViewDoubleTap(
          ScreenPointImpl.fromNative(screenPoint),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}

int _navigine_sdk_flutter_InputListener_onViewLongTapStatic(Pointer<Void> _obj, ScreenPointNative screenPoint) {
    
    final listener = InputListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onViewLongTap(
          ScreenPointImpl.fromNative(screenPoint),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}


final class _navigine_sdk_flutter_InputListenerNativeWrapper implements Finalizable {
    _navigine_sdk_flutter_InputListenerNativeWrapper(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_InputListener_free.cast());
    final Pointer<Void> ptr;
}

extension InputListenerImpl on InputListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<InputListener>>{};
    static final _listenerToPointer = weak_map.WeakMap<InputListener, _navigine_sdk_flutter_InputListenerNativeWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }

    static Pointer<Void> _newNativeObject(InputListener obj) {
        final ptr = _navigine_sdk_flutter_InputListener_CreateProxy(
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, ScreenPointNative)>(_navigine_sdk_flutter_InputListener_onViewTapStatic, __lib.unknownError),
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, ScreenPointNative)>(_navigine_sdk_flutter_InputListener_onViewDoubleTapStatic, __lib.unknownError),
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, ScreenPointNative)>(_navigine_sdk_flutter_InputListener_onViewLongTapStatic, __lib.unknownError),
        );
        _pointerToListener[ptr] = WeakReference(obj);
        _listenerToPointer[obj] = _navigine_sdk_flutter_InputListenerNativeWrapper(ptr);
        _navigine_sdk_flutter_InputListener_SetPorts(ptr, __lib.createPortWithCallback(_destructor), __lib.createExecutePort());
        return ptr;
    }

    static Pointer<Void> getNativePtr(InputListener? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        final foundPointer = _listenerToPointer[obj];
        if (foundPointer == null) {
            return _newNativeObject(obj);
        }
        return foundPointer.ptr;
    }
}

// End of InputListener "private" section.
