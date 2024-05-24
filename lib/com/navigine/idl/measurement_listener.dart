import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/sensor_measurement.dart';
import 'package:navigine_sdk/com/navigine/idl/sensor_type.dart';
import 'package:navigine_sdk/com/navigine/idl/signal_measurement.dart';

abstract class MeasurementListener {

    void onSensorMeasurementDetected(Map<SensorType, SensorMeasurement> sensors);
    void onSignalMeasurementDetected(Map<String, SignalMeasurement> signals);



}

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
          navigine_sdk_flutter_Map_SensorType_SensorMeasurement_FromFfi(sensors),
        );
        
    }
    catch (e, stack)  {
        // todo print stacktrace
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_Map_SensorType_SensorMeasurement_ReleaseFfiHandle(sensors);
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
          navigine_sdk_flutter_Map_String_SignalMeasurement_FromFfi(signals),
        );
        
    }
    catch (e, stack)  {
        // todo print stacktrace
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_Map_String_SignalMeasurement_ReleaseFfiHandle(signals);
    }
    return 0;
}


class _MeasurementListenerWrapper extends __lib.NativeBase implements Finalizable {
    _MeasurementListenerWrapper(Pointer<Void> handle) : super(handle) {
        _finalizer.attach(this, handle);
    }
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_MeasurementListener_free.cast());
}

extension MeasurementListenerImpl on MeasurementListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<MeasurementListener>>{};
    static final _listenerToPointer = WeakMap<MeasurementListener, _MeasurementListenerWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }
}

Pointer<Void> navigine_sdk_flutter_MeasurementListener_ToFfi(MeasurementListener value) {
    final result = _navigine_sdk_flutter_MeasurementListener_CreateProxy(
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_MeasurementListener_onSensorMeasurementDetectedStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_MeasurementListener_onSignalMeasurementDetectedStatic, __lib.unknownError),
    );
    MeasurementListenerImpl._pointerToListener[result] = WeakReference(value);
    MeasurementListenerImpl._listenerToPointer[value] = _MeasurementListenerWrapper(result);
    _navigine_sdk_flutter_MeasurementListener_SetPorts(result, __lib.createPortWithCallback(MeasurementListenerImpl._destructor), __lib.createExecutePort());

    return result;
}

Pointer<Void> navigine_sdk_flutter_MeasurementListener_ToFfiNullable(MeasurementListener? value) => 
  value != null ? navigine_sdk_flutter_MeasurementListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_MeasurementListener_ReleaseFfiHandle(Pointer<Void> handle) => 
{};

void navigine_sdk_flutter_MeasurementListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
{};

// End of MeasurementListener "private" section.

final _navigine_sdk_flutter_Map_SensorType_SensorMeasurement_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_Map_SensorType_SensorMeasurement_create_handle'));

final _navigine_sdk_flutter_Map_SensorType_SensorMeasurement_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_SensorType_SensorMeasurement_release_handle'));

final _navigine_sdk_flutter_Map_SensorType_SensorMeasurement_Put = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Uint32, Pointer<Void>),
    void Function(Pointer<Void>, int, Pointer<Void>)
  >('navigine_sdk_flutter_Map_SensorType_SensorMeasurement_put'));

final _navigine_sdk_flutter_Map_SensorType_SensorMeasurement_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_SensorType_SensorMeasurement_iterator'));

final _navigine_sdk_flutter_Map_SensorType_SensorMeasurement_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_SensorType_SensorMeasurement_iterator_release_handle'));

final _navigine_sdk_flutter_Map_SensorType_SensorMeasurement_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_Map_SensorType_SensorMeasurement_iterator_is_valid'));

final _navigine_sdk_flutter_Map_SensorType_SensorMeasurement_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_SensorType_SensorMeasurement_iterator_increment'));

final _navigine_sdk_flutter_Map_SensorType_SensorMeasurement_IteratorGetKey = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_SensorType_SensorMeasurement_iterator_get_key'));

final _navigine_sdk_flutter_Map_SensorType_SensorMeasurement_IteratorGetValue = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_SensorType_SensorMeasurement_iterator_get_value'));

