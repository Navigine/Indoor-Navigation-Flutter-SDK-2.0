part of 'beacon_proximity_estimator_listener.dart';

// BeaconProximityEstimatorListener "private" section, not exported.

final _navigine_sdk_flutter_BeaconProximityEstimatorListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_BeaconProximityEstimatorListener_free');

final _navigine_sdk_flutter_BeaconProximityEstimatorListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer, Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_BeaconProximityEstimatorListener_create_proxy'));

final _navigine_sdk_flutter_BeaconProximityEstimatorListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_BeaconProximityEstimatorListener_set_ports'));

int _navigine_sdk_flutter_BeaconProximityEstimatorListener_onScanResultReadyStatic(Pointer<Void> _obj, Pointer<Void> beacons) {
    
    final listener = BeaconProximityEstimatorListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onScanResultReady(
          navigine_sdk_flutter_List_BeaconProximityEntry_FromFfi(beacons),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_List_BeaconProximityEntry_ReleaseFfiHandle(beacons);
    }
    return 0;
}

int _navigine_sdk_flutter_BeaconProximityEstimatorListener_onProgressChangedStatic(Pointer<Void> _obj, double progress) {
    
    final listener = BeaconProximityEstimatorListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onProgressChanged(
          navigine_sdk_flutter_double_FromFfi(progress),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_double_ReleaseFfiHandle(progress);
    }
    return 0;
}

int _navigine_sdk_flutter_BeaconProximityEstimatorListener_onFinishedStatic(Pointer<Void> _obj, Pointer<Void> beacons) {
    
    final listener = BeaconProximityEstimatorListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onFinished(
          navigine_sdk_flutter_List_BeaconProximityEntry_FromFfi(beacons),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_List_BeaconProximityEntry_ReleaseFfiHandle(beacons);
    }
    return 0;
}

int _navigine_sdk_flutter_BeaconProximityEstimatorListener_onFailedStatic(Pointer<Void> _obj, Pointer<Void> error) {
    
    final listener = BeaconProximityEstimatorListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onFailed(
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


class _BeaconProximityEstimatorListenerWrapper extends __lib.NativeBase implements Finalizable {
    _BeaconProximityEstimatorListenerWrapper(Pointer<Void> handle) : super(handle) {
        _finalizer.attach(this, handle);
    }
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_BeaconProximityEstimatorListener_free.cast());
}

extension BeaconProximityEstimatorListenerImpl on BeaconProximityEstimatorListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<BeaconProximityEstimatorListener>>{};
    static final _listenerToPointer = WeakMap<BeaconProximityEstimatorListener, _BeaconProximityEstimatorListenerWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }
}

Pointer<Void> navigine_sdk_flutter_BeaconProximityEstimatorListener_ToFfi(BeaconProximityEstimatorListener value) {
    final result = _navigine_sdk_flutter_BeaconProximityEstimatorListener_CreateProxy(
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_BeaconProximityEstimatorListener_onScanResultReadyStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Float)>(_navigine_sdk_flutter_BeaconProximityEstimatorListener_onProgressChangedStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_BeaconProximityEstimatorListener_onFinishedStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_BeaconProximityEstimatorListener_onFailedStatic, __lib.unknownError),
    );
    BeaconProximityEstimatorListenerImpl._pointerToListener[result] = WeakReference(value);
    BeaconProximityEstimatorListenerImpl._listenerToPointer[value] = _BeaconProximityEstimatorListenerWrapper(result);
    _navigine_sdk_flutter_BeaconProximityEstimatorListener_SetPorts(result, __lib.createPortWithCallback(BeaconProximityEstimatorListenerImpl._destructor), __lib.createExecutePort());

    return result;
}

Pointer<Void> navigine_sdk_flutter_BeaconProximityEstimatorListener_ToFfiNullable(BeaconProximityEstimatorListener? value) => 
  value != null ? navigine_sdk_flutter_BeaconProximityEstimatorListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_BeaconProximityEstimatorListener_ReleaseFfiHandle(Pointer<Void> handle) => 
{};

