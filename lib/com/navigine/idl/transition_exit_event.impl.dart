part of 'transition_exit_event.dart';

// TransitionExitEvent "private" section, not exported.

final _navigine_sdk_flutter_TransitionExitEvent_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Int64, Int64),
    Pointer<Void> Function(int, int)
  >('navigine_sdk_flutter_TransitionExitEvent_create_handle'));

final _navigine_sdk_flutter_TransitionExitEvent_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_TransitionExitEvent_release_handle'));

final _navigine_sdk_flutter_TransitionExitEvent_GetFieldfrom = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int64 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_TransitionExitEvent_get_field_from'));

final _navigine_sdk_flutter_TransitionExitEvent_GetFieldto = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int64 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_TransitionExitEvent_get_field_to'));


Pointer<Void> navigine_sdk_flutter_TransitionExitEvent_ToFfi(TransitionExitEvent value) {
    final _fromHandle = navigine_sdk_flutter_int_ToFfi(value.from);
    final _toHandle = navigine_sdk_flutter_int_ToFfi(value.to);
    final _result = _navigine_sdk_flutter_TransitionExitEvent_CreateHandle(_fromHandle, _toHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_fromHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_toHandle);
    return _result;
}

TransitionExitEvent navigine_sdk_flutter_TransitionExitEvent_FromFfi(Pointer<Void> handle) {
    final _fromHandle = _navigine_sdk_flutter_TransitionExitEvent_GetFieldfrom(handle);
    final _toHandle = _navigine_sdk_flutter_TransitionExitEvent_GetFieldto(handle);
    final _result = TransitionExitEvent(
      navigine_sdk_flutter_int_FromFfi(_fromHandle),
      navigine_sdk_flutter_int_FromFfi(_toHandle),
    );
      navigine_sdk_flutter_int_ReleaseFfiHandle(_fromHandle);
      navigine_sdk_flutter_int_ReleaseFfiHandle(_toHandle);
    return _result;
}

void navigine_sdk_flutter_TransitionExitEvent_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_TransitionExitEvent_ReleaseHandle(handle);

final _navigine_sdk_flutter_TransitionExitEvent_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_TransitionExitEvent_create_handle_nullable'));

final _navigine_sdk_flutter_TransitionExitEvent_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_TransitionExitEvent_release_handle_nullable'));

final _navigine_sdk_flutter_TransitionExitEvent_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_TransitionExitEvent_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_TransitionExitEvent_ToFfiNullable(TransitionExitEvent? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_TransitionExitEvent_ToFfi(value);
    final result = _navigine_sdk_flutter_TransitionExitEvent_CreateHandleNullable(_handle);
    navigine_sdk_flutter_TransitionExitEvent_ReleaseFfiHandle(_handle);
    return result;
}

TransitionExitEvent? navigine_sdk_flutter_TransitionExitEvent_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_TransitionExitEvent_GetValueNullable(handle);
    final result = navigine_sdk_flutter_TransitionExitEvent_FromFfi(_handle);
    navigine_sdk_flutter_TransitionExitEvent_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_TransitionExitEvent_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_TransitionExitEvent_ReleaseHandleNullable(handle);
