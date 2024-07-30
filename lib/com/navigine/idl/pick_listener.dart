import 'dart:ffi';
import 'dart:math' as math;
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object_pick_result.dart';
import 'package:navigine_sdk/screen_point.dart';

/** Class is used to handle for picking objects on the view (@see LocationView) */
abstract class PickListener {

    /**
     *
     * Receive the result from LocationView `pickMapObjectAt` method (@see LocationView)
     * @param mapObjectPickResult - MapObjectPickResult instance or `nil` if no objects was found (@see MapObjectPickResult).
     * @param screenPosition - position where the object was picked in pixels.
     *
     */
    void onMapObjectPickComplete(MapObjectPickResult mapObjectPickResult, math.Point<double> screenPosition);

    /**
     *
     * Receive the result from LocationView `pickMapFeatureAt` method (@see LocationView)
     * @param mapFeaturePickResult - dictionary of properties of the picked feature or `nil` if no objects was found.
     * @param screenPosition - position where the object was picked in pixels.
     *
     */
    void onMapFeaturePickComplete(Map<String, String> mapFeaturePickResult, math.Point<double> screenPosition);



}

// PickListener "private" section, not exported.

final _navigine_sdk_flutter_PickListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_PickListener_free');

final _navigine_sdk_flutter_PickListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer)
  >('navigine_sdk_flutter_PickListener_create_proxy'));

final _navigine_sdk_flutter_PickListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_PickListener_set_ports'));


int _navigine_sdk_flutter_PickListener_onMapObjectPickCompleteStatic(Pointer<Void> _obj, Pointer<Void> mapObjectPickResult, Pointer<Void> screenPosition) {
    
    final listener = PickListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onMapObjectPickComplete(
          navigine_sdk_flutter_MapObjectPickResult_FromFfi(mapObjectPickResult),
          navigine_sdk_flutter_math_Point_double_FromFfi(screenPosition),
        );
        
    }
    catch (e, stack)  {
        // todo print stacktrace
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_MapObjectPickResult_ReleaseFfiHandle(mapObjectPickResult);
        navigine_sdk_flutter_math_Point_double_ReleaseFfiHandle(screenPosition);
    }
    return 0;
}

int _navigine_sdk_flutter_PickListener_onMapFeaturePickCompleteStatic(Pointer<Void> _obj, Pointer<Void> mapFeaturePickResult, Pointer<Void> screenPosition) {
    
    final listener = PickListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onMapFeaturePickComplete(
          navigine_sdk_flutter_Map_String_String_FromFfi(mapFeaturePickResult),
          navigine_sdk_flutter_math_Point_double_FromFfi(screenPosition),
        );
        
    }
    catch (e, stack)  {
        // todo print stacktrace
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_Map_String_String_ReleaseFfiHandle(mapFeaturePickResult);
        navigine_sdk_flutter_math_Point_double_ReleaseFfiHandle(screenPosition);
    }
    return 0;
}


class _PickListenerWrapper extends __lib.NativeBase implements Finalizable {
    _PickListenerWrapper(Pointer<Void> handle) : super(handle) {
        _finalizer.attach(this, handle);
    }
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_PickListener_free.cast());
}

extension PickListenerImpl on PickListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<PickListener>>{};
    static final _listenerToPointer = WeakMap<PickListener, _PickListenerWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }
}

Pointer<Void> navigine_sdk_flutter_PickListener_ToFfi(PickListener value) {
    final result = _navigine_sdk_flutter_PickListener_CreateProxy(
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_PickListener_onMapObjectPickCompleteStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_PickListener_onMapFeaturePickCompleteStatic, __lib.unknownError),
    );
    PickListenerImpl._pointerToListener[result] = WeakReference(value);
    PickListenerImpl._listenerToPointer[value] = _PickListenerWrapper(result);
    _navigine_sdk_flutter_PickListener_SetPorts(result, __lib.createPortWithCallback(PickListenerImpl._destructor), __lib.createExecutePort());

    return result;
}

