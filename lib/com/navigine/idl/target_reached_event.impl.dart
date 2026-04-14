part of 'target_reached_event.dart';

// TargetReachedEvent "private" section, not exported.

final _navigine_sdk_flutter_TargetReachedEvent_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Int64, Pointer<Void>),
    Pointer<Void> Function(int, Pointer<Void>)
  >('navigine_sdk_flutter_TargetReachedEvent_create_handle'));

final _navigine_sdk_flutter_TargetReachedEvent_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_TargetReachedEvent_release_handle'));

final _navigine_sdk_flutter_TargetReachedEvent_GetFieldindex = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int64 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_TargetReachedEvent_get_field_index'));

final _navigine_sdk_flutter_TargetReachedEvent_GetFieldpoint = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_TargetReachedEvent_get_field_point'));


Pointer<Void> navigine_sdk_flutter_TargetReachedEvent_ToFfi(TargetReachedEvent value) {
    final _indexHandle = navigine_sdk_flutter_int_ToFfi(value.index);
    final _pointHandle = navigine_sdk_flutter_LocationPoint_ToFfi(value.point);
    final _result = _navigine_sdk_flutter_TargetReachedEvent_CreateHandle(_indexHandle, _pointHandle);
    navigine_sdk_flutter_int_ReleaseFfiHandle(_indexHandle);
    navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(_pointHandle);
    return _result;
}

TargetReachedEvent navigine_sdk_flutter_TargetReachedEvent_FromFfi(Pointer<Void> handle) {
    final _indexHandle = _navigine_sdk_flutter_TargetReachedEvent_GetFieldindex(handle);
    final _pointHandle = _navigine_sdk_flutter_TargetReachedEvent_GetFieldpoint(handle);
    final _result = TargetReachedEvent(
      navigine_sdk_flutter_int_FromFfi(_indexHandle),
      navigine_sdk_flutter_LocationPoint_FromFfi(_pointHandle),
    );
      navigine_sdk_flutter_int_ReleaseFfiHandle(_indexHandle);
      navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(_pointHandle);
    return _result;
}

void navigine_sdk_flutter_TargetReachedEvent_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_TargetReachedEvent_ReleaseHandle(handle);

final _navigine_sdk_flutter_TargetReachedEvent_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_TargetReachedEvent_create_handle_nullable'));

final _navigine_sdk_flutter_TargetReachedEvent_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_TargetReachedEvent_release_handle_nullable'));

final _navigine_sdk_flutter_TargetReachedEvent_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_TargetReachedEvent_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_TargetReachedEvent_ToFfiNullable(TargetReachedEvent? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_TargetReachedEvent_ToFfi(value);
    final result = _navigine_sdk_flutter_TargetReachedEvent_CreateHandleNullable(_handle);
    navigine_sdk_flutter_TargetReachedEvent_ReleaseFfiHandle(_handle);
    return result;
}

TargetReachedEvent? navigine_sdk_flutter_TargetReachedEvent_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_TargetReachedEvent_GetValueNullable(handle);
    final result = navigine_sdk_flutter_TargetReachedEvent_FromFfi(_handle);
    navigine_sdk_flutter_TargetReachedEvent_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_TargetReachedEvent_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_TargetReachedEvent_ReleaseHandleNullable(handle);
