

import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';


class Error {
  String message;

  int code;

  Error(this.message, this.code);
}


// Error "private" section, not exported.

final _navigine_sdk_flutter_Error_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Error_release_handle'));
final _navigine_sdk_flutter_Error_GetFieldmessage = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Error_get_field_message'));
final _navigine_sdk_flutter_Error_GetFieldcode = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_Error_get_field_code'));


Error navigine_sdk_flutter_Error_FromFfi(Pointer<Void> handle) {
  final _messageHandle = _navigine_sdk_flutter_Error_GetFieldmessage(handle);
  final _codeHandle = _navigine_sdk_flutter_Error_GetFieldcode(handle);

  try {
    return Error(
      navigine_sdk_flutter_String_FromFfi(_messageHandle),
      (_codeHandle)
    );
  } finally {
    navigine_sdk_flutter_String_ReleaseFfiHandle(_messageHandle);

  }
}

void navigine_sdk_flutter_Error_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_Error_ReleaseHandle(handle);

// Nullable Error

final _navigine_sdk_flutter_Error_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Error_release_handle_nullable'));
final _navigine_sdk_flutter_Error_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Error_get_value_nullable'));

Error? navigine_sdk_flutter_Error_FromFfiNullable(Pointer<Void> handle) {
  if (handle.address == 0) return null;
  final _handle = _navigine_sdk_flutter_Error_GetValueNullable(handle);
  final result = navigine_sdk_flutter_Error_FromFfi(_handle);
  navigine_sdk_flutter_Error_ReleaseFfiHandle(_handle);
  return result;
}

void navigine_sdk_flutter_Error_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_Error_ReleaseHandleNullable(handle);

// End of Error "private" section.
