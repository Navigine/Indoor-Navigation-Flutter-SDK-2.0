part of 'location_manager.dart';

// LocationManager "private" section, not exported.

final _navigine_sdk_flutter_LocationManager_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_LocationManager_free');


class LocationManager$Impl implements LocationManager, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_LocationManager_free.cast());

    LocationManager$Impl.fromExternalPtr(this.ptr);

    @internal
    LocationManager$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory LocationManager$Impl.fromNativePtr(Pointer<Void> ptr) =>
        LocationManager$Impl.fromNativePtrImpl(ptr);


    static Pointer<Void> getNativePtr(LocationManager? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as LocationManager$Impl).ptr;
    }

    static LocationManager? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return LocationManager$Impl.fromNativePtr(ptr);
    }

    @override
    void addLocationListener(LocationListener listener) {
        final _addLocationListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationManager_addLocationListener__Listener'));
        _addLocationListenerFfi(this.ptr, LocationListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void removeLocationListener(LocationListener listener) {
        final _removeLocationListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationManager_removeLocationListener__Listener'));
        _removeLocationListenerFfi(this.ptr, LocationListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void setLocationId(int locationId) {
        final _setLocationIdFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_LocationManager_setLocationId__LocationId'));
        _setLocationIdFfi(this.ptr, locationId);
        exception.checkCallResult();
    }

    @override
    int getLocationId() {
        final _getLocationIdFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>, ),
            int Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationManager_getLocationId'));
        final __resultHandle = _getLocationIdFfi(this.ptr, );
        final _result = __resultHandle;
        exception.checkCallResult();
        return _result;
    }

    @override
    void commitChanges() {
        final _commitChangesFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationManager_commitChanges'));
        _commitChangesFfi(this.ptr, );
        exception.checkCallResult();
    }

    @override
    void revertChanges() {
        final _revertChangesFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationManager_revertChanges'));
        _revertChangesFfi(this.ptr, );
        exception.checkCallResult();
    }

    @override
    void setLocationUpdateInterval(int interval) {
        final _setLocationUpdateIntervalFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_LocationManager_setLocationUpdateInterval__Interval'));
        _setLocationUpdateIntervalFfi(this.ptr, interval);
        exception.checkCallResult();
    }




}

// End of LocationManager "private" section.
