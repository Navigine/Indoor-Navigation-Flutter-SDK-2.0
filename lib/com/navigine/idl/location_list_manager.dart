import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/location_info.dart';
import 'package:navigine_sdk/com/navigine/idl/location_list_listener.dart';

abstract class LocationListManager implements Finalizable {

    void addLocationListListener(LocationListListener listener);
    void removeLocationListListener(LocationListListener listener);
    void updateLocationList();
    Map<int, LocationInfo> getLocationList();



}

// LocationListManager "private" section, not exported.

final _navigine_sdk_flutter_LocationListManager_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationListManager_copy_handle'));

final _navigine_sdk_flutter_LocationListManager_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationListManager_release_handle'));

final _navigine_sdk_flutter_LocationListManager_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_LocationListManager_free');

final _navigine_sdk_flutter_LocationListManager_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer, Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_LocationListManager_create_proxy'));

final _navigine_sdk_flutter_LocationListManager_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_LocationListManager_set_ports'));


class LocationListManager$Impl extends __lib.NativeBase implements LocationListManager, Finalizable {
    LocationListManager$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_LocationListManager_free.cast());

    @override
    void addLocationListListener(LocationListListener listener) {
        final _addLocationListListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationListManager_addLocationListListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_LocationListListener_ToFfi(listener);
        final _handle = this.handle;
        _addLocationListListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_LocationListListener_ReleaseFfiHandle(_listenerHandle);
    }

    @override
    void removeLocationListListener(LocationListListener listener) {
        final _removeLocationListListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationListManager_removeLocationListListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_LocationListListener_ToFfi(listener);
        final _handle = this.handle;
        _removeLocationListListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_LocationListListener_ReleaseFfiHandle(_listenerHandle);
    }

    @override
    void updateLocationList() {
        final _updateLocationListFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationListManager_updateLocationList'));
        final _handle = this.handle;
        _updateLocationListFfi(_handle, );
    }

    @override
    Map<int, LocationInfo> getLocationList() {
        final _getLocationListFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationListManager_getLocationList'));
        final _handle = this.handle;
        final __resultHandle = _getLocationListFfi(_handle, );
        try  {
            return navigine_sdk_flutter_Map_int_LocationInfo_FromFfi(__resultHandle);
        }
        catch (e, stack)  {
            // todo print stacktrace
            rethrow;
        }
        finally  {
            navigine_sdk_flutter_Map_int_LocationInfo_ReleaseFfiHandle(__resultHandle);
        }
    }




}

Pointer<Void> navigine_sdk_flutter_LocationListManager_ToFfi(LocationListManager value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_LocationListManager_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

LocationListManager navigine_sdk_flutter_LocationListManager_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_LocationListManager_CopyHandle(handle);
    final result = LocationListManager$Impl(_copiedHandle);
    LocationListManager$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_LocationListManager_ToFfiNullable(LocationListManager? value) => 
  value != null ? navigine_sdk_flutter_LocationListManager_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_LocationListManager_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_LocationListManager_ReleaseHandle(handle);

void navigine_sdk_flutter_LocationListManager_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_LocationListManager_ReleaseHandle(handle);

LocationListManager? navigine_sdk_flutter_LocationListManager_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_LocationListManager_FromFfi(handle) : null;

// End of LocationListManager "private" section.

final _navigine_sdk_flutter_Map_int_LocationInfo_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_Map_int_LocationInfo_create_handle'));

final _navigine_sdk_flutter_Map_int_LocationInfo_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_int_LocationInfo_release_handle'));

final _navigine_sdk_flutter_Map_int_LocationInfo_Put = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Int32, Pointer<Void>),
    void Function(Pointer<Void>, int, Pointer<Void>)
  >('navigine_sdk_flutter_Map_int_LocationInfo_put'));

final _navigine_sdk_flutter_Map_int_LocationInfo_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_int_LocationInfo_iterator'));

