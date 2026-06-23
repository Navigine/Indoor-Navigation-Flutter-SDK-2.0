import 'dart:collection';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

final class _IntMapEntry extends Struct {
  @Int64()
  external int key;

  external Pointer<Void> value;
}

final class _StringMapEntry extends Struct {
  external NativeString key;

  external Pointer<Void> value;
}

final Pointer<Void> Function(Pointer<Void>, int) _intMapGetValue =
    __lib.catchArgumentError(() => __lib.nativeLibrary
        .lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Int64),
            Pointer<Void> Function(Pointer<Void>, int)>(
            'navigine_sdk_flutter_int_map_get_value'));

final int Function(Pointer<Void>) _intMapGetSize =
    __lib.catchArgumentError(() => __lib.nativeLibrary
        .lookupFunction<IntPtr Function(Pointer<Void>), int Function(Pointer<Void>)>(
            'navigine_sdk_flutter_int_map_get_size'));

final Pointer<Void> Function(Pointer<_IntMapEntry>, int) _intMapNew =
    __lib.catchArgumentError(() => __lib.nativeLibrary
        .lookupFunction<
            Pointer<Void> Function(Pointer<_IntMapEntry>, IntPtr),
            Pointer<Void> Function(Pointer<_IntMapEntry>, int)>(
            'navigine_sdk_flutter_int_map_new'));

final _intMapFreeNative = __lib.catchArgumentError(() => __lib.nativeLibrary
    .lookup<NativeFunction<Void Function(Pointer<Void>)>>(
        'navigine_sdk_flutter_int_map_free'));

final Pointer<Void> Function(Pointer<Void>) _intMapIteratorBegin =
    __lib.catchArgumentError(() => __lib.nativeLibrary
        .lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)>(
            'navigine_sdk_flutter_int_map_iterator_begin'));

final bool Function(Pointer<Void>) _intMapIteratorIsEnd =
    __lib.catchArgumentError(() => __lib.nativeLibrary
        .lookupFunction<Bool Function(Pointer<Void>), bool Function(Pointer<Void>)>(
            'navigine_sdk_flutter_int_map_iterator_is_end'));

final _intMapIteratorFreeNative = __lib.catchArgumentError(() => __lib.nativeLibrary
    .lookup<NativeFunction<Void Function(Pointer<Void>)>>(
        'navigine_sdk_flutter_int_map_iterator_free'));

final int Function(Pointer<Void>) _intMapIteratorGetKey =
    __lib.catchArgumentError(() => __lib.nativeLibrary
        .lookupFunction<Int64 Function(Pointer<Void>), int Function(Pointer<Void>)>(
            'navigine_sdk_flutter_int_map_iterator_get_key'));

final void Function(Pointer<Void>) _intMapIteratorNext =
    __lib.catchArgumentError(() => __lib.nativeLibrary
        .lookupFunction<Void Function(Pointer<Void>), void Function(Pointer<Void>)>(
            'navigine_sdk_flutter_int_map_iterator_next'));

final Pointer<Void> Function(Pointer<Void>, NativeString) _stringMapGetValue =
    __lib.catchArgumentError(() => __lib.nativeLibrary
        .lookupFunction<
            Pointer<Void> Function(Pointer<Void>, NativeString),
            Pointer<Void> Function(Pointer<Void>, NativeString)>(
            'navigine_sdk_flutter_string_map_get_value'));

final int Function(Pointer<Void>) _stringMapGetSize =
    __lib.catchArgumentError(() => __lib.nativeLibrary
        .lookupFunction<IntPtr Function(Pointer<Void>), int Function(Pointer<Void>)>(
            'navigine_sdk_flutter_string_map_get_size'));

final Pointer<Void> Function(Pointer<_StringMapEntry>, int) _stringMapNew =
    __lib.catchArgumentError(() => __lib.nativeLibrary
        .lookupFunction<
            Pointer<Void> Function(Pointer<_StringMapEntry>, IntPtr),
            Pointer<Void> Function(Pointer<_StringMapEntry>, int)>(
            'navigine_sdk_flutter_string_map_new'));

