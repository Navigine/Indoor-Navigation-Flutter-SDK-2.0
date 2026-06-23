part of 'reference_entry.dart';

// ReferenceEntry "private" section, not exported.

final _navigine_sdk_flutter_ReferenceEntry_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_ReferenceEntry_check'));

final _navigine_sdk_flutter_ReferenceEntry_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_ReferenceEntry_free');


class ReferenceEntry$Impl implements ReferenceEntry, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_ReferenceEntry_free.cast());

    ReferenceEntry$Impl.fromExternalPtr(this.ptr);

    @internal
    ReferenceEntry$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory ReferenceEntry$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_ReferenceEntry_check(ptr);

    static Pointer<Void> getNativePtr(ReferenceEntry? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as ReferenceEntry$Impl).ptr;
    }

    static ReferenceEntry? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return ReferenceEntry$Impl.fromNativePtr(ptr);
    }


    ReferenceEntryType get type {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferenceEntry_type_get'));

        final _typeHandle = _getFfi(this.ptr);
        final _result = ReferenceEntryTypeImpl.fromInt(_typeHandle);
        exception.checkCallResult();
        return _result;
    }


    String get bssid {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferenceEntry_bssid_get'));

        final _bssidHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_bssidHandle);
        exception.checkCallResult();
        return _result;
    }


    String get value {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferenceEntry_value_get'));

        final _valueHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_valueHandle);
        exception.checkCallResult();
        return _result;
    }




}

// End of ReferenceEntry "private" section.
