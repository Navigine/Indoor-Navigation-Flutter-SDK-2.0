import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/weak_interfaces_meta.dart';

final Pointer<Utf8> Function(Pointer<Void>) _getId = __lib.nativeLibrary
    .lookup<NativeFunction<Pointer<Utf8> Function(Pointer<Void>)>>(
        'navigine_flutter_weak_interface_wrapper_id')
    .asFunction(isLeaf: true);

T createFromNative<T>(Pointer<Void> ptr) {
  final String name = _getId(ptr).toDartString();
  final factory = weakInterfacesMeta[name];
  if (factory == null) {
    throw StateError('Unknown weak interface type id: $name');
  }
  return factory(ptr) as T;
}
