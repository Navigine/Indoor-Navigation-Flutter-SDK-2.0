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
