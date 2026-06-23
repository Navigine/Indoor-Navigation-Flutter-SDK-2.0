part of 'pick_listener.dart';

// PickListener "private" section, not exported.

final _navigine_sdk_flutter_PickListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_PickListener_free');

final _navigine_sdk_flutter_PickListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer)
  >('navigine_sdk_flutter_PickListener_create_proxy'));

final _navigine_sdk_flutter_PickListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_PickListener_set_ports'));

int _navigine_sdk_flutter_PickListener_onMapObjectPickCompleteStatic(Pointer<Void> _obj, Pointer<Void> mapObjectPickResult, ScreenPointNative screenPosition) {
    
    final listener = PickListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onMapObjectPickComplete(
          MapObjectPickResult$Impl.fromNativePtr(mapObjectPickResult),
          ScreenPointImpl.fromNative(screenPosition),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}

int _navigine_sdk_flutter_PickListener_onMapFeaturePickCompleteStatic(Pointer<Void> _obj, Pointer<Void> mapFeaturePickResult, ScreenPointNative screenPosition) {
    
    final listener = PickListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onMapFeaturePickComplete(
          MapString_StringImpl.fromNativePtr(mapFeaturePickResult),
          ScreenPointImpl.fromNative(screenPosition),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}


final class _navigine_sdk_flutter_PickListenerNativeWrapper implements Finalizable {
    _navigine_sdk_flutter_PickListenerNativeWrapper(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_PickListener_free.cast());
    final Pointer<Void> ptr;
}

extension PickListenerImpl on PickListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<PickListener>>{};
    static final _listenerToPointer = weak_map.WeakMap<PickListener, _navigine_sdk_flutter_PickListenerNativeWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }

    static Pointer<Void> _newNativeObject(PickListener obj) {
        final ptr = _navigine_sdk_flutter_PickListener_CreateProxy(
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>, ScreenPointNative)>(_navigine_sdk_flutter_PickListener_onMapObjectPickCompleteStatic, __lib.unknownError),
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>, ScreenPointNative)>(_navigine_sdk_flutter_PickListener_onMapFeaturePickCompleteStatic, __lib.unknownError),
        );
        _pointerToListener[ptr] = WeakReference(obj);
        _listenerToPointer[obj] = _navigine_sdk_flutter_PickListenerNativeWrapper(ptr);
        _navigine_sdk_flutter_PickListener_SetPorts(ptr, __lib.createPortWithCallback(_destructor), __lib.createExecutePort());
        return ptr;
    }

    static Pointer<Void> getNativePtr(PickListener? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        final foundPointer = _listenerToPointer[obj];
        if (foundPointer == null) {
            return _newNativeObject(obj);
        }
        return foundPointer.ptr;
    }
}

// End of PickListener "private" section.
