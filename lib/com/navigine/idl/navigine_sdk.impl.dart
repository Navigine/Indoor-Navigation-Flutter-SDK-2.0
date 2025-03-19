part of 'navigine_sdk.dart';

// NavigineSdk "private" section, not exported.

final _navigine_sdk_flutter_NavigineSdk_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_NavigineSdk_copy_handle'));

final _navigine_sdk_flutter_NavigineSdk_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_NavigineSdk_release_handle'));

final _navigine_sdk_flutter_NavigineSdk_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_NavigineSdk_free');


class NavigineSdk$Impl extends __lib.NativeBase implements NavigineSdk, Finalizable {
    NavigineSdk$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_NavigineSdk_free.cast());

    NavigineSdk getInstance() {
        final _getInstanceFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(),
            Pointer<Void> Function()
          >('navigine_sdk_flutter_NavigineSdk_getInstance'));
        final __resultHandle = _getInstanceFfi();
        final _result = navigine_sdk_flutter_NavigineSdk_FromFfi(__resultHandle);
        navigine_sdk_flutter_NavigineSdk_ReleaseFfiHandle(__resultHandle);
        return _result;
    }
    String getVersion() {
        final _getVersionFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(),
            Pointer<Void> Function()
          >('navigine_sdk_flutter_NavigineSdk_getVersion'));
        final __resultHandle = _getVersionFfi();
        final _result = navigine_sdk_flutter_String_FromFfi(__resultHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(__resultHandle);
        return _result;
    }
    String getDeviceId() {
        final _getDeviceIdFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(),
            Pointer<Void> Function()
          >('navigine_sdk_flutter_NavigineSdk_getDeviceId'));
        final __resultHandle = _getDeviceIdFfi();
        final _result = navigine_sdk_flutter_String_FromFfi(__resultHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(__resultHandle);
        return _result;
    }
    int getRelativeTime() {
        final _getRelativeTimeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int64 Function(),
            int Function()
          >('navigine_sdk_flutter_NavigineSdk_getRelativeTime'));
        final __resultHandle = _getRelativeTimeFfi();
        final _result = navigine_sdk_flutter_int_FromFfi(__resultHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(__resultHandle);
        return _result;
    }
    @override
    void setUserHash(String userHash) {
        final _setUserHashFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NavigineSdk_setUserHash__UserHash'));
        final _userHashHandle = navigine_sdk_flutter_String_ToFfi(userHash);
        final _handle = this.handle;
        _setUserHashFfi(_handle, _userHashHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_userHashHandle);
    }

    @override
    void setServer(String server) {
        final _setServerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NavigineSdk_setServer__Server'));
        final _serverHandle = navigine_sdk_flutter_String_ToFfi(server);
        final _handle = this.handle;
        _setServerFfi(_handle, _serverHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_serverHandle);
    }

    @override
    LocationManager getLocationManager() {
        final _getLocationManagerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_NavigineSdk_getLocationManager'));
        final _handle = this.handle;
        final __resultHandle = _getLocationManagerFfi(_handle, );
        final _result = navigine_sdk_flutter_LocationManager_FromFfi(__resultHandle);
        navigine_sdk_flutter_LocationManager_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    NavigationManager getNavigationManager(LocationManager locationManager) {
        final _getNavigationManagerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NavigineSdk_getNavigationManager__LocationManager'));
        final _locationManagerHandle = navigine_sdk_flutter_LocationManager_ToFfi(locationManager);
        final _handle = this.handle;
        final __resultHandle = _getNavigationManagerFfi(_handle, _locationManagerHandle);
        navigine_sdk_flutter_LocationManager_ReleaseFfiHandle(_locationManagerHandle);
        final _result = navigine_sdk_flutter_NavigationManager_FromFfi(__resultHandle);
        navigine_sdk_flutter_NavigationManager_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    ZoneManager getZoneManager(NavigationManager navigationManager) {
        final _getZoneManagerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NavigineSdk_getZoneManager__NavigationManager'));
        final _navigationManagerHandle = navigine_sdk_flutter_NavigationManager_ToFfi(navigationManager);
        final _handle = this.handle;
        final __resultHandle = _getZoneManagerFfi(_handle, _navigationManagerHandle);
        navigine_sdk_flutter_NavigationManager_ReleaseFfiHandle(_navigationManagerHandle);
        final _result = navigine_sdk_flutter_ZoneManager_FromFfi(__resultHandle);
        navigine_sdk_flutter_ZoneManager_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    RouteManager getRouteManager(LocationManager locationManager, NavigationManager navigationManager) {
        final _getRouteManagerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NavigineSdk_getRouteManager__LocationManager_NavigationManager'));
        final _locationManagerHandle = navigine_sdk_flutter_LocationManager_ToFfi(locationManager);
        final _navigationManagerHandle = navigine_sdk_flutter_NavigationManager_ToFfi(navigationManager);
        final _handle = this.handle;
        final __resultHandle = _getRouteManagerFfi(_handle, _locationManagerHandle, _navigationManagerHandle);
        navigine_sdk_flutter_LocationManager_ReleaseFfiHandle(_locationManagerHandle);
        navigine_sdk_flutter_NavigationManager_ReleaseFfiHandle(_navigationManagerHandle);
        final _result = navigine_sdk_flutter_RouteManager_FromFfi(__resultHandle);
        navigine_sdk_flutter_RouteManager_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    AsyncRouteManager getAsyncRouteManager(LocationManager locationManager, NavigationManager navigationManager) {
        final _getAsyncRouteManagerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NavigineSdk_getAsyncRouteManager__LocationManager_NavigationManager'));
        final _locationManagerHandle = navigine_sdk_flutter_LocationManager_ToFfi(locationManager);
        final _navigationManagerHandle = navigine_sdk_flutter_NavigationManager_ToFfi(navigationManager);
        final _handle = this.handle;
        final __resultHandle = _getAsyncRouteManagerFfi(_handle, _locationManagerHandle, _navigationManagerHandle);
        navigine_sdk_flutter_LocationManager_ReleaseFfiHandle(_locationManagerHandle);
        navigine_sdk_flutter_NavigationManager_ReleaseFfiHandle(_navigationManagerHandle);
        final _result = navigine_sdk_flutter_AsyncRouteManager_FromFfi(__resultHandle);
        navigine_sdk_flutter_AsyncRouteManager_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    NotificationManager getNotificationManager(LocationManager locationManager) {
        final _getNotificationManagerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NavigineSdk_getNotificationManager__LocationManager'));
        final _locationManagerHandle = navigine_sdk_flutter_LocationManager_ToFfi(locationManager);
        final _handle = this.handle;
        final __resultHandle = _getNotificationManagerFfi(_handle, _locationManagerHandle);
        navigine_sdk_flutter_LocationManager_ReleaseFfiHandle(_locationManagerHandle);
        final _result = navigine_sdk_flutter_NotificationManager_FromFfi(__resultHandle);
        navigine_sdk_flutter_NotificationManager_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    ResourceManager getResourceManager(LocationManager locationManager) {
        final _getResourceManagerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NavigineSdk_getResourceManager__LocationManager'));
        final _locationManagerHandle = navigine_sdk_flutter_LocationManager_ToFfi(locationManager);
        final _handle = this.handle;
        final __resultHandle = _getResourceManagerFfi(_handle, _locationManagerHandle);
        navigine_sdk_flutter_LocationManager_ReleaseFfiHandle(_locationManagerHandle);
        final _result = navigine_sdk_flutter_ResourceManager_FromFfi(__resultHandle);
        navigine_sdk_flutter_ResourceManager_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    LocationEditManager getLocationEditManager(LocationManager locationManager) {
        final _getLocationEditManagerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NavigineSdk_getLocationEditManager__LocationManager'));
        final _locationManagerHandle = navigine_sdk_flutter_LocationManager_ToFfi(locationManager);
        final _handle = this.handle;
        final __resultHandle = _getLocationEditManagerFfi(_handle, _locationManagerHandle);
        navigine_sdk_flutter_LocationManager_ReleaseFfiHandle(_locationManagerHandle);
        final _result = navigine_sdk_flutter_LocationEditManager_FromFfi(__resultHandle);
        navigine_sdk_flutter_LocationEditManager_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    MeasurementManager getMeasurementManager(LocationManager locationManager) {
        final _getMeasurementManagerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NavigineSdk_getMeasurementManager__LocationManager'));
        final _locationManagerHandle = navigine_sdk_flutter_LocationManager_ToFfi(locationManager);
        final _handle = this.handle;
        final __resultHandle = _getMeasurementManagerFfi(_handle, _locationManagerHandle);
        navigine_sdk_flutter_LocationManager_ReleaseFfiHandle(_locationManagerHandle);
        final _result = navigine_sdk_flutter_MeasurementManager_FromFfi(__resultHandle);
        navigine_sdk_flutter_MeasurementManager_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    BeaconProximityEstimator getBeaconProximityEstimator(LocationManager locationManager) {
        final _getBeaconProximityEstimatorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NavigineSdk_getBeaconProximityEstimator__LocationManager'));
        final _locationManagerHandle = navigine_sdk_flutter_LocationManager_ToFfi(locationManager);
        final _handle = this.handle;
        final __resultHandle = _getBeaconProximityEstimatorFfi(_handle, _locationManagerHandle);
        navigine_sdk_flutter_LocationManager_ReleaseFfiHandle(_locationManagerHandle);
        final _result = navigine_sdk_flutter_BeaconProximityEstimator_FromFfi(__resultHandle);
        navigine_sdk_flutter_BeaconProximityEstimator_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    String getErrorDescription(int errorCode) {
        final _getErrorDescriptionFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Int32),
            Pointer<Void> Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_NavigineSdk_getErrorDescription__ErrorCode'));
        final _errorCodeHandle = navigine_sdk_flutter_int_ToFfi(errorCode);
        final _handle = this.handle;
        final __resultHandle = _getErrorDescriptionFfi(_handle, _errorCodeHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_errorCodeHandle);
        final _result = navigine_sdk_flutter_String_FromFfi(__resultHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    LocationListManager getLocationListManager() {
        final _getLocationListManagerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_NavigineSdk_getLocationListManager'));
        final _handle = this.handle;
        final __resultHandle = _getLocationListManagerFfi(_handle, );
        final _result = navigine_sdk_flutter_LocationListManager_FromFfi(__resultHandle);
        navigine_sdk_flutter_LocationListManager_ReleaseFfiHandle(__resultHandle);
        return _result;
    }




}

Pointer<Void> navigine_sdk_flutter_NavigineSdk_ToFfi(NavigineSdk value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_NavigineSdk_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

NavigineSdk navigine_sdk_flutter_NavigineSdk_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_NavigineSdk_CopyHandle(handle);
    final result = NavigineSdk$Impl(_copiedHandle);
    NavigineSdk$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_NavigineSdk_ToFfiNullable(NavigineSdk? value) => 
  value != null ? navigine_sdk_flutter_NavigineSdk_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_NavigineSdk_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_NavigineSdk_ReleaseHandle(handle);

void navigine_sdk_flutter_NavigineSdk_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_NavigineSdk_ReleaseHandle(handle);

NavigineSdk? navigine_sdk_flutter_NavigineSdk_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_NavigineSdk_FromFfi(handle) : null;

// End of NavigineSdk "private" section.
