part of 'resource_listener.dart';

// ResourceListener "private" section, not exported.

final _navigine_sdk_flutter_ResourceListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_ResourceListener_free');

final _navigine_sdk_flutter_ResourceListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer)
  >('navigine_sdk_flutter_ResourceListener_create_proxy'));

final _navigine_sdk_flutter_ResourceListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_ResourceListener_set_ports'));

int _navigine_sdk_flutter_ResourceListener_onLoadedStatic(Pointer<Void> _obj, NativeString imageUrl, Pointer<Void> image) {
    
    final listener = ResourceListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onLoaded(
          toPlatformString(imageUrl),
          Image$Impl.fromNativePtr(image),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}

int _navigine_sdk_flutter_ResourceListener_onFailedStatic(Pointer<Void> _obj, NativeString imageUrl, ErrorNative error) {
    
    final listener = ResourceListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onFailed(
          toPlatformString(imageUrl),
          ErrorImpl.fromNative(error),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}


final class _navigine_sdk_flutter_ResourceListenerNativeWrapper implements Finalizable {
    _navigine_sdk_flutter_ResourceListenerNativeWrapper(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_ResourceListener_free.cast());
    final Pointer<Void> ptr;
}

extension ResourceListenerImpl on ResourceListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<ResourceListener>>{};
    static final _listenerToPointer = weak_map.WeakMap<ResourceListener, _navigine_sdk_flutter_ResourceListenerNativeWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }

    static Pointer<Void> _newNativeObject(ResourceListener obj) {
        final ptr = _navigine_sdk_flutter_ResourceListener_CreateProxy(
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, NativeString, Pointer<Void>)>(_navigine_sdk_flutter_ResourceListener_onLoadedStatic, __lib.unknownError),
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, NativeString, ErrorNative)>(_navigine_sdk_flutter_ResourceListener_onFailedStatic, __lib.unknownError),
        );
        _pointerToListener[ptr] = WeakReference(obj);
        _listenerToPointer[obj] = _navigine_sdk_flutter_ResourceListenerNativeWrapper(ptr);
        _navigine_sdk_flutter_ResourceListener_SetPorts(ptr, __lib.createPortWithCallback(_destructor), __lib.createExecutePort());
        return ptr;
    }

    static Pointer<Void> getNativePtr(ResourceListener? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        final foundPointer = _listenerToPointer[obj];
        if (foundPointer == null) {
            return _newNativeObject(obj);
        }
        return foundPointer.ptr;
    }
}

// End of ResourceListener "private" section.
