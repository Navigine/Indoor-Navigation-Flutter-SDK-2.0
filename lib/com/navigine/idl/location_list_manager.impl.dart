part of 'location_list_manager.dart';

// LocationListManager "private" section, not exported.

final _navigine_sdk_flutter_LocationListManager_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_LocationListManager_free');


class LocationListManager$Impl implements LocationListManager, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_LocationListManager_free.cast());

    LocationListManager$Impl.fromExternalPtr(this.ptr);

    @internal
    LocationListManager$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory LocationListManager$Impl.fromNativePtr(Pointer<Void> ptr) =>
        LocationListManager$Impl.fromNativePtrImpl(ptr);


    static Pointer<Void> getNativePtr(LocationListManager? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as LocationListManager$Impl).ptr;
    }

    static LocationListManager? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return LocationListManager$Impl.fromNativePtr(ptr);
    }

    @override
    void addLocationListListener(LocationListListener listener) {
        final _addLocationListListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationListManager_addLocationListListener__Listener'));
        _addLocationListListenerFfi(this.ptr, LocationListListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void removeLocationListListener(LocationListListener listener) {
        final _removeLocationListListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationListManager_removeLocationListListener__Listener'));
        _removeLocationListListenerFfi(this.ptr, LocationListListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void updateLocationList() {
        final _updateLocationListFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationListManager_updateLocationList'));
        _updateLocationListFfi(this.ptr, );
        exception.checkCallResult();
    }

    @override
    Map<int, LocationInfo> getLocationList() {
        final _getLocationListFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationListManager_getLocationList'));
        final __resultHandle = _getLocationListFfi(this.ptr, );
        final _result = MapInt_LocationInfoImpl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }




}

// End of LocationListManager "private" section.
