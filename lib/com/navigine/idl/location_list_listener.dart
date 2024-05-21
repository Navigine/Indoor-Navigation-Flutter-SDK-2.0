import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_token_cache.dart' as __lib;
import 'package:navigine_sdk/com/_type_repository.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/location_info.dart';
import 'package:navigine_sdk/error.dart';

abstract class LocationListListener {
    factory LocationListListener(
      void Function(Map<int, LocationInfo>) onLocationListLoadedLambda,
      void Function(Error) onLocationListFailedLambda,
    ) => LocationListListener$Lambdas(
      onLocationListLoadedLambda,
      onLocationListFailedLambda,
    );

    void onLocationListLoaded(Map<int, LocationInfo> locationInfos);
    void onLocationListFailed(Error error);



}

// LocationListListener "private" section, not exported.

final _navigine_sdk_flutter_LocationListListener_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationListListener_release_handle'));

final _navigine_sdk_flutter_LocationListListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64, Int32, Int64, Handle, Pointer, Pointer),
    Pointer<Void> Function(int, int, int, Object, Pointer, Pointer)
  >('navigine_sdk_flutter_LocationListListener_create_proxy'));


class LocationListListener$Lambdas implements LocationListListener {
    void Function(Map<int, LocationInfo>) onLocationListLoadedLambda;
    void Function(Error) onLocationListFailedLambda;

    LocationListListener$Lambdas(
      this.onLocationListLoadedLambda,
      this.onLocationListFailedLambda,
    );

    @override
    void onLocationListLoaded(Map<int, LocationInfo> locationInfos) =>
      onLocationListLoadedLambda(locationInfos);

    @override
    void onLocationListFailed(Error error) =>
      onLocationListFailedLambda(error);


}
int _navigine_sdk_flutter_LocationListListener_onLocationListLoadedStatic(Object _obj, Pointer<Void> locationInfos) {
    
    try  {
        (_obj as LocationListListener).onLocationListLoaded(
          navigine_sdk_flutter_Map_int_LocationInfo_FromFfi(locationInfos),
        );

        
    }
    finally  {
          navigine_sdk_flutter_Map_int_LocationInfo_ReleaseFfiHandle(locationInfos);

    }
    return 0;
}

int _navigine_sdk_flutter_LocationListListener_onLocationListFailedStatic(Object _obj, Pointer<Void> error) {
    
    try  {
        (_obj as LocationListListener).onLocationListFailed(
          navigine_sdk_flutter_Error_FromFfi(error),
        );

        
    }
    finally  {
          navigine_sdk_flutter_Error_ReleaseFfiHandle(error);

    }
    return 0;
}

Pointer<Void> navigine_sdk_flutter_LocationListListener_ToFfi(LocationListListener value) {
    final result = _navigine_sdk_flutter_LocationListListener_CreateProxy(
      __lib.getObjectToken(value),
      __lib.LibraryContext.isolateId,
      __lib.createExecutePort(),
      value,
      Pointer.fromFunction<Uint8 Function(Handle, Pointer<Void>)>(_navigine_sdk_flutter_LocationListListener_onLocationListLoadedStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Handle, Pointer<Void>)>(_navigine_sdk_flutter_LocationListListener_onLocationListFailedStatic, __lib.unknownError),
    );

    return result;
}

Pointer<Void> navigine_sdk_flutter_LocationListListener_ToFfiNullable(LocationListListener? value) => 
  value != null ? navigine_sdk_flutter_LocationListListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_LocationListListener_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_LocationListListener_ReleaseHandle(handle);

void navigine_sdk_flutter_LocationListListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_LocationListListener_ReleaseHandle(handle);

// End of LocationListListener "private" section.

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
