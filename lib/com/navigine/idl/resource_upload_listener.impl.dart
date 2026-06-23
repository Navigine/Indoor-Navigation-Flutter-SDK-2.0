part of 'resource_upload_listener.dart';

// ResourceUploadListener "private" section, not exported.

final _navigine_sdk_flutter_ResourceUploadListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_ResourceUploadListener_free');

final _navigine_sdk_flutter_ResourceUploadListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer)
  >('navigine_sdk_flutter_ResourceUploadListener_create_proxy'));

final _navigine_sdk_flutter_ResourceUploadListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_ResourceUploadListener_set_ports'));

int _navigine_sdk_flutter_ResourceUploadListener_onUploadedStatic(Pointer<Void> _obj, NativeString fileName) {
    
    final listener = ResourceUploadListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onUploaded(
          toPlatformString(fileName),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}

int _navigine_sdk_flutter_ResourceUploadListener_onFailedStatic(Pointer<Void> _obj, ErrorNative error) {
    
    final listener = ResourceUploadListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onFailed(
          ErrorImpl.fromNative(error),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}


final class _navigine_sdk_flutter_ResourceUploadListenerNativeWrapper implements Finalizable {
    _navigine_sdk_flutter_ResourceUploadListenerNativeWrapper(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_ResourceUploadListener_free.cast());
    final Pointer<Void> ptr;
}

extension ResourceUploadListenerImpl on ResourceUploadListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<ResourceUploadListener>>{};
    static final _listenerToPointer = weak_map.WeakMap<ResourceUploadListener, _navigine_sdk_flutter_ResourceUploadListenerNativeWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }

    static Pointer<Void> _newNativeObject(ResourceUploadListener obj) {
        final ptr = _navigine_sdk_flutter_ResourceUploadListener_CreateProxy(
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, NativeString)>(_navigine_sdk_flutter_ResourceUploadListener_onUploadedStatic, __lib.unknownError),
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, ErrorNative)>(_navigine_sdk_flutter_ResourceUploadListener_onFailedStatic, __lib.unknownError),
        );
        _pointerToListener[ptr] = WeakReference(obj);
        _listenerToPointer[obj] = _navigine_sdk_flutter_ResourceUploadListenerNativeWrapper(ptr);
        _navigine_sdk_flutter_ResourceUploadListener_SetPorts(ptr, __lib.createPortWithCallback(_destructor), __lib.createExecutePort());
        return ptr;
    }

    static Pointer<Void> getNativePtr(ResourceUploadListener? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        final foundPointer = _listenerToPointer[obj];
        if (foundPointer == null) {
            return _newNativeObject(obj);
        }
        return foundPointer.ptr;
    }
}

// End of ResourceUploadListener "private" section.
