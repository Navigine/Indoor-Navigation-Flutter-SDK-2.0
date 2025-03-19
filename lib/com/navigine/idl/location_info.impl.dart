part of 'location_info.dart';

// LocationInfo "private" section, not exported.

final _navigine_sdk_flutter_LocationInfo_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Int32, Int32, Pointer<Void>),
    Pointer<Void> Function(int, int, Pointer<Void>)
  >('navigine_sdk_flutter_LocationInfo_create_handle'));

final _navigine_sdk_flutter_LocationInfo_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationInfo_release_handle'));

final _navigine_sdk_flutter_LocationInfo_GetFieldid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationInfo_get_field_id'));

final _navigine_sdk_flutter_LocationInfo_GetFieldversion = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationInfo_get_field_version'));

final _navigine_sdk_flutter_LocationInfo_GetFieldname = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationInfo_get_field_name'));


Pointer<Void> navigine_sdk_flutter_LocationInfo_ToFfi(LocationInfo value) {
    final _idHandle = navigine_sdk_flutter_int_ToFfi(value.id);
    final _versionHandle = navigine_sdk_flutter_int_ToFfi(value.version);
    final _nameHandle = navigine_sdk_flutter_String_ToFfi(value.name);
    final _result = _navigine_sdk_flutter_LocationInfo_CreateHandle(_idHandle, _versionHandle, _nameHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_idHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_versionHandle);
    navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
    return _result;
}

LocationInfo navigine_sdk_flutter_LocationInfo_FromFfi(Pointer<Void> handle) {
    final _idHandle = _navigine_sdk_flutter_LocationInfo_GetFieldid(handle);
    final _versionHandle = _navigine_sdk_flutter_LocationInfo_GetFieldversion(handle);
    final _nameHandle = _navigine_sdk_flutter_LocationInfo_GetFieldname(handle);
    final _result = LocationInfo(
      navigine_sdk_flutter_int_FromFfi(_idHandle),
      navigine_sdk_flutter_int_FromFfi(_versionHandle),
      navigine_sdk_flutter_String_FromFfi(_nameHandle),
    );
      navigine_sdk_flutter_int_ReleaseFfiHandle(_idHandle);
      navigine_sdk_flutter_int_ReleaseFfiHandle(_versionHandle);
      navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
    return _result;
}

void navigine_sdk_flutter_LocationInfo_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_LocationInfo_ReleaseHandle(handle);

final _navigine_sdk_flutter_LocationInfo_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationInfo_create_handle_nullable'));

final _navigine_sdk_flutter_LocationInfo_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationInfo_release_handle_nullable'));

final _navigine_sdk_flutter_LocationInfo_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationInfo_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_LocationInfo_ToFfiNullable(LocationInfo? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_LocationInfo_ToFfi(value);
    final result = _navigine_sdk_flutter_LocationInfo_CreateHandleNullable(_handle);
    navigine_sdk_flutter_LocationInfo_ReleaseFfiHandle(_handle);
    return result;
}

LocationInfo? navigine_sdk_flutter_LocationInfo_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_LocationInfo_GetValueNullable(handle);
    final result = navigine_sdk_flutter_LocationInfo_FromFfi(_handle);
    navigine_sdk_flutter_LocationInfo_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_LocationInfo_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_LocationInfo_ReleaseHandleNullable(handle);