Pointer<Void> navigine_sdk_flutter_PickListener_ToFfiNullable(PickListener? value) => 
  value != null ? navigine_sdk_flutter_PickListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_PickListener_ReleaseFfiHandle(Pointer<Void> handle) => 
{};

void navigine_sdk_flutter_PickListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
{};

// End of PickListener "private" section.

final _navigine_sdk_flutter_Map_String_String_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_Map_String_String_create_handle'));

final _navigine_sdk_flutter_Map_String_String_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_String_release_handle'));

final _navigine_sdk_flutter_Map_String_String_Put = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_String_put'));

final _navigine_sdk_flutter_Map_String_String_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_String_iterator'));

final _navigine_sdk_flutter_Map_String_String_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_String_iterator_release_handle'));

final _navigine_sdk_flutter_Map_String_String_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_String_iterator_is_valid'));

final _navigine_sdk_flutter_Map_String_String_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_String_iterator_increment'));

final _navigine_sdk_flutter_Map_String_String_IteratorGetKey = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_String_iterator_get_key'));

final _navigine_sdk_flutter_Map_String_String_IteratorGetValue = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_String_iterator_get_value'));

Pointer<Void> navigine_sdk_flutter_Map_String_String_ToFfi(Map<String, String> value) {
    final _result = _navigine_sdk_flutter_Map_String_String_CreateHandle();
    for (final entry in value.entries)  {
        final _keyHandle = (entry.key);
        final _valueHandle = navigine_sdk_flutter_String_ToFfi(entry.value);
        _navigine_sdk_flutter_Map_String_String_Put(_result, _keyHandle, _valueHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_valueHandle);
    }
    return _result;
}

Map<String, String> navigine_sdk_flutter_Map_String_String_FromFfi(Pointer<Void> handle) {
    final result = Map<String, String>();
    final _iteratorHandle = _navigine_sdk_flutter_Map_String_String_Iterator(handle);
    while (_navigine_sdk_flutter_Map_String_String_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _keyHandle = _navigine_sdk_flutter_Map_String_String_IteratorGetKey(_iteratorHandle);
        final _valueHandle = _navigine_sdk_flutter_Map_String_String_IteratorGetValue(_iteratorHandle);
        try  {
            result[navigine_sdk_flutter_String_FromFfi(_keyHandle)] = navigine_sdk_flutter_String_FromFfi(_valueHandle);
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandle(_keyHandle);navigine_sdk_flutter_String_ReleaseFfiHandle(_valueHandle);}
        _navigine_sdk_flutter_Map_String_String_IteratorIncrement(_iteratorHandle);
    }
    _navigine_sdk_flutter_Map_String_String_IteratorReleaseHandle(_iteratorHandle);
    return result;
}

void navigine_sdk_flutter_Map_String_String_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_Map_String_String_ReleaseHandle(handle);

final _navigine_sdk_flutter_Map_String_String_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_String_create_handle_nullable'));

final _navigine_sdk_flutter_Map_String_String_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_String_release_handle_nullable'));

final _navigine_sdk_flutter_Map_String_String_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_String_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_Map_String_String_ToFfiNullable(Map<String, String>? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_Map_String_String_ToFfi(value);
    final result = _navigine_sdk_flutter_Map_String_String_CreateHandleNullable(_handle);
    navigine_sdk_flutter_Map_String_String_ReleaseFfiHandle(_handle);
    return result;
}

Map<String, String>? navigine_sdk_flutter_Map_String_String_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_Map_String_String_GetValueNullable(handle);
    final result = navigine_sdk_flutter_Map_String_String_FromFfi(_handle);
    navigine_sdk_flutter_Map_String_String_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_Map_String_String_ReleaseFfiHandleNullable(Pointer<Void> handle) => _navigine_sdk_flutter_Map_String_String_ReleaseHandleNullable(handle);