Pointer<Void> navigine_sdk_flutter_Map_SensorType_SensorMeasurement_ToFfi(Map<SensorType, SensorMeasurement> value) {
    final _result = _navigine_sdk_flutter_Map_SensorType_SensorMeasurement_CreateHandle();
    for (final entry in value.entries)  {
        final _keyHandle = (entry.key);
        final _valueHandle = navigine_sdk_flutter_SensorMeasurement_ToFfi(entry.value);
        _navigine_sdk_flutter_Map_SensorType_SensorMeasurement_Put(_result, _keyHandle, _valueHandle);
        navigine_sdk_flutter_SensorMeasurement_ReleaseFfiHandle(_valueHandle);
    }
    return _result;
}

Map<SensorType, SensorMeasurement> navigine_sdk_flutter_Map_SensorType_SensorMeasurement_FromFfi(Pointer<Void> handle) {
    final result = Map<SensorType, SensorMeasurement>();
    final _iteratorHandle = _navigine_sdk_flutter_Map_SensorType_SensorMeasurement_Iterator(handle);
    while (_navigine_sdk_flutter_Map_SensorType_SensorMeasurement_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _keyHandle = _navigine_sdk_flutter_Map_SensorType_SensorMeasurement_IteratorGetKey(_iteratorHandle);
        final _valueHandle = _navigine_sdk_flutter_Map_SensorType_SensorMeasurement_IteratorGetValue(_iteratorHandle);
        try  {
            result[navigine_sdk_flutter_SensorType_FromFfi(_keyHandle)] = navigine_sdk_flutter_SensorMeasurement_FromFfi(_valueHandle);
        }
        finally  {
            navigine_sdk_flutter_SensorMeasurement_ReleaseFfiHandle(_keyHandle);navigine_sdk_flutter_SensorMeasurement_ReleaseFfiHandle(_valueHandle);}
        _navigine_sdk_flutter_Map_SensorType_SensorMeasurement_IteratorIncrement(_iteratorHandle);
    }
    _navigine_sdk_flutter_Map_SensorType_SensorMeasurement_IteratorReleaseHandle(_iteratorHandle);
    return result;
}

void navigine_sdk_flutter_Map_SensorType_SensorMeasurement_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_Map_SensorType_SensorMeasurement_ReleaseHandle(handle);

final _navigine_sdk_flutter_Map_SensorType_SensorMeasurement_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_SensorType_SensorMeasurement_create_handle_nullable'));

final _navigine_sdk_flutter_Map_SensorType_SensorMeasurement_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_SensorType_SensorMeasurement_release_handle_nullable'));

final _navigine_sdk_flutter_Map_SensorType_SensorMeasurement_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_SensorType_SensorMeasurement_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_Map_SensorType_SensorMeasurement_ToFfiNullable(Map<SensorType, SensorMeasurement>? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_Map_SensorType_SensorMeasurement_ToFfi(value);
    final result = _navigine_sdk_flutter_Map_SensorType_SensorMeasurement_CreateHandleNullable(_handle);
    navigine_sdk_flutter_Map_SensorType_SensorMeasurement_ReleaseFfiHandle(_handle);
    return result;
}

Map<SensorType, SensorMeasurement>? navigine_sdk_flutter_Map_SensorType_SensorMeasurement_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_Map_SensorType_SensorMeasurement_GetValueNullable(handle);
    final result = navigine_sdk_flutter_Map_SensorType_SensorMeasurement_FromFfi(_handle);
    navigine_sdk_flutter_Map_SensorType_SensorMeasurement_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_Map_SensorType_SensorMeasurement_ReleaseFfiHandleNullable(Pointer<Void> handle) => _navigine_sdk_flutter_Map_SensorType_SensorMeasurement_ReleaseHandleNullable(handle);

final _navigine_sdk_flutter_Map_String_SignalMeasurement_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_Map_String_SignalMeasurement_create_handle'));

final _navigine_sdk_flutter_Map_String_SignalMeasurement_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_SignalMeasurement_release_handle'));

final _navigine_sdk_flutter_Map_String_SignalMeasurement_Put = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_SignalMeasurement_put'));

final _navigine_sdk_flutter_Map_String_SignalMeasurement_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_SignalMeasurement_iterator'));

