part of 'zone_event.dart';

// ZoneEvent "private" section, not exported.

final _navigine_sdk_flutter_ZoneEvent_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint32, Int32, Int32, Int32, Pointer<Void>, Pointer<Void>),
    Pointer<Void> Function(int, int, int, int, Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_ZoneEvent_create_handle'));

final _navigine_sdk_flutter_ZoneEvent_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_ZoneEvent_release_handle'));

final _navigine_sdk_flutter_ZoneEvent_GetFieldtype = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_ZoneEvent_get_field_type'));

final _navigine_sdk_flutter_ZoneEvent_GetFieldlocationId = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_ZoneEvent_get_field_locationId'));

final _navigine_sdk_flutter_ZoneEvent_GetFieldsublocationId = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_ZoneEvent_get_field_sublocationId'));

final _navigine_sdk_flutter_ZoneEvent_GetFieldid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_ZoneEvent_get_field_id'));

final _navigine_sdk_flutter_ZoneEvent_GetFieldname = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_ZoneEvent_get_field_name'));

final _navigine_sdk_flutter_ZoneEvent_GetFieldalias = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_ZoneEvent_get_field_alias'));


Pointer<Void> navigine_sdk_flutter_ZoneEvent_ToFfi(ZoneEvent value) {
    final _typeHandle = navigine_sdk_flutter_ZoneEventType_ToFfi(value.type);
    final _locationIdHandle = navigine_sdk_flutter_int_ToFfi(value.locationId);
    final _sublocationIdHandle = navigine_sdk_flutter_int_ToFfi(value.sublocationId);
    final _idHandle = navigine_sdk_flutter_int_ToFfi(value.id);
    final _nameHandle = navigine_sdk_flutter_String_ToFfi(value.name);
    final _aliasHandle = navigine_sdk_flutter_String_ToFfi(value.alias);
    final _result = _navigine_sdk_flutter_ZoneEvent_CreateHandle(_typeHandle, _locationIdHandle, _sublocationIdHandle, _idHandle, _nameHandle, _aliasHandle);
    navigine_sdk_flutter_ZoneEventType_ReleaseFfiHandle(_typeHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_locationIdHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_sublocationIdHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_idHandle);
    navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
    navigine_sdk_flutter_String_ReleaseFfiHandle(_aliasHandle);
    return _result;
}

ZoneEvent navigine_sdk_flutter_ZoneEvent_FromFfi(Pointer<Void> handle) {
    final _typeHandle = _navigine_sdk_flutter_ZoneEvent_GetFieldtype(handle);
    final _locationIdHandle = _navigine_sdk_flutter_ZoneEvent_GetFieldlocationId(handle);
    final _sublocationIdHandle = _navigine_sdk_flutter_ZoneEvent_GetFieldsublocationId(handle);
    final _idHandle = _navigine_sdk_flutter_ZoneEvent_GetFieldid(handle);
    final _nameHandle = _navigine_sdk_flutter_ZoneEvent_GetFieldname(handle);
    final _aliasHandle = _navigine_sdk_flutter_ZoneEvent_GetFieldalias(handle);
    final _result = ZoneEvent(
      navigine_sdk_flutter_ZoneEventType_FromFfi(_typeHandle),
      navigine_sdk_flutter_int_FromFfi(_locationIdHandle),
      navigine_sdk_flutter_int_FromFfi(_sublocationIdHandle),
      navigine_sdk_flutter_int_FromFfi(_idHandle),
      navigine_sdk_flutter_String_FromFfi(_nameHandle),
      navigine_sdk_flutter_String_FromFfi(_aliasHandle),
    );
      navigine_sdk_flutter_ZoneEventType_ReleaseFfiHandle(_typeHandle);
      navigine_sdk_flutter_int_ReleaseFfiHandle(_locationIdHandle);
      navigine_sdk_flutter_int_ReleaseFfiHandle(_sublocationIdHandle);
      navigine_sdk_flutter_int_ReleaseFfiHandle(_idHandle);
      navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
      navigine_sdk_flutter_String_ReleaseFfiHandle(_aliasHandle);
    return _result;
}

void navigine_sdk_flutter_ZoneEvent_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_ZoneEvent_ReleaseHandle(handle);

final _navigine_sdk_flutter_ZoneEvent_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_ZoneEvent_create_handle_nullable'));

final _navigine_sdk_flutter_ZoneEvent_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_ZoneEvent_release_handle_nullable'));

final _navigine_sdk_flutter_ZoneEvent_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_ZoneEvent_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_ZoneEvent_ToFfiNullable(ZoneEvent? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_ZoneEvent_ToFfi(value);
    final result = _navigine_sdk_flutter_ZoneEvent_CreateHandleNullable(_handle);
    navigine_sdk_flutter_ZoneEvent_ReleaseFfiHandle(_handle);
    return result;
}

ZoneEvent? navigine_sdk_flutter_ZoneEvent_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_ZoneEvent_GetValueNullable(handle);
    final result = navigine_sdk_flutter_ZoneEvent_FromFfi(_handle);
    navigine_sdk_flutter_ZoneEvent_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_ZoneEvent_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_ZoneEvent_ReleaseHandleNullable(handle);
