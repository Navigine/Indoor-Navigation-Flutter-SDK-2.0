part of 'position_listener.dart';

// PositionListener "private" section, not exported.

final _navigine_sdk_flutter_PositionListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_PositionListener_free');

final _navigine_sdk_flutter_PositionListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer)
  >('navigine_sdk_flutter_PositionListener_create_proxy'));

final _navigine_sdk_flutter_PositionListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_PositionListener_set_ports'));

int _navigine_sdk_flutter_PositionListener_onPositionUpdatedStatic(Pointer<Void> _obj, Pointer<Void> position) {
    
    final listener = PositionListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onPositionUpdated(
          navigine_sdk_flutter_Position_FromFfi(position),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_Position_ReleaseFfiHandle(position);
    }
    return 0;
}

int _navigine_sdk_flutter_PositionListener_onPositionErrorStatic(Pointer<Void> _obj, Pointer<Void> error) {
    
    final listener = PositionListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onPositionError(
          navigine_sdk_flutter_Error_FromFfi(error),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_Error_ReleaseFfiHandle(error);
    }
    return 0;
}


class _PositionListenerWrapper extends __lib.NativeBase implements Finalizable {
    _PositionListenerWrapper(Pointer<Void> handle) : super(handle) {
        _finalizer.attach(this, handle);
    }
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_PositionListener_free.cast());
}

extension PositionListenerImpl on PositionListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<PositionListener>>{};
    static final _listenerToPointer = WeakMap<PositionListener, _PositionListenerWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }
}

Pointer<Void> navigine_sdk_flutter_PositionListener_ToFfi(PositionListener value) {
    final result = _navigine_sdk_flutter_PositionListener_CreateProxy(
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_PositionListener_onPositionUpdatedStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_PositionListener_onPositionErrorStatic, __lib.unknownError),
    );
    PositionListenerImpl._pointerToListener[result] = WeakReference(value);
    PositionListenerImpl._listenerToPointer[value] = _PositionListenerWrapper(result);
    _navigine_sdk_flutter_PositionListener_SetPorts(result, __lib.createPortWithCallback(PositionListenerImpl._destructor), __lib.createExecutePort());

    return result;
}

Pointer<Void> navigine_sdk_flutter_PositionListener_ToFfiNullable(PositionListener? value) => 
  value != null ? navigine_sdk_flutter_PositionListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_PositionListener_ReleaseFfiHandle(Pointer<Void> handle) => 
{};

void navigine_sdk_flutter_PositionListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
{};

// End of PositionListener "private" section.
