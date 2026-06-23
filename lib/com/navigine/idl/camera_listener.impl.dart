part of 'camera_listener.dart';

// CameraListener "private" section, not exported.

final _navigine_sdk_flutter_CameraListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_CameraListener_free');

final _navigine_sdk_flutter_CameraListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer),
    Pointer<Void> Function(Pointer)
  >('navigine_sdk_flutter_CameraListener_create_proxy'));

final _navigine_sdk_flutter_CameraListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_CameraListener_set_ports'));

int _navigine_sdk_flutter_CameraListener_onCameraPositionChangedStatic(Pointer<Void> _obj, int reason, int finished) {
    
    final listener = CameraListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onCameraPositionChanged(
          CameraUpdateReasonImpl.fromInt(reason),
          (finished != 0),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}


final class _navigine_sdk_flutter_CameraListenerNativeWrapper implements Finalizable {
    _navigine_sdk_flutter_CameraListenerNativeWrapper(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_CameraListener_free.cast());
    final Pointer<Void> ptr;
}

extension CameraListenerImpl on CameraListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<CameraListener>>{};
    static final _listenerToPointer = weak_map.WeakMap<CameraListener, _navigine_sdk_flutter_CameraListenerNativeWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }

    static Pointer<Void> _newNativeObject(CameraListener obj) {
        final ptr = _navigine_sdk_flutter_CameraListener_CreateProxy(
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, Uint32, Uint8)>(_navigine_sdk_flutter_CameraListener_onCameraPositionChangedStatic, __lib.unknownError),
        );
        _pointerToListener[ptr] = WeakReference(obj);
        _listenerToPointer[obj] = _navigine_sdk_flutter_CameraListenerNativeWrapper(ptr);
        _navigine_sdk_flutter_CameraListener_SetPorts(ptr, __lib.createPortWithCallback(_destructor), __lib.createExecutePort());
        return ptr;
    }

    static Pointer<Void> getNativePtr(CameraListener? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        final foundPointer = _listenerToPointer[obj];
        if (foundPointer == null) {
            return _newNativeObject(obj);
        }
        return foundPointer.ptr;
    }
}

// End of CameraListener "private" section.
