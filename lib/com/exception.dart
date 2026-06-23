import 'dart:ffi';

import 'package:flutter/foundation.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/to_native.dart';

final Pointer<Bool> _lastCallSuccess = __lib.nativeLibrary
    .lookup<Bool>('navigine_sdk_flutter_last_call_success');

final _nativeAssert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(NativeString),
    void Function(NativeString)
  >('navigine_sdk_flutter_native_assert'));

void nativeAssert(String message) {
  debugPrint('=== Navigine nativeAssert ===\n$message');
  _nativeAssert(toNativeString(message));
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

void checkCallResult() {
  if (!_lastCallSuccess.value) {
    throw const NativeNullException();
  }
}
