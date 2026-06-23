part of 'cluster_map_object_listener.dart';

// ClusterMapObjectListener "private" section, not exported.

final _navigine_sdk_flutter_ClusterMapObjectListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_ClusterMapObjectListener_free');

final _navigine_sdk_flutter_ClusterMapObjectListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer),
    Pointer<Void> Function(Pointer)
  >('navigine_sdk_flutter_ClusterMapObjectListener_create_proxy'));

final _navigine_sdk_flutter_ClusterMapObjectListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_ClusterMapObjectListener_set_ports'));

int _navigine_sdk_flutter_ClusterMapObjectListener_onClusterChangedStatic(Pointer<Void> _obj, Pointer<Void> cluster) {
    
    final listener = ClusterMapObjectListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onClusterChanged(
          ClusterMapObject$Impl.fromNativePtr(cluster),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}


final class _navigine_sdk_flutter_ClusterMapObjectListenerNativeWrapper implements Finalizable {
    _navigine_sdk_flutter_ClusterMapObjectListenerNativeWrapper(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_ClusterMapObjectListener_free.cast());
    final Pointer<Void> ptr;
}

extension ClusterMapObjectListenerImpl on ClusterMapObjectListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<ClusterMapObjectListener>>{};
    static final _listenerToPointer = weak_map.WeakMap<ClusterMapObjectListener, _navigine_sdk_flutter_ClusterMapObjectListenerNativeWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }

    static Pointer<Void> _newNativeObject(ClusterMapObjectListener obj) {
        final ptr = _navigine_sdk_flutter_ClusterMapObjectListener_CreateProxy(
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_ClusterMapObjectListener_onClusterChangedStatic, __lib.unknownError),
        );
        _pointerToListener[ptr] = WeakReference(obj);
        _listenerToPointer[obj] = _navigine_sdk_flutter_ClusterMapObjectListenerNativeWrapper(ptr);
        _navigine_sdk_flutter_ClusterMapObjectListener_SetPorts(ptr, __lib.createPortWithCallback(_destructor), __lib.createExecutePort());
        return ptr;
    }

    static Pointer<Void> getNativePtr(ClusterMapObjectListener? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        final foundPointer = _listenerToPointer[obj];
        if (foundPointer == null) {
            return _newNativeObject(obj);
        }
        return foundPointer.ptr;
    }
}

// End of ClusterMapObjectListener "private" section.
