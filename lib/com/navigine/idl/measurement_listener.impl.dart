part of 'measurement_listener.dart';

// MeasurementListener "private" section, not exported.

final _navigine_sdk_flutter_MeasurementListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_MeasurementListener_free');

final _navigine_sdk_flutter_MeasurementListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer)
  >('navigine_sdk_flutter_MeasurementListener_create_proxy'));

final _navigine_sdk_flutter_MeasurementListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_MeasurementListener_set_ports'));

int _navigine_sdk_flutter_MeasurementListener_onSensorMeasurementDetectedStatic(Pointer<Void> _obj, Pointer<Void> sensors) {
    
    final listener = MeasurementListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onSensorMeasurementDetected(
          MapSensorType_SensorMeasurementImpl.fromNativePtr(sensors),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}

int _navigine_sdk_flutter_MeasurementListener_onSignalMeasurementDetectedStatic(Pointer<Void> _obj, Pointer<Void> signals) {
    
    final listener = MeasurementListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onSignalMeasurementDetected(
          MapString_SignalMeasurementImpl.fromNativePtr(signals),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}


final class _navigine_sdk_flutter_MeasurementListenerNativeWrapper implements Finalizable {
    _navigine_sdk_flutter_MeasurementListenerNativeWrapper(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_MeasurementListener_free.cast());
    final Pointer<Void> ptr;
}

extension MeasurementListenerImpl on MeasurementListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<MeasurementListener>>{};
    static final _listenerToPointer = weak_map.WeakMap<MeasurementListener, _navigine_sdk_flutter_MeasurementListenerNativeWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }

    static Pointer<Void> _newNativeObject(MeasurementListener obj) {
        final ptr = _navigine_sdk_flutter_MeasurementListener_CreateProxy(
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_MeasurementListener_onSensorMeasurementDetectedStatic, __lib.unknownError),
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_MeasurementListener_onSignalMeasurementDetectedStatic, __lib.unknownError),
        );
        _pointerToListener[ptr] = WeakReference(obj);
        _listenerToPointer[obj] = _navigine_sdk_flutter_MeasurementListenerNativeWrapper(ptr);
        _navigine_sdk_flutter_MeasurementListener_SetPorts(ptr, __lib.createPortWithCallback(_destructor), __lib.createExecutePort());
        return ptr;
    }

    static Pointer<Void> getNativePtr(MeasurementListener? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        final foundPointer = _listenerToPointer[obj];
        if (foundPointer == null) {
            return _newNativeObject(obj);
        }
        return foundPointer.ptr;
    }
}

// End of MeasurementListener "private" section.
