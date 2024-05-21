import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_token_cache.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

typedef CameraCallback = void Function(bool completed);

// CameraCallback "private" section, not exported.

final _navigine_sdk_flutter_CameraCallback_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_CameraCallback_release_handle'));

final _navigine_sdk_flutter_CameraCallback_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64, Int32, Int64, Handle, Pointer),
    Pointer<Void> Function(int, int, int, Object, Pointer)
  >('navigine_sdk_flutter_CameraCallback_create_proxy'));


int _navigine_sdk_flutter_CameraCallback_call_SetStatic(Object _obj,  int completed) {
    try  {
        (_obj as CameraCallback)(
          navigine_sdk_flutter_bool_FromFfi(completed),
        );
    }
    finally  {
        navigine_sdk_flutter_bool_ReleaseFfiHandle(completed);
    }
    return 0;
}

Pointer<Void> navigine_sdk_flutter_CameraCallback_ToFfi(CameraCallback value) =>
  _navigine_sdk_flutter_CameraCallback_CreateProxy(
    __lib.getObjectToken(value),
    __lib.LibraryContext.isolateId,
    __lib.createExecutePort(),
    value,
    Pointer.fromFunction<Int64 Function(Handle, Uint8)>(_navigine_sdk_flutter_CameraCallback_call_SetStatic, __lib.unknownError)
);
void navigine_sdk_flutter_CameraCallback_ReleaseFfiHandle(Pointer<Void> handle) =>
  _navigine_sdk_flutter_CameraCallback_ReleaseHandle(handle);

// Nullable CameraCallback

final _navigine_sdk_flutter_CameraCallback_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_CameraCallback_create_handle_nullable'));

final _navigine_sdk_flutter_CameraCallback_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_CameraCallback_release_handle_nullable'));

Pointer<Void> navigine_sdk_flutter_CameraCallback_ToFfiNullable(CameraCallback? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_CameraCallback_ToFfi(value);
    final result = _navigine_sdk_flutter_CameraCallback_CreateHandleNullable(_handle);
    navigine_sdk_flutter_CameraCallback_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_CameraCallback_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_CameraCallback_ReleaseHandleNullable(handle);

// End of CameraCallback "private" section.
