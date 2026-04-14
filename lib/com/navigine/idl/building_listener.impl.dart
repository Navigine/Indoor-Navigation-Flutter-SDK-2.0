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
          navigine_sdk_flutter_Building_FromFfi(activeBuilding),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_Building_ReleaseFfiHandle(activeBuilding);
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
    finally  {
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
          navigine_sdk_flutter_int_FromFfi(activeSublocationId),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_int_ReleaseFfiHandle(activeSublocationId);
    }
    return 0;
}


class _BuildingListenerWrapper extends __lib.NativeBase implements Finalizable {
    _BuildingListenerWrapper(Pointer<Void> handle) : super(handle) {
        _finalizer.attach(this, handle);
    }
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_BuildingListener_free.cast());
}

extension BuildingListenerImpl on BuildingListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<BuildingListener>>{};
    static final _listenerToPointer = WeakMap<BuildingListener, _BuildingListenerWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }
}

Pointer<Void> navigine_sdk_flutter_BuildingListener_ToFfi(BuildingListener value) {
    final result = _navigine_sdk_flutter_BuildingListener_CreateProxy(
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_BuildingListener_onActiveBuildingFocusedStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Pointer<Void>)>(_navigine_sdk_flutter_BuildingListener_onActiveBuildingLeftStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Int32)>(_navigine_sdk_flutter_BuildingListener_onActiveSublocationChangedStatic, __lib.unknownError),
    );
    BuildingListenerImpl._pointerToListener[result] = WeakReference(value);
    BuildingListenerImpl._listenerToPointer[value] = _BuildingListenerWrapper(result);
    _navigine_sdk_flutter_BuildingListener_SetPorts(result, __lib.createPortWithCallback(BuildingListenerImpl._destructor), __lib.createExecutePort());

    return result;
}

Pointer<Void> navigine_sdk_flutter_BuildingListener_ToFfiNullable(BuildingListener? value) => 
  value != null ? navigine_sdk_flutter_BuildingListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_BuildingListener_ReleaseFfiHandle(Pointer<Void> handle) => 
{};

void navigine_sdk_flutter_BuildingListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
{};

// End of BuildingListener "private" section.
