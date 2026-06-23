part of 'key_value_storage.dart';

// KeyValueStorage "private" section, not exported.

final _navigine_sdk_flutter_KeyValueStorage_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_KeyValueStorage_free');


class KeyValueStorage$Impl implements KeyValueStorage, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_KeyValueStorage_free.cast());

    KeyValueStorage$Impl.fromExternalPtr(this.ptr);

    @internal
    KeyValueStorage$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory KeyValueStorage$Impl.fromNativePtr(Pointer<Void> ptr) =>
        KeyValueStorage$Impl.fromNativePtrImpl(ptr);


    static Pointer<Void> getNativePtr(KeyValueStorage? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as KeyValueStorage$Impl).ptr;
    }

    static KeyValueStorage? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return KeyValueStorage$Impl.fromNativePtr(ptr);
    }

    @override
    bool contains(String key) {
        final _containsFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, NativeString),
            int Function(Pointer<Void>, NativeString)
          >('navigine_sdk_flutter_KeyValueStorage_contains__Key'));
        final __resultHandle = _containsFfi(this.ptr, toNativeString(key));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    List<String> getKeys() {
        final _getKeysFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_KeyValueStorage_getKeys'));
        final __resultHandle = _getKeysFfi(this.ptr, );
        final _result = ListStringImpl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    int getInt(String key, int defaultValue) {
        final _getIntFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>, NativeString, Int32),
            int Function(Pointer<Void>, NativeString, int)
          >('navigine_sdk_flutter_KeyValueStorage_getInt__Key_DefaultValue'));
        final __resultHandle = _getIntFfi(this.ptr, toNativeString(key), defaultValue);
        final _result = __resultHandle;
        exception.checkCallResult();
        return _result;
    }

    @override
    int getLong(String key, int defaultValue) {
        final _getLongFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int64 Function(Pointer<Void>, NativeString, Int64),
            int Function(Pointer<Void>, NativeString, int)
          >('navigine_sdk_flutter_KeyValueStorage_getLong__Key_DefaultValue'));
        final __resultHandle = _getLongFfi(this.ptr, toNativeString(key), defaultValue);
        final _result = __resultHandle;
        exception.checkCallResult();
        return _result;
    }

    @override
    bool getBool(String key, bool defaultValue) {
        final _getBoolFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, NativeString, Uint8),
            int Function(Pointer<Void>, NativeString, int)
          >('navigine_sdk_flutter_KeyValueStorage_getBool__Key_DefaultValue'));
        final __resultHandle = _getBoolFfi(this.ptr, toNativeString(key), (defaultValue ? 1 : 0));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    double getFloat(String key, double defaultValue) {
        final _getFloatFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>, NativeString, Float),
            double Function(Pointer<Void>, NativeString, double)
          >('navigine_sdk_flutter_KeyValueStorage_getFloat__Key_DefaultValue'));
        final __resultHandle = _getFloatFfi(this.ptr, toNativeString(key), defaultValue);
        final _result = __resultHandle;
        exception.checkCallResult();
        return _result;
    }

    @override
    double getDouble(String key, double defaultValue) {
        final _getDoubleFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Double Function(Pointer<Void>, NativeString, Double),
            double Function(Pointer<Void>, NativeString, double)
          >('navigine_sdk_flutter_KeyValueStorage_getDouble__Key_DefaultValue'));
        final __resultHandle = _getDoubleFfi(this.ptr, toNativeString(key), defaultValue);
        final _result = __resultHandle;
        exception.checkCallResult();
        return _result;
    }

    @override
    String getString(String key, String defaultValue) {
        final _getStringFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>, NativeString, NativeString),
            NativeString Function(Pointer<Void>, NativeString, NativeString)
          >('navigine_sdk_flutter_KeyValueStorage_getString__Key_DefaultValue'));
        final __resultHandle = _getStringFfi(this.ptr, toNativeString(key), toNativeString(defaultValue));
        final _result = toPlatformString(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    void putInt(String key, int value) {
        final _putIntFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, NativeString, Int32),
            void Function(Pointer<Void>, NativeString, int)
          >('navigine_sdk_flutter_KeyValueStorage_putInt__Key_Value'));
        _putIntFfi(this.ptr, toNativeString(key), value);
        exception.checkCallResult();
    }

    @override
    void putLong(String key, int value) {
        final _putLongFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, NativeString, Int64),
            void Function(Pointer<Void>, NativeString, int)
          >('navigine_sdk_flutter_KeyValueStorage_putLong__Key_Value'));
        _putLongFfi(this.ptr, toNativeString(key), value);
        exception.checkCallResult();
    }

    @override
    void putBool(String key, bool value) {
        final _putBoolFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, NativeString, Uint8),
            void Function(Pointer<Void>, NativeString, int)
          >('navigine_sdk_flutter_KeyValueStorage_putBool__Key_Value'));
        _putBoolFfi(this.ptr, toNativeString(key), (value ? 1 : 0));
        exception.checkCallResult();
    }

    @override
    void putFloat(String key, double value) {
        final _putFloatFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, NativeString, Float),
            void Function(Pointer<Void>, NativeString, double)
          >('navigine_sdk_flutter_KeyValueStorage_putFloat__Key_Value'));
        _putFloatFfi(this.ptr, toNativeString(key), value);
        exception.checkCallResult();
    }

    @override
    void putDouble(String key, double value) {
        final _putDoubleFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, NativeString, Double),
            void Function(Pointer<Void>, NativeString, double)
          >('navigine_sdk_flutter_KeyValueStorage_putDouble__Key_Value'));
        _putDoubleFfi(this.ptr, toNativeString(key), value);
        exception.checkCallResult();
    }

    @override
    void putString(String key, String value) {
        final _putStringFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, NativeString, NativeString),
            void Function(Pointer<Void>, NativeString, NativeString)
          >('navigine_sdk_flutter_KeyValueStorage_putString__Key_Value'));
        _putStringFfi(this.ptr, toNativeString(key), toNativeString(value));
        exception.checkCallResult();
    }

    @override
    void remove(String key) {
        final _removeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, NativeString),
            void Function(Pointer<Void>, NativeString)
          >('navigine_sdk_flutter_KeyValueStorage_remove__Key'));
        _removeFfi(this.ptr, toNativeString(key));
        exception.checkCallResult();
    }

    @override
    void clear() {
        final _clearFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_KeyValueStorage_clear'));
        _clearFfi(this.ptr, );
        exception.checkCallResult();
    }




}

// End of KeyValueStorage "private" section.
