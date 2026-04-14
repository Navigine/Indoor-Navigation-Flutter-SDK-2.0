part of 'turn_event.dart';

// TurnEvent "private" section, not exported.

final _navigine_sdk_flutter_TurnEvent_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint32, Int32),
    Pointer<Void> Function(int, int)
  >('navigine_sdk_flutter_TurnEvent_create_handle'));

final _navigine_sdk_flutter_TurnEvent_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_TurnEvent_release_handle'));

final _navigine_sdk_flutter_TurnEvent_GetFieldtype = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_TurnEvent_get_field_type'));

final _navigine_sdk_flutter_TurnEvent_GetFieldangle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_TurnEvent_get_field_angle'));


Pointer<Void> navigine_sdk_flutter_TurnEvent_ToFfi(TurnEvent value) {
    final _typeHandle = navigine_sdk_flutter_TurnType_ToFfi(value.type);
    final _angleHandle = navigine_sdk_flutter_int_ToFfi(value.angle);
    final _result = _navigine_sdk_flutter_TurnEvent_CreateHandle(_typeHandle, _angleHandle);
    navigine_sdk_flutter_TurnType_ReleaseFfiHandle(_typeHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_angleHandle);
    return _result;
}

TurnEvent navigine_sdk_flutter_TurnEvent_FromFfi(Pointer<Void> handle) {
    final _typeHandle = _navigine_sdk_flutter_TurnEvent_GetFieldtype(handle);
    final _angleHandle = _navigine_sdk_flutter_TurnEvent_GetFieldangle(handle);
    final _result = TurnEvent(
      navigine_sdk_flutter_TurnType_FromFfi(_typeHandle),
      navigine_sdk_flutter_int_FromFfi(_angleHandle),
    );
      navigine_sdk_flutter_TurnType_ReleaseFfiHandle(_typeHandle);
      navigine_sdk_flutter_int_ReleaseFfiHandle(_angleHandle);
    return _result;
}

void navigine_sdk_flutter_TurnEvent_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_TurnEvent_ReleaseHandle(handle);

final _navigine_sdk_flutter_TurnEvent_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_TurnEvent_create_handle_nullable'));

final _navigine_sdk_flutter_TurnEvent_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_TurnEvent_release_handle_nullable'));

final _navigine_sdk_flutter_TurnEvent_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_TurnEvent_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_TurnEvent_ToFfiNullable(TurnEvent? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_TurnEvent_ToFfi(value);
    final result = _navigine_sdk_flutter_TurnEvent_CreateHandleNullable(_handle);
    navigine_sdk_flutter_TurnEvent_ReleaseFfiHandle(_handle);
    return result;
}

TurnEvent? navigine_sdk_flutter_TurnEvent_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_TurnEvent_GetValueNullable(handle);
    final result = navigine_sdk_flutter_TurnEvent_FromFfi(_handle);
    navigine_sdk_flutter_TurnEvent_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_TurnEvent_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_TurnEvent_ReleaseHandleNullable(handle);
