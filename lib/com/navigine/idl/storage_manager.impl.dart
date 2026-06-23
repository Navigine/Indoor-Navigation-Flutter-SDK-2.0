part of 'storage_manager.dart';

// StorageManager "private" section, not exported.

final _navigine_sdk_flutter_StorageManager_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_StorageManager_free');


class StorageManager$Impl implements StorageManager, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_StorageManager_free.cast());

    StorageManager$Impl.fromExternalPtr(this.ptr);

    @internal
    StorageManager$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory StorageManager$Impl.fromNativePtr(Pointer<Void> ptr) =>
        StorageManager$Impl.fromNativePtrImpl(ptr);


    static Pointer<Void> getNativePtr(StorageManager? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as StorageManager$Impl).ptr;
    }

    static StorageManager? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return StorageManager$Impl.fromNativePtr(ptr);
    }

    @override
    List<String> getStorageList() {
        final _getStorageListFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_StorageManager_getStorageList'));
        final __resultHandle = _getStorageListFfi(this.ptr, );
        final _result = ListStringImpl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    KeyValueStorage getStorage(String name) {
        final _getStorageFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, NativeString),
            Pointer<Void> Function(Pointer<Void>, NativeString)
          >('navigine_sdk_flutter_StorageManager_getStorage__Name'));
        final __resultHandle = _getStorageFfi(this.ptr, toNativeString(name));
        final _result = KeyValueStorage$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    void removeStorage(String name) {
        final _removeStorageFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, NativeString),
            void Function(Pointer<Void>, NativeString)
          >('navigine_sdk_flutter_StorageManager_removeStorage__Name'));
        _removeStorageFfi(this.ptr, toNativeString(name));
        exception.checkCallResult();
    }




}

// End of StorageManager "private" section.