void navigine_sdk_flutter_BeaconProximityEstimatorListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
{};

// End of BeaconProximityEstimatorListener "private" section.

final _navigine_sdk_flutter_List_BeaconProximityEntry_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_BeaconProximityEntry_create_handle'));

final _navigine_sdk_flutter_List_BeaconProximityEntry_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_BeaconProximityEntry_release_handle'));

final _navigine_sdk_flutter_List_BeaconProximityEntry_Insert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_BeaconProximityEntry_insert'));

final _navigine_sdk_flutter_List_BeaconProximityEntry_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_BeaconProximityEntry_iterator'));

final _navigine_sdk_flutter_List_BeaconProximityEntry_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_BeaconProximityEntry_iterator_release_handle'));

final _navigine_sdk_flutter_List_BeaconProximityEntry_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_BeaconProximityEntry_iterator_is_valid'));

final _navigine_sdk_flutter_List_BeaconProximityEntry_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_BeaconProximityEntry_iterator_increment'));

final _navigine_sdk_flutter_List_BeaconProximityEntry_IteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_BeaconProximityEntry_iterator_get'));

Pointer<Void> navigine_sdk_flutter_List_BeaconProximityEntry_ToFfi(List<BeaconProximityEntry> value)  {
    final _result = _navigine_sdk_flutter_List_BeaconProximityEntry_CreateHandle();
    for (final element in value)  {
        final _elementHandle = navigine_sdk_flutter_BeaconProximityEntry_ToFfi(element);
        _navigine_sdk_flutter_List_BeaconProximityEntry_Insert(_result, _elementHandle);
        navigine_sdk_flutter_BeaconProximityEntry_ReleaseFfiHandle(_elementHandle);
    }
    return _result;
}

List<BeaconProximityEntry> navigine_sdk_flutter_List_BeaconProximityEntry_FromFfi(Pointer<Void> handle)  {
    final result = List<BeaconProximityEntry>.empty(growable: true);
    final _iteratorHandle = _navigine_sdk_flutter_List_BeaconProximityEntry_Iterator(handle);
    while (_navigine_sdk_flutter_List_BeaconProximityEntry_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _elementHandle = _navigine_sdk_flutter_List_BeaconProximityEntry_IteratorGet(_iteratorHandle);
        result.add(navigine_sdk_flutter_BeaconProximityEntry_FromFfi(_elementHandle));
        navigine_sdk_flutter_BeaconProximityEntry_ReleaseFfiHandle(_elementHandle);
        _navigine_sdk_flutter_List_BeaconProximityEntry_IteratorIncrement(_iteratorHandle);
    }
    return result;
}

void navigine_sdk_flutter_List_BeaconProximityEntry_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_List_BeaconProximityEntry_ReleaseHandle(handle);

final _navigine_sdk_flutter_List_BeaconProximityEntry_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_BeaconProximityEntry_create_handle_nullable'));

final _navigine_sdk_flutter_List_BeaconProximityEntry_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_BeaconProximityEntry_release_handle_nullable'));

final _navigine_sdk_flutter_List_BeaconProximityEntry_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_BeaconProximityEntry_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_List_BeaconProximityEntry_ToFfiNullable(List<BeaconProximityEntry>? value)  {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_List_BeaconProximityEntry_ToFfi(value);
    final result = _navigine_sdk_flutter_List_BeaconProximityEntry_CreateHandleNullable(_handle);
    navigine_sdk_flutter_List_BeaconProximityEntry_ReleaseFfiHandle(_handle);
    return result;
}

List<BeaconProximityEntry>? navigine_sdk_flutter_List_BeaconProximityEntry_FromFfiNullable(Pointer<Void> handle)  {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_List_BeaconProximityEntry_GetValueNullable(handle);
    final result = navigine_sdk_flutter_List_BeaconProximityEntry_FromFfi(_handle);
    navigine_sdk_flutter_List_BeaconProximityEntry_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_List_BeaconProximityEntry_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_BeaconProximityEntry_ReleaseHandleNullable(handle);
