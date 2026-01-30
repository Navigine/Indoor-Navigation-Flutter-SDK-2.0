part of 'storage_manager.dart';

// StorageManager "private" section, not exported.

final _navigine_sdk_flutter_StorageManager_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_StorageManager_copy_handle'));

final _navigine_sdk_flutter_StorageManager_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_StorageManager_release_handle'));

final _navigine_sdk_flutter_StorageManager_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_StorageManager_free');


class StorageManager$Impl extends __lib.NativeBase implements StorageManager, Finalizable {
    StorageManager$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_StorageManager_free.cast());

    @override
    List<String> getStorageList() {
        final _getStorageListFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_StorageManager_getStorageList'));
        final _handle = this.handle;
        final __resultHandle = _getStorageListFfi(_handle, );
        final _result = navigine_sdk_flutter_List_String_FromFfi(__resultHandle);
        navigine_sdk_flutter_List_String_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    KeyValueStorage getStorage(String name) {
        final _getStorageFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_StorageManager_getStorage__Name'));
        final _nameHandle = navigine_sdk_flutter_String_ToFfi(name);
        final _handle = this.handle;
        final __resultHandle = _getStorageFfi(_handle, _nameHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
        final _result = navigine_sdk_flutter_KeyValueStorage_FromFfi(__resultHandle);
        navigine_sdk_flutter_KeyValueStorage_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    void removeStorage(String name) {
        final _removeStorageFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_StorageManager_removeStorage__Name'));
        final _nameHandle = navigine_sdk_flutter_String_ToFfi(name);
        final _handle = this.handle;
        _removeStorageFfi(_handle, _nameHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
    }




}

Pointer<Void> navigine_sdk_flutter_StorageManager_ToFfi(StorageManager value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_StorageManager_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

StorageManager navigine_sdk_flutter_StorageManager_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_StorageManager_CopyHandle(handle);
    final result = StorageManager$Impl(_copiedHandle);
    StorageManager$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_StorageManager_ToFfiNullable(StorageManager? value) => 
  value != null ? navigine_sdk_flutter_StorageManager_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_StorageManager_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_StorageManager_ReleaseHandle(handle);

void navigine_sdk_flutter_StorageManager_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_StorageManager_ReleaseHandle(handle);

StorageManager? navigine_sdk_flutter_StorageManager_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_StorageManager_FromFfi(handle) : null;

// End of StorageManager "private" section.

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
