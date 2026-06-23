part of 'location_listener.dart';

// LocationListener "private" section, not exported.

final _navigine_sdk_flutter_LocationListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_LocationListener_free');

final _navigine_sdk_flutter_LocationListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_LocationListener_create_proxy'));

final _navigine_sdk_flutter_LocationListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_LocationListener_set_ports'));

int _navigine_sdk_flutter_LocationListener_onLocationLoadedStatic(Pointer<Void> _obj, Pointer<Void> location) {
    
    final listener = LocationListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onLocationLoaded(
          Location$Impl.fromNativePtr(location),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}

int _navigine_sdk_flutter_LocationListener_onLocationUploadedStatic(Pointer<Void> _obj, int locationId) {
    
    final listener = LocationListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onLocationUploaded(
          locationId,
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}

int _navigine_sdk_flutter_LocationListener_onLocationFailedStatic(Pointer<Void> _obj, int locationId, ErrorNative error) {
    
    final listener = LocationListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onLocationFailed(
          locationId,
          ErrorImpl.fromNative(error),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}


final class _navigine_sdk_flutter_LocationListenerNativeWrapper implements Finalizable {
    _navigine_sdk_flutter_LocationListenerNativeWrapper(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_LocationListener_free.cast());
    final Pointer<Void> ptr;
}

extension LocationListenerImpl on LocationListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<LocationListener>>{};
    static final _listenerToPointer = weak_map.WeakMap<LocationListener, _navigine_sdk_flutter_LocationListenerNativeWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }

    static Pointer<Void> _newNativeObject(LocationListener obj) {
        final ptr = _navigine_sdk_flutter_LocationListener_CreateProxy(
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_LocationListener_onLocationLoadedStatic, __lib.unknownError),
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, Int32)>(_navigine_sdk_flutter_LocationListener_onLocationUploadedStatic, __lib.unknownError),
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, Int32, ErrorNative)>(_navigine_sdk_flutter_LocationListener_onLocationFailedStatic, __lib.unknownError),
        );
        _pointerToListener[ptr] = WeakReference(obj);
        _listenerToPointer[obj] = _navigine_sdk_flutter_LocationListenerNativeWrapper(ptr);
        _navigine_sdk_flutter_LocationListener_SetPorts(ptr, __lib.createPortWithCallback(_destructor), __lib.createExecutePort());
        return ptr;
    }

    static Pointer<Void> getNativePtr(LocationListener? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        final foundPointer = _listenerToPointer[obj];
        if (foundPointer == null) {
            return _newNativeObject(obj);
        }
        return foundPointer.ptr;
    }
}

// End of LocationListener "private" section.