final _navigine_sdk_flutter_Map_int_LocationInfo_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_int_LocationInfo_iterator_release_handle'));

final _navigine_sdk_flutter_Map_int_LocationInfo_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_Map_int_LocationInfo_iterator_is_valid'));

final _navigine_sdk_flutter_Map_int_LocationInfo_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_int_LocationInfo_iterator_increment'));

final _navigine_sdk_flutter_Map_int_LocationInfo_IteratorGetKey = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_int_LocationInfo_iterator_get_key'));

final _navigine_sdk_flutter_Map_int_LocationInfo_IteratorGetValue = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_int_LocationInfo_iterator_get_value'));

Pointer<Void> navigine_sdk_flutter_Map_int_LocationInfo_ToFfi(Map<int, LocationInfo> value) {
    final _result = _navigine_sdk_flutter_Map_int_LocationInfo_CreateHandle();
    for (final entry in value.entries)  {
        final _keyHandle = (entry.key);
        final _valueHandle = navigine_sdk_flutter_LocationInfo_ToFfi(entry.value);
        _navigine_sdk_flutter_Map_int_LocationInfo_Put(_result, _keyHandle, _valueHandle);
        navigine_sdk_flutter_LocationInfo_ReleaseFfiHandle(_valueHandle);
    }
    return _result;
}

Map<int, LocationInfo> navigine_sdk_flutter_Map_int_LocationInfo_FromFfi(Pointer<Void> handle) {
    final result = Map<int, LocationInfo>();
    final _iteratorHandle = _navigine_sdk_flutter_Map_int_LocationInfo_Iterator(handle);
    while (_navigine_sdk_flutter_Map_int_LocationInfo_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _keyHandle = _navigine_sdk_flutter_Map_int_LocationInfo_IteratorGetKey(_iteratorHandle);
        final _valueHandle = _navigine_sdk_flutter_Map_int_LocationInfo_IteratorGetValue(_iteratorHandle);
        try  {
            result[navigine_sdk_flutter_int_FromFfi(_keyHandle)] = navigine_sdk_flutter_LocationInfo_FromFfi(_valueHandle);
        }
        finally  {
            navigine_sdk_flutter_LocationInfo_ReleaseFfiHandle(_keyHandle);navigine_sdk_flutter_LocationInfo_ReleaseFfiHandle(_valueHandle);}
        _navigine_sdk_flutter_Map_int_LocationInfo_IteratorIncrement(_iteratorHandle);
    }
    _navigine_sdk_flutter_Map_int_LocationInfo_IteratorReleaseHandle(_iteratorHandle);
    return result;
}

void navigine_sdk_flutter_Map_int_LocationInfo_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_Map_int_LocationInfo_ReleaseHandle(handle);

final _navigine_sdk_flutter_Map_int_LocationInfo_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_int_LocationInfo_create_handle_nullable'));

final _navigine_sdk_flutter_Map_int_LocationInfo_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_int_LocationInfo_release_handle_nullable'));

final _navigine_sdk_flutter_Map_int_LocationInfo_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_int_LocationInfo_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_Map_int_LocationInfo_ToFfiNullable(Map<int, LocationInfo>? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_Map_int_LocationInfo_ToFfi(value);
    final result = _navigine_sdk_flutter_Map_int_LocationInfo_CreateHandleNullable(_handle);
    navigine_sdk_flutter_Map_int_LocationInfo_ReleaseFfiHandle(_handle);
    return result;
}

Map<int, LocationInfo>? navigine_sdk_flutter_Map_int_LocationInfo_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_Map_int_LocationInfo_GetValueNullable(handle);
    final result = navigine_sdk_flutter_Map_int_LocationInfo_FromFfi(_handle);
    navigine_sdk_flutter_Map_int_LocationInfo_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_Map_int_LocationInfo_ReleaseFfiHandleNullable(Pointer<Void> handle) => _navigine_sdk_flutter_Map_int_LocationInfo_ReleaseHandleNullable(handle);
