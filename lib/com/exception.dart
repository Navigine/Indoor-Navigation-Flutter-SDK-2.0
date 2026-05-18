import 'dart:ffi';

import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

final _nativeAssert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_native_assert'));

void nativeAssert(String message) {
  _nativeAssert(navigine_sdk_flutter_String_ToFfi(message));
}

class AsyncErrorHandler {
  final Function? _onError;

  AsyncErrorHandler(this._onError);

  void onError(Object error, StackTrace stack) {
    if (_onError is Function(Object)) {
      _onError!(error);
    } else if (_onError is Function(Object, StackTrace)) {
      _onError!(error, stack);
    } else {
      throw error;
    }
  }
}

class NativeNullException implements Exception {
  const NativeNullException();

  @override
  String toString() {
    return 'NativeNullException: access to deleted native object.';
  }
}