final _stringMapFreeNative = __lib.catchArgumentError(() => __lib.nativeLibrary
    .lookup<NativeFunction<Void Function(Pointer<Void>)>>(
        'navigine_sdk_flutter_string_map_free'));

final Pointer<Void> Function(Pointer<Void>) _stringMapIteratorBegin =
    __lib.catchArgumentError(() => __lib.nativeLibrary
        .lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)>(
            'navigine_sdk_flutter_string_map_iterator_begin'));

final bool Function(Pointer<Void>) _stringMapIteratorIsEnd =
    __lib.catchArgumentError(() => __lib.nativeLibrary
        .lookupFunction<Bool Function(Pointer<Void>), bool Function(Pointer<Void>)>(
            'navigine_sdk_flutter_string_map_iterator_is_end'));

final _stringMapIteratorFreeNative = __lib.catchArgumentError(() => __lib.nativeLibrary
    .lookup<NativeFunction<Void Function(Pointer<Void>)>>(
        'navigine_sdk_flutter_string_map_iterator_free'));

final NativeString Function(Pointer<Void>) _stringMapIteratorGetKey =
    __lib.catchArgumentError(() => __lib.nativeLibrary
        .lookupFunction<NativeString Function(Pointer<Void>), NativeString Function(Pointer<Void>)>(
            'navigine_sdk_flutter_string_map_iterator_get_key'));

final void Function(Pointer<Void>) _stringMapIteratorNext =
    __lib.catchArgumentError(() => __lib.nativeLibrary
        .lookupFunction<Void Function(Pointer<Void>), void Function(Pointer<Void>)>(
            'navigine_sdk_flutter_string_map_iterator_next'));

class _LazyIntMapKeyIterator implements Iterator<int>, Finalizable {
  _LazyIntMapKeyIterator(this._map) : _iterator = nullptr;

  @override
  int get current => _intMapIteratorGetKey(_iterator);

  @override
  bool moveNext() {
    if (_iterator == nullptr) {
      _iterator = _intMapIteratorBegin(_map);
      _finalizer.attach(this, _iterator, detach: this);
      return !_intMapIteratorIsEnd(_iterator);
    }
    _intMapIteratorNext(_iterator);
    return !_intMapIteratorIsEnd(_iterator);
  }

  static final _finalizer = NativeFinalizer(_intMapIteratorFreeNative);
  final Pointer<Void> _map;
  Pointer<Void> _iterator;
}

class _LazyStringMapKeyIterator implements Iterator<String>, Finalizable {
  _LazyStringMapKeyIterator(this._map) : _iterator = nullptr;

  @override
  String get current => toPlatformString(_stringMapIteratorGetKey(_iterator));

  @override
  bool moveNext() {
    if (_iterator == nullptr) {
      _iterator = _stringMapIteratorBegin(_map);
      _finalizer.attach(this, _iterator, detach: this);
      return !_stringMapIteratorIsEnd(_iterator);
    }
    _stringMapIteratorNext(_iterator);
    return !_stringMapIteratorIsEnd(_iterator);
  }

  static final _finalizer = NativeFinalizer(_stringMapIteratorFreeNative);
  final Pointer<Void> _map;
  Pointer<Void> _iterator;
}

/// Read-only lazy view over a native map handle with integer keys.
class LazyIntMap<V> extends UnmodifiableMapBase<int, V>
    implements LazyMap<int, V>, Finalizable {
  @internal
  LazyIntMap(this._ptr, this._fromValue) {
    _finalizer.attach(this, _ptr, detach: this);
  }

  @override
  V? operator [](Object? key) {
    if (key is int) {
      final value = _intMapGetValue(_ptr, key);
      if (value == nullptr) {
        return null;
      }
      return _fromValue(value);
    }
    return null;
  }

  @override
  Iterable<int> get keys => _LazyIntMapKeys(_ptr);

  @override
  int get length => _intMapGetSize(_ptr);

  @internal
  Pointer<Void> get nativeHandle => _ptr;

  static final _finalizer = NativeFinalizer(_intMapFreeNative);
  final Pointer<Void> _ptr;
  final V Function(Pointer<Void>) _fromValue;
}

