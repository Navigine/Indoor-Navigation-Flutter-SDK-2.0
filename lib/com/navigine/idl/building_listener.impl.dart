part of 'building_listener.dart';

// BuildingListener "private" section, not exported.

final _navigine_sdk_flutter_BuildingListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_BuildingListener_free');

final _navigine_sdk_flutter_BuildingListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_BuildingListener_create_proxy'));

final _navigine_sdk_flutter_BuildingListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_BuildingListener_set_ports'));

int _navigine_sdk_flutter_BuildingListener_onActiveBuildingFocusedStatic(Pointer<Void> _obj, Pointer<Void> activeBuilding) {
    
    final listener = BuildingListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onActiveBuildingFocused(
          Building$Impl.fromNativePtr(activeBuilding),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}

int _navigine_sdk_flutter_BuildingListener_onActiveBuildingLeftStatic(Pointer<Void> _obj) {
    
    final listener = BuildingListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onActiveBuildingLeft(
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}

int _navigine_sdk_flutter_BuildingListener_onActiveSublocationChangedStatic(Pointer<Void> _obj, int activeSublocationId) {
    
    final listener = BuildingListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onActiveSublocationChanged(
          activeSublocationId,
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}


final class _navigine_sdk_flutter_BuildingListenerNativeWrapper implements Finalizable {
    _navigine_sdk_flutter_BuildingListenerNativeWrapper(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_BuildingListener_free.cast());
    final Pointer<Void> ptr;
}

extension BuildingListenerImpl on BuildingListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<BuildingListener>>{};
    static final _listenerToPointer = weak_map.WeakMap<BuildingListener, _navigine_sdk_flutter_BuildingListenerNativeWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }

    static Pointer<Void> _newNativeObject(BuildingListener obj) {
        final ptr = _navigine_sdk_flutter_BuildingListener_CreateProxy(
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_BuildingListener_onActiveBuildingFocusedStatic, __lib.unknownError),
          Pointer.fromFunction<Uint8 Function(Pointer<Void>)>(_navigine_sdk_flutter_BuildingListener_onActiveBuildingLeftStatic, __lib.unknownError),
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, Int32)>(_navigine_sdk_flutter_BuildingListener_onActiveSublocationChangedStatic, __lib.unknownError),
        );
        _pointerToListener[ptr] = WeakReference(obj);
        _listenerToPointer[obj] = _navigine_sdk_flutter_BuildingListenerNativeWrapper(ptr);
        _navigine_sdk_flutter_BuildingListener_SetPorts(ptr, __lib.createPortWithCallback(_destructor), __lib.createExecutePort());
        return ptr;
    }

    static Pointer<Void> getNativePtr(BuildingListener? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        final foundPointer = _listenerToPointer[obj];
        if (foundPointer == null) {
            return _newNativeObject(obj);
        }
        return foundPointer.ptr;
    }
}

// End of BuildingListener "private" section.
