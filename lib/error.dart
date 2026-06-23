import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

class Error {
  String message;

  int code;

  Error(this.message, this.code);
}

// Error "private" section, not exported.

final class ErrorNative extends Struct {
  external NativeString message;

  @Int32()
  external int code;
}

final ErrorNative Function(NativeString, int) _ErrorNativeInit =
    __lib.catchArgumentError(() => __lib.nativeLibrary
        .lookup<NativeFunction<ErrorNative Function(NativeString, Int32)>>(
            'navigine_sdk_flutter_Error_init')
        .asFunction<ErrorNative Function(NativeString, int)>(isLeaf: true));

extension ErrorImpl on Error {
  static Error fromNative(ErrorNative native) {
    return Error(
      toPlatformString(native.message),
      native.code,
    );
  }

  static ErrorNative toNative(Error obj) {
    return _ErrorNativeInit(toNativeString(obj.message), obj.code);
  }

  static Error? fromPointer(Pointer<Void> ptr, {bool needFree = true}) {
    if (ptr == nullptr) {
      return null;
    }
    final result = ErrorImpl.fromNative(ptr.cast<ErrorNative>().ref);
    if (needFree) {
      malloc.free(ptr);
    }
    return result;
  }

  static Pointer<Void> toPointer(Error? val) {
    if (val == null) {
      return nullptr;
    }
    final result = malloc<ErrorNative>();
    result.ref = ErrorImpl.toNative(val);
    return result.cast();
  }
}

// End of Error "private" section.
