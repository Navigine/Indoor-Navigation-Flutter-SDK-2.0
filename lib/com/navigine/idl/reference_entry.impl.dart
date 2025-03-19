part of 'reference_entry.dart';

// ReferenceEntry "private" section, not exported.

final _navigine_sdk_flutter_ReferenceEntry_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_ReferenceEntry_copy_handle'));

final _navigine_sdk_flutter_ReferenceEntry_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_ReferenceEntry_release_handle'));

final _navigine_sdk_flutter_ReferenceEntry_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_ReferenceEntry_free');


class ReferenceEntry$Impl extends __lib.NativeBase implements ReferenceEntry, Finalizable {
    ReferenceEntry$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_ReferenceEntry_free.cast());


    ReferenceEntryType get type {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferenceEntry_type_get'));

        final _handle = this.handle;
        final _typeHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_ReferenceEntryType_FromFfi(_typeHandle);
        navigine_sdk_flutter_ReferenceEntryType_ReleaseFfiHandle(_typeHandle);
        return _result;
    }


    String get bssid {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferenceEntry_bssid_get'));

        final _handle = this.handle;
        final _bssidHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfi(_bssidHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_bssidHandle);
        return _result;
    }


    String get value {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferenceEntry_value_get'));

        final _handle = this.handle;
        final _valueHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfi(_valueHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_valueHandle);
        return _result;
    }




}

Pointer<Void> navigine_sdk_flutter_ReferenceEntry_ToFfi(ReferenceEntry value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_ReferenceEntry_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

ReferenceEntry navigine_sdk_flutter_ReferenceEntry_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_ReferenceEntry_CopyHandle(handle);
    final result = ReferenceEntry$Impl(_copiedHandle);
    ReferenceEntry$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_ReferenceEntry_ToFfiNullable(ReferenceEntry? value) => 
  value != null ? navigine_sdk_flutter_ReferenceEntry_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_ReferenceEntry_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_ReferenceEntry_ReleaseHandle(handle);

void navigine_sdk_flutter_ReferenceEntry_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_ReferenceEntry_ReleaseHandle(handle);

ReferenceEntry? navigine_sdk_flutter_ReferenceEntry_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_ReferenceEntry_FromFfi(handle) : null;

// End of ReferenceEntry "private" section.