class _LazyIntMapKeys extends Iterable<int> {
  _LazyIntMapKeys(this._ptr);

  @override
  Iterator<int> get iterator => _LazyIntMapKeyIterator(_ptr);

  final Pointer<Void> _ptr;
}

/// Read-only lazy view over a native map handle with string keys.
class LazyStringMap<V> extends UnmodifiableMapBase<String, V>
    implements LazyMap<String, V>, Finalizable {
  @internal
  LazyStringMap(this._ptr, this._fromValue) {
    _finalizer.attach(this, _ptr, detach: this);
  }

  @override
  V? operator [](Object? key) {
    if (key is String) {
      final nativeKey = toNativeString(key);
      try {
        final value = _stringMapGetValue(_ptr, nativeKey);
        if (value == nullptr) {
          return null;
        }
        return _fromValue(value);
      } finally {
        malloc.free(nativeKey.ptr);
      }
    }
    return null;
  }

  @override
  Iterable<String> get keys => _LazyStringMapKeys(_ptr);

  @override
  int get length => _stringMapGetSize(_ptr);

  @internal
  Pointer<Void> get nativeHandle => _ptr;

  static final _finalizer = NativeFinalizer(_stringMapFreeNative);
  final Pointer<Void> _ptr;
  final V Function(Pointer<Void>) _fromValue;
}

class _LazyStringMapKeys extends Iterable<String> {
  _LazyStringMapKeys(this._ptr);

  @override
  Iterator<String> get iterator => _LazyStringMapKeyIterator(_ptr);

  final Pointer<Void> _ptr;
}

/// Read-only lazy map view over a native handle.
abstract class LazyMap<K, V> implements Map<K, V> {}

class _LazyEnumKeyMap<K, V> extends UnmodifiableMapBase<K, V>
    implements LazyMap<K, V>, Finalizable {
  @internal
  _LazyEnumKeyMap(
    this._ptr,
    this._fromValue,
    this._keyFromInt,
    this._keyToInt,
  ) {
    _finalizer.attach(this, _ptr, detach: this);
  }

  @override
  V? operator [](Object? key) {
    if (key is K) {
      final value = _intMapGetValue(_ptr, _keyToInt(key));
      if (value == nullptr) {
        return null;
      }
      return _fromValue(value);
    }
    return null;
  }

  @override
  Iterable<K> get keys => _LazyEnumMapKeys(_ptr, _keyFromInt);

  @override
  int get length => _intMapGetSize(_ptr);

  @internal
  Pointer<Void> get nativeHandle => _ptr;

  static final _finalizer = NativeFinalizer(_intMapFreeNative);
  final Pointer<Void> _ptr;
  final V Function(Pointer<Void>) _fromValue;
  final K Function(int) _keyFromInt;
  final int Function(K) _keyToInt;
}

class _LazyEnumMapKeys<K> extends Iterable<K> {
  _LazyEnumMapKeys(this._ptr, this._keyFromInt);

  @override
  Iterator<K> get iterator => _LazyEnumMapKeyIterator(_ptr, _keyFromInt);

  final Pointer<Void> _ptr;
  final K Function(int) _keyFromInt;
}

class _LazyEnumMapKeyIterator<K> implements Iterator<K>, Finalizable {
  _LazyEnumMapKeyIterator(this._ptr, this._keyFromInt) : _iterator = nullptr;

  @override
  K get current => _keyFromInt(_intMapIteratorGetKey(_iterator));

  @override
  bool moveNext() {
    if (_iterator == nullptr) {
      _iterator = _intMapIteratorBegin(_ptr);
      _finalizer.attach(this, _iterator, detach: this);
      return !_intMapIteratorIsEnd(_iterator);
    }
    _intMapIteratorNext(_iterator);
    return !_intMapIteratorIsEnd(_iterator);
  }

  static final _finalizer = NativeFinalizer(_intMapIteratorFreeNative);
  final Pointer<Void> _ptr;
  final K Function(int) _keyFromInt;
  Pointer<Void> _iterator;
}

