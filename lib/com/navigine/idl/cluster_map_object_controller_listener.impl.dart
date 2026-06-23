part of 'cluster_map_object_controller_listener.dart';

// ClusterMapObjectControllerListener "private" section, not exported.

final _navigine_sdk_flutter_ClusterMapObjectControllerListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_ClusterMapObjectControllerListener_free');

final _navigine_sdk_flutter_ClusterMapObjectControllerListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer)
  >('navigine_sdk_flutter_ClusterMapObjectControllerListener_create_proxy'));

final _navigine_sdk_flutter_ClusterMapObjectControllerListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_ClusterMapObjectControllerListener_set_ports'));

int _navigine_sdk_flutter_ClusterMapObjectControllerListener_onClusterCreatedStatic(Pointer<Void> _obj, Pointer<Void> controller, Pointer<Void> cluster) {
    
    final listener = ClusterMapObjectControllerListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onClusterCreated(
          ClusterMapObjectController$Impl.fromNativePtr(controller),
          ClusterMapObject$Impl.fromNativePtr(cluster),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}

int _navigine_sdk_flutter_ClusterMapObjectControllerListener_onClusterDestroyedStatic(Pointer<Void> _obj, Pointer<Void> controller, int clusterId) {
    
    final listener = ClusterMapObjectControllerListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onClusterDestroyed(
          ClusterMapObjectController$Impl.fromNativePtr(controller),
          clusterId,
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}


final class _navigine_sdk_flutter_ClusterMapObjectControllerListenerNativeWrapper implements Finalizable {
    _navigine_sdk_flutter_ClusterMapObjectControllerListenerNativeWrapper(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_ClusterMapObjectControllerListener_free.cast());
    final Pointer<Void> ptr;
}

extension ClusterMapObjectControllerListenerImpl on ClusterMapObjectControllerListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<ClusterMapObjectControllerListener>>{};
    static final _listenerToPointer = weak_map.WeakMap<ClusterMapObjectControllerListener, _navigine_sdk_flutter_ClusterMapObjectControllerListenerNativeWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }

    static Pointer<Void> _newNativeObject(ClusterMapObjectControllerListener obj) {
        final ptr = _navigine_sdk_flutter_ClusterMapObjectControllerListener_CreateProxy(
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_ClusterMapObjectControllerListener_onClusterCreatedStatic, __lib.unknownError),
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>, Int32)>(_navigine_sdk_flutter_ClusterMapObjectControllerListener_onClusterDestroyedStatic, __lib.unknownError),
        );
        _pointerToListener[ptr] = WeakReference(obj);
        _listenerToPointer[obj] = _navigine_sdk_flutter_ClusterMapObjectControllerListenerNativeWrapper(ptr);
        _navigine_sdk_flutter_ClusterMapObjectControllerListener_SetPorts(ptr, __lib.createPortWithCallback(_destructor), __lib.createExecutePort());
        return ptr;
    }

    static Pointer<Void> getNativePtr(ClusterMapObjectControllerListener? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        final foundPointer = _listenerToPointer[obj];
        if (foundPointer == null) {
            return _newNativeObject(obj);
        }
        return foundPointer.ptr;
    }
}

// End of ClusterMapObjectControllerListener "private" section.
