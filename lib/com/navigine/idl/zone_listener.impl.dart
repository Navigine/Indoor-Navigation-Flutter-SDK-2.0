part of 'zone_listener.dart';

// ZoneListener "private" section, not exported.

final _navigine_sdk_flutter_ZoneListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_ZoneListener_free');

final _navigine_sdk_flutter_ZoneListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer),
    Pointer<Void> Function(Pointer)
  >('navigine_sdk_flutter_ZoneListener_create_proxy'));

final _navigine_sdk_flutter_ZoneListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_ZoneListener_set_ports'));

int _navigine_sdk_flutter_ZoneListener_onZoneEventStatic(Pointer<Void> _obj, ZoneEventNative zoneEvent) {
    
    final listener = ZoneListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onZoneEvent(
          ZoneEventImpl.fromNative(zoneEvent),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}


final class _navigine_sdk_flutter_ZoneListenerNativeWrapper implements Finalizable {
    _navigine_sdk_flutter_ZoneListenerNativeWrapper(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_ZoneListener_free.cast());
    final Pointer<Void> ptr;
}

extension ZoneListenerImpl on ZoneListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<ZoneListener>>{};
    static final _listenerToPointer = weak_map.WeakMap<ZoneListener, _navigine_sdk_flutter_ZoneListenerNativeWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }

    static Pointer<Void> _newNativeObject(ZoneListener obj) {
        final ptr = _navigine_sdk_flutter_ZoneListener_CreateProxy(
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, ZoneEventNative)>(_navigine_sdk_flutter_ZoneListener_onZoneEventStatic, __lib.unknownError),
        );
        _pointerToListener[ptr] = WeakReference(obj);
        _listenerToPointer[obj] = _navigine_sdk_flutter_ZoneListenerNativeWrapper(ptr);
        _navigine_sdk_flutter_ZoneListener_SetPorts(ptr, __lib.createPortWithCallback(_destructor), __lib.createExecutePort());
        return ptr;
    }

    static Pointer<Void> getNativePtr(ZoneListener? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        final foundPointer = _listenerToPointer[obj];
        if (foundPointer == null) {
            return _newNativeObject(obj);
        }
        return foundPointer.ptr;
    }
}

// End of ZoneListener "private" section.
