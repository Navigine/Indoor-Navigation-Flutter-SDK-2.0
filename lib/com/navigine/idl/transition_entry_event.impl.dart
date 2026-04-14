part of 'transition_entry_event.dart';

// TransitionEntryEvent "private" section, not exported.

final _navigine_sdk_flutter_TransitionEntryEvent_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Int64, Int64),
    Pointer<Void> Function(int, int)
  >('navigine_sdk_flutter_TransitionEntryEvent_create_handle'));

final _navigine_sdk_flutter_TransitionEntryEvent_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_TransitionEntryEvent_release_handle'));

final _navigine_sdk_flutter_TransitionEntryEvent_GetFieldfrom = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int64 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_TransitionEntryEvent_get_field_from'));

final _navigine_sdk_flutter_TransitionEntryEvent_GetFieldto = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int64 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_TransitionEntryEvent_get_field_to'));


Pointer<Void> navigine_sdk_flutter_TransitionEntryEvent_ToFfi(TransitionEntryEvent value) {
    final _fromHandle = navigine_sdk_flutter_int_ToFfi(value.from);
    final _toHandle = navigine_sdk_flutter_int_ToFfi(value.to);
    final _result = _navigine_sdk_flutter_TransitionEntryEvent_CreateHandle(_fromHandle, _toHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_fromHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_toHandle);
    return _result;
}

TransitionEntryEvent navigine_sdk_flutter_TransitionEntryEvent_FromFfi(Pointer<Void> handle) {
    final _fromHandle = _navigine_sdk_flutter_TransitionEntryEvent_GetFieldfrom(handle);
    final _toHandle = _navigine_sdk_flutter_TransitionEntryEvent_GetFieldto(handle);
    final _result = TransitionEntryEvent(
      navigine_sdk_flutter_int_FromFfi(_fromHandle),
      navigine_sdk_flutter_int_FromFfi(_toHandle),
    );
      navigine_sdk_flutter_int_ReleaseFfiHandle(_fromHandle);
      navigine_sdk_flutter_int_ReleaseFfiHandle(_toHandle);
    return _result;
}

void navigine_sdk_flutter_TransitionEntryEvent_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_TransitionEntryEvent_ReleaseHandle(handle);

final _navigine_sdk_flutter_TransitionEntryEvent_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_TransitionEntryEvent_create_handle_nullable'));

final _navigine_sdk_flutter_TransitionEntryEvent_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_TransitionEntryEvent_release_handle_nullable'));

final _navigine_sdk_flutter_TransitionEntryEvent_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_TransitionEntryEvent_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_TransitionEntryEvent_ToFfiNullable(TransitionEntryEvent? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_TransitionEntryEvent_ToFfi(value);
    final result = _navigine_sdk_flutter_TransitionEntryEvent_CreateHandleNullable(_handle);
    navigine_sdk_flutter_TransitionEntryEvent_ReleaseFfiHandle(_handle);
    return result;
}

TransitionEntryEvent? navigine_sdk_flutter_TransitionEntryEvent_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_TransitionEntryEvent_GetValueNullable(handle);
    final result = navigine_sdk_flutter_TransitionEntryEvent_FromFfi(_handle);
    navigine_sdk_flutter_TransitionEntryEvent_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_TransitionEntryEvent_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_TransitionEntryEvent_ReleaseHandleNullable(handle);
