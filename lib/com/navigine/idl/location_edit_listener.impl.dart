part of 'location_edit_listener.dart';

// LocationEditListener "private" section, not exported.

final _navigine_sdk_flutter_LocationEditListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_LocationEditListener_free');

final _navigine_sdk_flutter_LocationEditListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer)
  >('navigine_sdk_flutter_LocationEditListener_create_proxy'));

final _navigine_sdk_flutter_LocationEditListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_LocationEditListener_set_ports'));

int _navigine_sdk_flutter_LocationEditListener_onLocationEditSuccessStatic(Pointer<Void> _obj, Pointer<Void> location) {
    
    final listener = LocationEditListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onLocationEditSuccess(
          Location$Impl.fromNativePtr(location),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}

int _navigine_sdk_flutter_LocationEditListener_onLocationEditErrorStatic(Pointer<Void> _obj, ErrorNative error) {
    
    final listener = LocationEditListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onLocationEditError(
          ErrorImpl.fromNative(error),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}


final class _navigine_sdk_flutter_LocationEditListenerNativeWrapper implements Finalizable {
    _navigine_sdk_flutter_LocationEditListenerNativeWrapper(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_LocationEditListener_free.cast());
    final Pointer<Void> ptr;
}

extension LocationEditListenerImpl on LocationEditListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<LocationEditListener>>{};
    static final _listenerToPointer = weak_map.WeakMap<LocationEditListener, _navigine_sdk_flutter_LocationEditListenerNativeWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }

    static Pointer<Void> _newNativeObject(LocationEditListener obj) {
        final ptr = _navigine_sdk_flutter_LocationEditListener_CreateProxy(
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_LocationEditListener_onLocationEditSuccessStatic, __lib.unknownError),
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, ErrorNative)>(_navigine_sdk_flutter_LocationEditListener_onLocationEditErrorStatic, __lib.unknownError),
        );
        _pointerToListener[ptr] = WeakReference(obj);
        _listenerToPointer[obj] = _navigine_sdk_flutter_LocationEditListenerNativeWrapper(ptr);
        _navigine_sdk_flutter_LocationEditListener_SetPorts(ptr, __lib.createPortWithCallback(_destructor), __lib.createExecutePort());
        return ptr;
    }

    static Pointer<Void> getNativePtr(LocationEditListener? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        final foundPointer = _listenerToPointer[obj];
        if (foundPointer == null) {
            return _newNativeObject(obj);
        }
        return foundPointer.ptr;
    }
}

// End of LocationEditListener "private" section.