@internal
Pointer<Void> toNativeIntMap<K, V>(
  Map<K, V> value,
  int Function(K key) keyToNative,
  Pointer<Void> Function(V value) valueToNative, {
  void Function(Pointer<Void>)? releaseAfterToNative,
}) {
  if (value is LazyIntMap) {
    return (value as LazyIntMap).nativeHandle;
  }
  if (value is _LazyEnumKeyMap) {
    return (value as _LazyEnumKeyMap).nativeHandle;
  }

  final length = value.length;
  final data = malloc<_IntMapEntry>(length);
  var index = 0;
  for (final entry in value.entries) {
    final nativeValue = valueToNative(entry.value);
    data[index].key = keyToNative(entry.key);
    data[index].value = nativeValue;
    releaseAfterToNative?.call(nativeValue);
    index++;
  }
  final result = _intMapNew(data, length);
  return result;
}

@internal
Pointer<Void> toNativeStringMap<V>(
  Map<String, V> value,
  Pointer<Void> Function(V value) valueToNative, {
  void Function(Pointer<Void>)? releaseAfterToNative,
}) {
  if (value is LazyStringMap) {
    return (value as LazyStringMap).nativeHandle;
  }

  final length = value.length;
  final data = malloc<_StringMapEntry>(length);
  var index = 0;
  for (final entry in value.entries) {
    final nativeValue = valueToNative(entry.value);
    data[index].key = toNativeString(entry.key);
    data[index].value = nativeValue;
    releaseAfterToNative?.call(nativeValue);
    index++;
  }
  final result = _stringMapNew(data, length);
  return result;
}

@internal
Map<K, V> fromPlatformIntMap<K, V>(
  Pointer<Void> handle,
  V Function(Pointer<Void>) fromValue, {
  K Function(int key)? keyFromInt,
  int Function(K key)? keyToInt,
}) {
  if (keyFromInt != null && keyToInt != null) {
    return _LazyEnumKeyMap<K, V>(
      handle,
      fromValue,
      keyFromInt,
      keyToInt,
    );
  }
  return LazyIntMap<V>(handle, fromValue) as Map<K, V>;
}

@internal
Map<String, V> fromPlatformStringMap<V>(
  Pointer<Void> handle,
  V Function(Pointer<Void>) fromValue,
) =>
    LazyStringMap<V>(handle, fromValue);

@internal
Pointer<Void> toNativeIntMapNullable<K, V>(
  Map<K, V>? value,
  int Function(K key) keyToNative,
  Pointer<Void> Function(V value) valueToNative, {
  void Function(Pointer<Void>)? releaseAfterToNative,
}) {
  if (value == null) {
    return nullptr;
  }
  return toNativeIntMap(
    value,
    keyToNative,
    valueToNative,
    releaseAfterToNative: releaseAfterToNative,
  );
}

@internal
Pointer<Void> toNativeStringMapNullable<V>(
  Map<String, V>? value,
  Pointer<Void> Function(V value) valueToNative, {
  void Function(Pointer<Void>)? releaseAfterToNative,
}) {
  if (value == null) {
    return nullptr;
  }
  return toNativeStringMap(value, valueToNative, releaseAfterToNative: releaseAfterToNative);
}

@internal
Map<K, V>? fromPlatformIntMapNullable<K, V>(
  Pointer<Void> handle,
  V Function(Pointer<Void>) fromValue, {
  K Function(int key)? keyFromInt,
  int Function(K key)? keyToInt,
}) {
  if (handle == nullptr) {
    return null;
  }
  return fromPlatformIntMap(
    handle,
    fromValue,
    keyFromInt: keyFromInt,
    keyToInt: keyToInt,
  );
}

@internal
Map<String, V>? fromPlatformStringMapNullable<V>(
  Pointer<Void> handle,
  V Function(Pointer<Void>) fromValue,
) {
  if (handle == nullptr) {
    return null;
  }
  return fromPlatformStringMap(handle, fromValue);
}
