part of 'route_event.dart';

// RouteEvent "private" section, not exported.

final _navigine_sdk_flutter_RouteEvent_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint32, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>),
    Pointer<Void> Function(int, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_RouteEvent_create_handle'));

final _navigine_sdk_flutter_RouteEvent_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteEvent_release_handle'));

final _navigine_sdk_flutter_RouteEvent_GetFieldtype = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteEvent_get_field_type'));

final _navigine_sdk_flutter_RouteEvent_GetFieldturnEvent = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteEvent_get_field_turnEvent'));

final _navigine_sdk_flutter_RouteEvent_GetFieldtransitionEntryEvent = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteEvent_get_field_transitionEntryEvent'));

final _navigine_sdk_flutter_RouteEvent_GetFieldtransitionExitEvent = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteEvent_get_field_transitionExitEvent'));

final _navigine_sdk_flutter_RouteEvent_GetFieldtargetReachedEvent = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteEvent_get_field_targetReachedEvent'));


Pointer<Void> navigine_sdk_flutter_RouteEvent_ToFfi(RouteEvent value) {
    final _typeHandle = navigine_sdk_flutter_RouteEventType_ToFfi(value.type);
    final _turnEventHandle = navigine_sdk_flutter_TurnEvent_ToFfiNullable(value.turnEvent);
    final _transitionEntryEventHandle = navigine_sdk_flutter_TransitionEntryEvent_ToFfiNullable(value.transitionEntryEvent);
    final _transitionExitEventHandle = navigine_sdk_flutter_TransitionExitEvent_ToFfiNullable(value.transitionExitEvent);
    final _targetReachedEventHandle = navigine_sdk_flutter_TargetReachedEvent_ToFfiNullable(value.targetReachedEvent);
    final _result = _navigine_sdk_flutter_RouteEvent_CreateHandle(_typeHandle, _turnEventHandle, _transitionEntryEventHandle, _transitionExitEventHandle, _targetReachedEventHandle);
    navigine_sdk_flutter_RouteEventType_ReleaseFfiHandle(_typeHandle);
    navigine_sdk_flutter_TurnEvent_ReleaseFfiHandleNullable(_turnEventHandle);
    navigine_sdk_flutter_TransitionEntryEvent_ReleaseFfiHandleNullable(_transitionEntryEventHandle);
    navigine_sdk_flutter_TransitionExitEvent_ReleaseFfiHandleNullable(_transitionExitEventHandle);
    navigine_sdk_flutter_TargetReachedEvent_ReleaseFfiHandleNullable(_targetReachedEventHandle);
    return _result;
}

RouteEvent navigine_sdk_flutter_RouteEvent_FromFfi(Pointer<Void> handle) {
    final _typeHandle = _navigine_sdk_flutter_RouteEvent_GetFieldtype(handle);
    final _turnEventHandle = _navigine_sdk_flutter_RouteEvent_GetFieldturnEvent(handle);
    final _transitionEntryEventHandle = _navigine_sdk_flutter_RouteEvent_GetFieldtransitionEntryEvent(handle);
    final _transitionExitEventHandle = _navigine_sdk_flutter_RouteEvent_GetFieldtransitionExitEvent(handle);
    final _targetReachedEventHandle = _navigine_sdk_flutter_RouteEvent_GetFieldtargetReachedEvent(handle);
    final _result = RouteEvent(
      navigine_sdk_flutter_RouteEventType_FromFfi(_typeHandle),
      navigine_sdk_flutter_TurnEvent_FromFfiNullable(_turnEventHandle),
      navigine_sdk_flutter_TransitionEntryEvent_FromFfiNullable(_transitionEntryEventHandle),
      navigine_sdk_flutter_TransitionExitEvent_FromFfiNullable(_transitionExitEventHandle),
      navigine_sdk_flutter_TargetReachedEvent_FromFfiNullable(_targetReachedEventHandle),
    );
      navigine_sdk_flutter_RouteEventType_ReleaseFfiHandle(_typeHandle);
      navigine_sdk_flutter_TurnEvent_ReleaseFfiHandleNullable(_turnEventHandle);
      navigine_sdk_flutter_TransitionEntryEvent_ReleaseFfiHandleNullable(_transitionEntryEventHandle);
      navigine_sdk_flutter_TransitionExitEvent_ReleaseFfiHandleNullable(_transitionExitEventHandle);
      navigine_sdk_flutter_TargetReachedEvent_ReleaseFfiHandleNullable(_targetReachedEventHandle);
    return _result;
}

void navigine_sdk_flutter_RouteEvent_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_RouteEvent_ReleaseHandle(handle);

final _navigine_sdk_flutter_RouteEvent_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteEvent_create_handle_nullable'));

final _navigine_sdk_flutter_RouteEvent_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteEvent_release_handle_nullable'));

final _navigine_sdk_flutter_RouteEvent_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteEvent_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_RouteEvent_ToFfiNullable(RouteEvent? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_RouteEvent_ToFfi(value);
    final result = _navigine_sdk_flutter_RouteEvent_CreateHandleNullable(_handle);
    navigine_sdk_flutter_RouteEvent_ReleaseFfiHandle(_handle);
    return result;
}

RouteEvent? navigine_sdk_flutter_RouteEvent_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_RouteEvent_GetValueNullable(handle);
    final result = navigine_sdk_flutter_RouteEvent_FromFfi(_handle);
    navigine_sdk_flutter_RouteEvent_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_RouteEvent_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_RouteEvent_ReleaseHandleNullable(handle);
