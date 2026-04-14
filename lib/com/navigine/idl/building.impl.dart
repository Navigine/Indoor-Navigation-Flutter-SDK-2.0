part of 'building.dart';

// Building "private" section, not exported.

final _navigine_sdk_flutter_Building_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Building_copy_handle'));

final _navigine_sdk_flutter_Building_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Building_release_handle'));

final _navigine_sdk_flutter_Building_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_Building_free');


class Building$Impl extends __lib.NativeBase implements Building, Finalizable {
    Building$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_Building_free.cast());

    @override
    List<Sublocation> getSublocations() {
        final _getSublocationsFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_Building_getSublocations'));
        final _handle = this.handle;
        final __resultHandle = _getSublocationsFfi(_handle, );
        final _result = navigine_sdk_flutter_List_Sublocation_FromFfi(__resultHandle);
        navigine_sdk_flutter_List_Sublocation_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    int getActiveSublocationId() {
        final _getActiveSublocationIdFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>, ),
            int Function(Pointer<Void>, )
          >('navigine_sdk_flutter_Building_getActiveSublocationId'));
        final _handle = this.handle;
        final __resultHandle = _getActiveSublocationIdFfi(_handle, );
        final _result = navigine_sdk_flutter_int_FromFfi(__resultHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    void setActiveSublocationId(int activeSublocationId) {
        final _setActiveSublocationIdFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_Building_setActiveSublocationId__ActiveSublocationId'));
        final _activeSublocationIdHandle = navigine_sdk_flutter_int_ToFfi(activeSublocationId);
        final _handle = this.handle;
        _setActiveSublocationIdFfi(_handle, _activeSublocationIdHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_activeSublocationIdHandle);
    }




}

Pointer<Void> navigine_sdk_flutter_Building_ToFfi(Building value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_Building_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

Building navigine_sdk_flutter_Building_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_Building_CopyHandle(handle);
    final result = Building$Impl(_copiedHandle);
    Building$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_Building_ToFfiNullable(Building? value) => 
  value != null ? navigine_sdk_flutter_Building_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_Building_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_Building_ReleaseHandle(handle);

void navigine_sdk_flutter_Building_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_Building_ReleaseHandle(handle);

Building? navigine_sdk_flutter_Building_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_Building_FromFfi(handle) : null;

// End of Building "private" section.

final _navigine_sdk_flutter_List_Sublocation_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_Sublocation_create_handle'));

final _navigine_sdk_flutter_List_Sublocation_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Sublocation_release_handle'));

final _navigine_sdk_flutter_List_Sublocation_Insert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_Sublocation_insert'));

final _navigine_sdk_flutter_List_Sublocation_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Sublocation_iterator'));

final _navigine_sdk_flutter_List_Sublocation_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Sublocation_iterator_release_handle'));

final _navigine_sdk_flutter_List_Sublocation_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_Sublocation_iterator_is_valid'));

final _navigine_sdk_flutter_List_Sublocation_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Sublocation_iterator_increment'));

final _navigine_sdk_flutter_List_Sublocation_IteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Sublocation_iterator_get'));

Pointer<Void> navigine_sdk_flutter_List_Sublocation_ToFfi(List<Sublocation> value)  {
    final _result = _navigine_sdk_flutter_List_Sublocation_CreateHandle();
    for (final element in value)  {
        final _elementHandle = navigine_sdk_flutter_Sublocation_ToFfi(element);
        _navigine_sdk_flutter_List_Sublocation_Insert(_result, _elementHandle);
        navigine_sdk_flutter_Sublocation_ReleaseFfiHandle(_elementHandle);
    }
    return _result;
}

List<Sublocation> navigine_sdk_flutter_List_Sublocation_FromFfi(Pointer<Void> handle)  {
    final result = List<Sublocation>.empty(growable: true);
    final _iteratorHandle = _navigine_sdk_flutter_List_Sublocation_Iterator(handle);
    while (_navigine_sdk_flutter_List_Sublocation_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _elementHandle = _navigine_sdk_flutter_List_Sublocation_IteratorGet(_iteratorHandle);
        result.add(navigine_sdk_flutter_Sublocation_FromFfi(_elementHandle));
        navigine_sdk_flutter_Sublocation_ReleaseFfiHandle(_elementHandle);
        _navigine_sdk_flutter_List_Sublocation_IteratorIncrement(_iteratorHandle);
    }
    return result;
}

void navigine_sdk_flutter_List_Sublocation_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_List_Sublocation_ReleaseHandle(handle);

final _navigine_sdk_flutter_List_Sublocation_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Sublocation_create_handle_nullable'));

final _navigine_sdk_flutter_List_Sublocation_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Sublocation_release_handle_nullable'));

final _navigine_sdk_flutter_List_Sublocation_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_Sublocation_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_List_Sublocation_ToFfiNullable(List<Sublocation>? value)  {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_List_Sublocation_ToFfi(value);
    final result = _navigine_sdk_flutter_List_Sublocation_CreateHandleNullable(_handle);
    navigine_sdk_flutter_List_Sublocation_ReleaseFfiHandle(_handle);
    return result;
}

List<Sublocation>? navigine_sdk_flutter_List_Sublocation_FromFfiNullable(Pointer<Void> handle)  {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_List_Sublocation_GetValueNullable(handle);
    final result = navigine_sdk_flutter_List_Sublocation_FromFfi(_handle);
    navigine_sdk_flutter_List_Sublocation_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_List_Sublocation_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_Sublocation_ReleaseHandleNullable(handle);
