import 'dart:collection';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

final Pointer<Void> Function(Pointer<Void>, int) _listGetValue =
    __lib.catchArgumentError(() => __lib.nativeLibrary
        .lookupFunction<
            Pointer<Void> Function(Pointer<Void>, IntPtr),
            Pointer<Void> Function(Pointer<Void>, int)>(
            'navigine_sdk_flutter_vector_get_value'));

final int Function(Pointer<Void>) _listGetSize =
    __lib.catchArgumentError(() => __lib.nativeLibrary
        .lookupFunction<IntPtr Function(Pointer<Void>), int Function(Pointer<Void>)>(
            'navigine_sdk_flutter_vector_get_size'));

final Pointer<Void> Function(Pointer<Pointer<Void>>, int) _listNew =
    __lib.catchArgumentError(() => __lib.nativeLibrary
        .lookupFunction<
            Pointer<Void> Function(Pointer<Pointer<Void>>, IntPtr),
            Pointer<Void> Function(Pointer<Pointer<Void>>, int)>(
            'navigine_sdk_flutter_vector_new'));

final _listFreeNative = __lib.catchArgumentError(() => __lib.nativeLibrary
    .lookup<NativeFunction<Void Function(Pointer<Void>)>>(
        'navigine_sdk_flutter_vector_free'));

/// Read-only lazy view over a native vector handle.
class LazyList<T> extends ListBase<T> implements Finalizable {
  @internal
  LazyList(this._ptr, this._fromNative) {
    _finalizer.attach(this, _ptr, detach: this);
  }

  @override
  int get length => _listGetSize(_ptr);

  @override
  set length(int _) => throw UnsupportedError('LazyList is read-only');

  @override
  T operator [](int index) => _fromNative(_listGetValue(_ptr, index));

  @override
  void operator []=(int index, T value) {
    throw UnsupportedError('LazyList is read-only');
  }

  @internal
  Pointer<Void> get nativeHandle => _ptr;

  static final _finalizer = NativeFinalizer(_listFreeNative);
  final Pointer<Void> _ptr;
  final T Function(Pointer<Void>) _fromNative;
}

@internal
Pointer<Void> toNativeList<T>(
  List<T> value,
  Pointer<Void> Function(T element) toNative, {
  void Function(Pointer<Void>)? releaseAfterToNative,
}) {
  if (value is LazyList) {
    return (value as LazyList).nativeHandle;
  }

  final length = value.length;
  final data = malloc<Pointer<Void>>(length);
  var index = 0;
  for (final element in value) {
    final nativeElement = toNative(element);
    data[index] = nativeElement;
    releaseAfterToNative?.call(nativeElement);
    index++;
  }
  final result = _listNew(data, length);
  return result;
}

@internal
List<T> fromPlatformList<T>(
  Pointer<Void> handle,
  T Function(Pointer<Void>) fromNative,
) =>
    LazyList<T>(handle, fromNative);

@internal
Pointer<Void> toNativeListNullable<T>(
  List<T>? value,
  Pointer<Void> Function(T element) toNative, {
  void Function(Pointer<Void>)? releaseAfterToNative,
}) {
  if (value == null) {
    return nullptr;
  }
  return toNativeList(value, toNative, releaseAfterToNative: releaseAfterToNative);
}

@internal
List<T>? fromPlatformListNullable<T>(
  Pointer<Void> handle,
  T Function(Pointer<Void>) fromNative,
) {
  if (handle == nullptr) {
    return null;
  }
  return fromPlatformList(handle, fromNative);
}
