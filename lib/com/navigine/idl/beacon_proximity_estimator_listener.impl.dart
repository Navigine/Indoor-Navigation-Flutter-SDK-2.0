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
          ListBeaconProximityEntryImpl.fromNativePtr(beacons),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
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
          progress,
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
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
          ListBeaconProximityEntryImpl.fromNativePtr(beacons),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}

int _navigine_sdk_flutter_BeaconProximityEstimatorListener_onFailedStatic(Pointer<Void> _obj, ErrorNative error) {
    
    final listener = BeaconProximityEstimatorListenerImpl._pointerToListener[_obj]?.target;
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


final class _navigine_sdk_flutter_BeaconProximityEstimatorListenerNativeWrapper implements Finalizable {
    _navigine_sdk_flutter_BeaconProximityEstimatorListenerNativeWrapper(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_BeaconProximityEstimatorListener_free.cast());
    final Pointer<Void> ptr;
}

extension BeaconProximityEstimatorListenerImpl on BeaconProximityEstimatorListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<BeaconProximityEstimatorListener>>{};
    static final _listenerToPointer = weak_map.WeakMap<BeaconProximityEstimatorListener, _navigine_sdk_flutter_BeaconProximityEstimatorListenerNativeWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }

    static Pointer<Void> _newNativeObject(BeaconProximityEstimatorListener obj) {
        final ptr = _navigine_sdk_flutter_BeaconProximityEstimatorListener_CreateProxy(
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_BeaconProximityEstimatorListener_onScanResultReadyStatic, __lib.unknownError),
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, Float)>(_navigine_sdk_flutter_BeaconProximityEstimatorListener_onProgressChangedStatic, __lib.unknownError),
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_BeaconProximityEstimatorListener_onFinishedStatic, __lib.unknownError),
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, ErrorNative)>(_navigine_sdk_flutter_BeaconProximityEstimatorListener_onFailedStatic, __lib.unknownError),
        );
        _pointerToListener[ptr] = WeakReference(obj);
        _listenerToPointer[obj] = _navigine_sdk_flutter_BeaconProximityEstimatorListenerNativeWrapper(ptr);
        _navigine_sdk_flutter_BeaconProximityEstimatorListener_SetPorts(ptr, __lib.createPortWithCallback(_destructor), __lib.createExecutePort());
        return ptr;
    }

    static Pointer<Void> getNativePtr(BeaconProximityEstimatorListener? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        final foundPointer = _listenerToPointer[obj];
        if (foundPointer == null) {
            return _newNativeObject(obj);
        }
        return foundPointer.ptr;
    }
}

// End of BeaconProximityEstimatorListener "private" section.
