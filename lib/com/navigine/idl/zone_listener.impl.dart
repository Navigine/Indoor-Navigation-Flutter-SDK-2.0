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

int _navigine_sdk_flutter_ZoneListener_onZoneEventStatic(Pointer<Void> _obj, Pointer<Void> zoneEvent) {
    
    final listener = ZoneListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onZoneEvent(
          navigine_sdk_flutter_ZoneEvent_FromFfi(zoneEvent),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_ZoneEvent_ReleaseFfiHandle(zoneEvent);
    }
    return 0;
}


class _ZoneListenerWrapper extends __lib.NativeBase implements Finalizable {
    _ZoneListenerWrapper(Pointer<Void> handle) : super(handle) {
        _finalizer.attach(this, handle);
    }
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_ZoneListener_free.cast());
}

extension ZoneListenerImpl on ZoneListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<ZoneListener>>{};
    static final _listenerToPointer = WeakMap<ZoneListener, _ZoneListenerWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }
}

Pointer<Void> navigine_sdk_flutter_ZoneListener_ToFfi(ZoneListener value) {
    final result = _navigine_sdk_flutter_ZoneListener_CreateProxy(
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_ZoneListener_onZoneEventStatic, __lib.unknownError),
    );
    ZoneListenerImpl._pointerToListener[result] = WeakReference(value);
    ZoneListenerImpl._listenerToPointer[value] = _ZoneListenerWrapper(result);
    _navigine_sdk_flutter_ZoneListener_SetPorts(result, __lib.createPortWithCallback(ZoneListenerImpl._destructor), __lib.createExecutePort());

    return result;
}

Pointer<Void> navigine_sdk_flutter_ZoneListener_ToFfiNullable(ZoneListener? value) => 
  value != null ? navigine_sdk_flutter_ZoneListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_ZoneListener_ReleaseFfiHandle(Pointer<Void> handle) => 
{};

void navigine_sdk_flutter_ZoneListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
{};

// End of ZoneListener "private" section.
