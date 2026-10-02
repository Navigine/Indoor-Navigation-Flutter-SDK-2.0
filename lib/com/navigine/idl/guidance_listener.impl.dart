part of 'guidance_listener.dart';

// GuidanceListener "private" section, not exported.

final _navigine_sdk_flutter_GuidanceListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_GuidanceListener_free');

final _navigine_sdk_flutter_GuidanceListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer)
  >('navigine_sdk_flutter_GuidanceListener_create_proxy'));

final _navigine_sdk_flutter_GuidanceListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_GuidanceListener_set_ports'));

int _navigine_sdk_flutter_GuidanceListener_onCameraModeChangedStatic(Pointer<Void> _obj, int mode) {
    
    final listener = GuidanceListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onCameraModeChanged(
          GuidanceCameraModeImpl.fromInt(mode),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}

int _navigine_sdk_flutter_GuidanceListener_onInstructionChangedStatic(Pointer<Void> _obj, Pointer<Void> instruction) {
    
    final listener = GuidanceListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onInstructionChanged(
          RouteInstructionImpl.fromPointer(instruction, needFree: false),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}


final class _navigine_sdk_flutter_GuidanceListenerNativeWrapper implements Finalizable {
    _navigine_sdk_flutter_GuidanceListenerNativeWrapper(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_GuidanceListener_free.cast());
    final Pointer<Void> ptr;
}

extension GuidanceListenerImpl on GuidanceListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<GuidanceListener>>{};
    static final _listenerToPointer = weak_map.WeakMap<GuidanceListener, _navigine_sdk_flutter_GuidanceListenerNativeWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }

    static Pointer<Void> _newNativeObject(GuidanceListener obj) {
        final ptr = _navigine_sdk_flutter_GuidanceListener_CreateProxy(
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, Uint32)>(_navigine_sdk_flutter_GuidanceListener_onCameraModeChangedStatic, __lib.unknownError),
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_GuidanceListener_onInstructionChangedStatic, __lib.unknownError),
        );
        _pointerToListener[ptr] = WeakReference(obj);
        _listenerToPointer[obj] = _navigine_sdk_flutter_GuidanceListenerNativeWrapper(ptr);
        _navigine_sdk_flutter_GuidanceListener_SetPorts(ptr, __lib.createPortWithCallback(_destructor), __lib.createExecutePort());
        return ptr;
    }

    static Pointer<Void> getNativePtr(GuidanceListener? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        final foundPointer = _listenerToPointer[obj];
        if (foundPointer == null) {
            return _newNativeObject(obj);
        }
        return foundPointer.ptr;
    }
}

// End of GuidanceListener "private" section.