final _navigine_sdk_flutter_Map_String_SignalMeasurement_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_SignalMeasurement_iterator_release_handle'));

final _navigine_sdk_flutter_Map_String_SignalMeasurement_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_SignalMeasurement_iterator_is_valid'));

final _navigine_sdk_flutter_Map_String_SignalMeasurement_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_SignalMeasurement_iterator_increment'));

final _navigine_sdk_flutter_Map_String_SignalMeasurement_IteratorGetKey = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_SignalMeasurement_iterator_get_key'));

final _navigine_sdk_flutter_Map_String_SignalMeasurement_IteratorGetValue = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_SignalMeasurement_iterator_get_value'));

Pointer<Void> navigine_sdk_flutter_Map_String_SignalMeasurement_ToFfi(Map<String, SignalMeasurement> value) {
    final _result = _navigine_sdk_flutter_Map_String_SignalMeasurement_CreateHandle();
    for (final entry in value.entries)  {
        final _keyHandle = (entry.key);
        final _valueHandle = navigine_sdk_flutter_SignalMeasurement_ToFfi(entry.value);
        _navigine_sdk_flutter_Map_String_SignalMeasurement_Put(_result, _keyHandle, _valueHandle);
        navigine_sdk_flutter_SignalMeasurement_ReleaseFfiHandle(_valueHandle);
    }
    return _result;
}

Map<String, SignalMeasurement> navigine_sdk_flutter_Map_String_SignalMeasurement_FromFfi(Pointer<Void> handle) {
    final result = Map<String, SignalMeasurement>();
    final _iteratorHandle = _navigine_sdk_flutter_Map_String_SignalMeasurement_Iterator(handle);
    while (_navigine_sdk_flutter_Map_String_SignalMeasurement_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _keyHandle = _navigine_sdk_flutter_Map_String_SignalMeasurement_IteratorGetKey(_iteratorHandle);
        final _valueHandle = _navigine_sdk_flutter_Map_String_SignalMeasurement_IteratorGetValue(_iteratorHandle);
        try  {
            result[navigine_sdk_flutter_String_FromFfi(_keyHandle)] = navigine_sdk_flutter_SignalMeasurement_FromFfi(_valueHandle);
        }
        finally  {
            navigine_sdk_flutter_SignalMeasurement_ReleaseFfiHandle(_keyHandle);navigine_sdk_flutter_SignalMeasurement_ReleaseFfiHandle(_valueHandle);}
        _navigine_sdk_flutter_Map_String_SignalMeasurement_IteratorIncrement(_iteratorHandle);
    }
    _navigine_sdk_flutter_Map_String_SignalMeasurement_IteratorReleaseHandle(_iteratorHandle);
    return result;
}

void navigine_sdk_flutter_Map_String_SignalMeasurement_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_Map_String_SignalMeasurement_ReleaseHandle(handle);

final _navigine_sdk_flutter_Map_String_SignalMeasurement_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_SignalMeasurement_create_handle_nullable'));

final _navigine_sdk_flutter_Map_String_SignalMeasurement_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_SignalMeasurement_release_handle_nullable'));

final _navigine_sdk_flutter_Map_String_SignalMeasurement_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_SignalMeasurement_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_Map_String_SignalMeasurement_ToFfiNullable(Map<String, SignalMeasurement>? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_Map_String_SignalMeasurement_ToFfi(value);
    final result = _navigine_sdk_flutter_Map_String_SignalMeasurement_CreateHandleNullable(_handle);
    navigine_sdk_flutter_Map_String_SignalMeasurement_ReleaseFfiHandle(_handle);
    return result;
}

Map<String, SignalMeasurement>? navigine_sdk_flutter_Map_String_SignalMeasurement_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_Map_String_SignalMeasurement_GetValueNullable(handle);
    final result = navigine_sdk_flutter_Map_String_SignalMeasurement_FromFfi(_handle);
    navigine_sdk_flutter_Map_String_SignalMeasurement_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_Map_String_SignalMeasurement_ReleaseFfiHandleNullable(Pointer<Void> handle) => _navigine_sdk_flutter_Map_String_SignalMeasurement_ReleaseHandleNullable(handle);
