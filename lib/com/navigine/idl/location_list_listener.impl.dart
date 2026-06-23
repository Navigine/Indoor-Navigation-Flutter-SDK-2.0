part of 'location_list_listener.dart';

// LocationListListener "private" section, not exported.

final _navigine_sdk_flutter_LocationListListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_LocationListListener_free');

final _navigine_sdk_flutter_LocationListListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer)
  >('navigine_sdk_flutter_LocationListListener_create_proxy'));

final _navigine_sdk_flutter_LocationListListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_LocationListListener_set_ports'));

int _navigine_sdk_flutter_LocationListListener_onLocationListLoadedStatic(Pointer<Void> _obj, Pointer<Void> locationInfos) {
    
    final listener = LocationListListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onLocationListLoaded(
          MapInt_LocationInfoImpl.fromNativePtr(locationInfos),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}

int _navigine_sdk_flutter_LocationListListener_onLocationListFailedStatic(Pointer<Void> _obj, ErrorNative error) {
    
    final listener = LocationListListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onLocationListFailed(
          ErrorImpl.fromNative(error),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}


final class _navigine_sdk_flutter_LocationListListenerNativeWrapper implements Finalizable {
    _navigine_sdk_flutter_LocationListListenerNativeWrapper(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_LocationListListener_free.cast());
    final Pointer<Void> ptr;
}

extension LocationListListenerImpl on LocationListListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<LocationListListener>>{};
    static final _listenerToPointer = weak_map.WeakMap<LocationListListener, _navigine_sdk_flutter_LocationListListenerNativeWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }

    static Pointer<Void> _newNativeObject(LocationListListener obj) {
        final ptr = _navigine_sdk_flutter_LocationListListener_CreateProxy(
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_LocationListListener_onLocationListLoadedStatic, __lib.unknownError),
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, ErrorNative)>(_navigine_sdk_flutter_LocationListListener_onLocationListFailedStatic, __lib.unknownError),
        );
        _pointerToListener[ptr] = WeakReference(obj);
        _listenerToPointer[obj] = _navigine_sdk_flutter_LocationListListenerNativeWrapper(ptr);
        _navigine_sdk_flutter_LocationListListener_SetPorts(ptr, __lib.createPortWithCallback(_destructor), __lib.createExecutePort());
        return ptr;
    }

    static Pointer<Void> getNativePtr(LocationListListener? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        final foundPointer = _listenerToPointer[obj];
        if (foundPointer == null) {
            return _newNativeObject(obj);
        }
        return foundPointer.ptr;
    }
}

// End of LocationListListener "private" section.
