part of 'key_value_storage.dart';

// KeyValueStorage "private" section, not exported.

final _navigine_sdk_flutter_KeyValueStorage_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_KeyValueStorage_copy_handle'));

final _navigine_sdk_flutter_KeyValueStorage_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_KeyValueStorage_release_handle'));

final _navigine_sdk_flutter_KeyValueStorage_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_KeyValueStorage_free');


class KeyValueStorage$Impl extends __lib.NativeBase implements KeyValueStorage, Finalizable {
    KeyValueStorage$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_KeyValueStorage_free.cast());

    @override
    bool contains(String key) {
        final _containsFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_KeyValueStorage_contains__Key'));
        final _keyHandle = navigine_sdk_flutter_String_ToFfi(key);
        final _handle = this.handle;
        final __resultHandle = _containsFfi(_handle, _keyHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_keyHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    List<String> getKeys() {
        final _getKeysFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_KeyValueStorage_getKeys'));
        final _handle = this.handle;
        final __resultHandle = _getKeysFfi(_handle, );
        final _result = navigine_sdk_flutter_List_String_FromFfi(__resultHandle);
        navigine_sdk_flutter_List_String_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    int getInt(String key, int defaultValue) {
        final _getIntFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>, Pointer<Void>, Int32),
            int Function(Pointer<Void>, Pointer<Void>, int)
          >('navigine_sdk_flutter_KeyValueStorage_getInt__Key_DefaultValue'));
        final _keyHandle = navigine_sdk_flutter_String_ToFfi(key);
        final _defaultValueHandle = navigine_sdk_flutter_int_ToFfi(defaultValue);
        final _handle = this.handle;
        final __resultHandle = _getIntFfi(_handle, _keyHandle, _defaultValueHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_keyHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_defaultValueHandle);
        final _result = navigine_sdk_flutter_int_FromFfi(__resultHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    int getLong(String key, int defaultValue) {
        final _getLongFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int64 Function(Pointer<Void>, Pointer<Void>, Int64),
            int Function(Pointer<Void>, Pointer<Void>, int)
          >('navigine_sdk_flutter_KeyValueStorage_getLong__Key_DefaultValue'));
        final _keyHandle = navigine_sdk_flutter_String_ToFfi(key);
        final _defaultValueHandle = navigine_sdk_flutter_int_ToFfi(defaultValue);
        final _handle = this.handle;
        final __resultHandle = _getLongFfi(_handle, _keyHandle, _defaultValueHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_keyHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_defaultValueHandle);
        final _result = navigine_sdk_flutter_int_FromFfi(__resultHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool getBool(String key, bool defaultValue) {
        final _getBoolFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>, Uint8),
            int Function(Pointer<Void>, Pointer<Void>, int)
          >('navigine_sdk_flutter_KeyValueStorage_getBool__Key_DefaultValue'));
        final _keyHandle = navigine_sdk_flutter_String_ToFfi(key);
        final _defaultValueHandle = navigine_sdk_flutter_bool_ToFfi(defaultValue);
        final _handle = this.handle;
        final __resultHandle = _getBoolFfi(_handle, _keyHandle, _defaultValueHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_keyHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(_defaultValueHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    double getFloat(String key, double defaultValue) {
        final _getFloatFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>, Pointer<Void>, Float),
            double Function(Pointer<Void>, Pointer<Void>, double)
          >('navigine_sdk_flutter_KeyValueStorage_getFloat__Key_DefaultValue'));
        final _keyHandle = navigine_sdk_flutter_String_ToFfi(key);
        final _defaultValueHandle = navigine_sdk_flutter_double_ToFfi(defaultValue);
        final _handle = this.handle;
        final __resultHandle = _getFloatFfi(_handle, _keyHandle, _defaultValueHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_keyHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_defaultValueHandle);
        final _result = navigine_sdk_flutter_double_FromFfi(__resultHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    double getDouble(String key, double defaultValue) {
        final _getDoubleFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Double Function(Pointer<Void>, Pointer<Void>, Double),
            double Function(Pointer<Void>, Pointer<Void>, double)
          >('navigine_sdk_flutter_KeyValueStorage_getDouble__Key_DefaultValue'));
        final _keyHandle = navigine_sdk_flutter_String_ToFfi(key);
        final _defaultValueHandle = navigine_sdk_flutter_double_ToFfi(defaultValue);
        final _handle = this.handle;
        final __resultHandle = _getDoubleFfi(_handle, _keyHandle, _defaultValueHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_keyHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_defaultValueHandle);
        final _result = navigine_sdk_flutter_double_FromFfi(__resultHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    String getString(String key, String defaultValue) {
        final _getStringFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_KeyValueStorage_getString__Key_DefaultValue'));
        final _keyHandle = navigine_sdk_flutter_String_ToFfi(key);
        final _defaultValueHandle = navigine_sdk_flutter_String_ToFfi(defaultValue);
        final _handle = this.handle;
        final __resultHandle = _getStringFfi(_handle, _keyHandle, _defaultValueHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_keyHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_defaultValueHandle);
        final _result = navigine_sdk_flutter_String_FromFfi(__resultHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    void putInt(String key, int value) {
        final _putIntFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>, Int32),
            void Function(Pointer<Void>, Pointer<Void>, int)
          >('navigine_sdk_flutter_KeyValueStorage_putInt__Key_Value'));
        final _keyHandle = navigine_sdk_flutter_String_ToFfi(key);
        final _valueHandle = navigine_sdk_flutter_int_ToFfi(value);
        final _handle = this.handle;
        _putIntFfi(_handle, _keyHandle, _valueHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_keyHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_valueHandle);
    }

    @override
    void putLong(String key, int value) {
        final _putLongFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>, Int64),
            void Function(Pointer<Void>, Pointer<Void>, int)
          >('navigine_sdk_flutter_KeyValueStorage_putLong__Key_Value'));
        final _keyHandle = navigine_sdk_flutter_String_ToFfi(key);
        final _valueHandle = navigine_sdk_flutter_int_ToFfi(value);
        final _handle = this.handle;
        _putLongFfi(_handle, _keyHandle, _valueHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_keyHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_valueHandle);
    }

    @override
    void putBool(String key, bool value) {
        final _putBoolFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>, Uint8),
            void Function(Pointer<Void>, Pointer<Void>, int)
          >('navigine_sdk_flutter_KeyValueStorage_putBool__Key_Value'));
        final _keyHandle = navigine_sdk_flutter_String_ToFfi(key);
        final _valueHandle = navigine_sdk_flutter_bool_ToFfi(value);
        final _handle = this.handle;
        _putBoolFfi(_handle, _keyHandle, _valueHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_keyHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(_valueHandle);
    }

    @override
    void putFloat(String key, double value) {
        final _putFloatFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>, Float),
            void Function(Pointer<Void>, Pointer<Void>, double)
          >('navigine_sdk_flutter_KeyValueStorage_putFloat__Key_Value'));
        final _keyHandle = navigine_sdk_flutter_String_ToFfi(key);
        final _valueHandle = navigine_sdk_flutter_double_ToFfi(value);
        final _handle = this.handle;
        _putFloatFfi(_handle, _keyHandle, _valueHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_keyHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_valueHandle);
    }

    @override
    void putDouble(String key, double value) {
        final _putDoubleFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>, Double),
            void Function(Pointer<Void>, Pointer<Void>, double)
          >('navigine_sdk_flutter_KeyValueStorage_putDouble__Key_Value'));
        final _keyHandle = navigine_sdk_flutter_String_ToFfi(key);
        final _valueHandle = navigine_sdk_flutter_double_ToFfi(value);
        final _handle = this.handle;
        _putDoubleFfi(_handle, _keyHandle, _valueHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_keyHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_valueHandle);
    }

    @override
    void putString(String key, String value) {
        final _putStringFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_KeyValueStorage_putString__Key_Value'));
        final _keyHandle = navigine_sdk_flutter_String_ToFfi(key);
        final _valueHandle = navigine_sdk_flutter_String_ToFfi(value);
        final _handle = this.handle;
        _putStringFfi(_handle, _keyHandle, _valueHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_keyHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_valueHandle);
    }

    @override
    void remove(String key) {
        final _removeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_KeyValueStorage_remove__Key'));
        final _keyHandle = navigine_sdk_flutter_String_ToFfi(key);
        final _handle = this.handle;
        _removeFfi(_handle, _keyHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_keyHandle);
    }

    @override
    void clear() {
        final _clearFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_KeyValueStorage_clear'));
        final _handle = this.handle;
        _clearFfi(_handle, );
    }




}

