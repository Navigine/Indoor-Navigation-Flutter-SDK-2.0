part of 'building.dart';

// Building "private" section, not exported.

final _navigine_sdk_flutter_Building_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_Building_check'));

final _navigine_sdk_flutter_Building_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_Building_free');


class Building$Impl implements Building, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_Building_free.cast());

    Building$Impl.fromExternalPtr(this.ptr);

    @internal
    Building$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory Building$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_Building_check(ptr);

    static Pointer<Void> getNativePtr(Building? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as Building$Impl).ptr;
    }

    static Building? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return Building$Impl.fromNativePtr(ptr);
    }

    @override
    List<Sublocation> getSublocations() {
        final _getSublocationsFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_Building_getSublocations'));
        final __resultHandle = _getSublocationsFfi(this.ptr, );
        final _result = ListSublocationImpl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    int getActiveSublocationId() {
        final _getActiveSublocationIdFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>, ),
            int Function(Pointer<Void>, )
          >('navigine_sdk_flutter_Building_getActiveSublocationId'));
        final __resultHandle = _getActiveSublocationIdFfi(this.ptr, );
        final _result = __resultHandle;
        exception.checkCallResult();
        return _result;
    }

    @override
    void setActiveSublocationId(int activeSublocationId) {
        final _setActiveSublocationIdFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_Building_setActiveSublocationId__ActiveSublocationId'));
        _setActiveSublocationIdFfi(this.ptr, activeSublocationId);
        exception.checkCallResult();
    }




}

// End of Building "private" section.