Pointer<Void> navigine_sdk_flutter_KeyValueStorage_ToFfi(KeyValueStorage value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_KeyValueStorage_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

KeyValueStorage navigine_sdk_flutter_KeyValueStorage_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_KeyValueStorage_CopyHandle(handle);
    final result = KeyValueStorage$Impl(_copiedHandle);
    KeyValueStorage$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_KeyValueStorage_ToFfiNullable(KeyValueStorage? value) => 
  value != null ? navigine_sdk_flutter_KeyValueStorage_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_KeyValueStorage_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_KeyValueStorage_ReleaseHandle(handle);

void navigine_sdk_flutter_KeyValueStorage_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_KeyValueStorage_ReleaseHandle(handle);

KeyValueStorage? navigine_sdk_flutter_KeyValueStorage_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_KeyValueStorage_FromFfi(handle) : null;

// End of KeyValueStorage "private" section.

final _navigine_sdk_flutter_List_String_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_String_create_handle'));

final _navigine_sdk_flutter_List_String_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_String_release_handle'));

final _navigine_sdk_flutter_List_String_Insert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_String_insert'));

final _navigine_sdk_flutter_List_String_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_String_iterator'));

final _navigine_sdk_flutter_List_String_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_String_iterator_release_handle'));

final _navigine_sdk_flutter_List_String_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_String_iterator_is_valid'));

final _navigine_sdk_flutter_List_String_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_String_iterator_increment'));

final _navigine_sdk_flutter_List_String_IteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_String_iterator_get'));

Pointer<Void> navigine_sdk_flutter_List_String_ToFfi(List<String> value)  {
    final _result = _navigine_sdk_flutter_List_String_CreateHandle();
    for (final element in value)  {
        final _elementHandle = navigine_sdk_flutter_String_ToFfi(element);
        _navigine_sdk_flutter_List_String_Insert(_result, _elementHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_elementHandle);
    }
    return _result;
}

List<String> navigine_sdk_flutter_List_String_FromFfi(Pointer<Void> handle)  {
    final result = List<String>.empty(growable: true);
    final _iteratorHandle = _navigine_sdk_flutter_List_String_Iterator(handle);
    while (_navigine_sdk_flutter_List_String_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _elementHandle = _navigine_sdk_flutter_List_String_IteratorGet(_iteratorHandle);
        result.add(navigine_sdk_flutter_String_FromFfi(_elementHandle));
        navigine_sdk_flutter_String_ReleaseFfiHandle(_elementHandle);
        _navigine_sdk_flutter_List_String_IteratorIncrement(_iteratorHandle);
    }
    return result;
}

void navigine_sdk_flutter_List_String_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_List_String_ReleaseHandle(handle);

final _navigine_sdk_flutter_List_String_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_String_create_handle_nullable'));

final _navigine_sdk_flutter_List_String_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_String_release_handle_nullable'));

final _navigine_sdk_flutter_List_String_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_String_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_List_String_ToFfiNullable(List<String>? value)  {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_List_String_ToFfi(value);
    final result = _navigine_sdk_flutter_List_String_CreateHandleNullable(_handle);
    navigine_sdk_flutter_List_String_ReleaseFfiHandle(_handle);
    return result;
}

List<String>? navigine_sdk_flutter_List_String_FromFfiNullable(Pointer<Void> handle)  {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_List_String_GetValueNullable(handle);
    final result = navigine_sdk_flutter_List_String_FromFfi(_handle);
    navigine_sdk_flutter_List_String_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_List_String_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_String_ReleaseHandleNullable(handle);
