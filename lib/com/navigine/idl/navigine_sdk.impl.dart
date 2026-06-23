part of 'navigine_sdk.dart';

// NavigineSdk "private" section, not exported.

final _navigine_sdk_flutter_NavigineSdk_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_NavigineSdk_check'));

final _navigine_sdk_flutter_NavigineSdk_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_NavigineSdk_free');


class NavigineSdk$Impl implements NavigineSdk, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_NavigineSdk_free.cast());

    NavigineSdk$Impl.fromExternalPtr(this.ptr);

    @internal
    NavigineSdk$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory NavigineSdk$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_NavigineSdk_check(ptr);

    static Pointer<Void> getNativePtr(NavigineSdk? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as NavigineSdk$Impl).ptr;
    }

    static NavigineSdk? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return NavigineSdk$Impl.fromNativePtr(ptr);
    }

    NavigineSdk getInstance() {
        final _getInstanceFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(),
            Pointer<Void> Function()
          >('navigine_sdk_flutter_NavigineSdk_getInstance'));
        final __resultHandle = _getInstanceFfi();
        final _result = NavigineSdk$Impl.fromNativePtr(__resultHandle);
        return _result;
    }
    String getVersion() {
        final _getVersionFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(),
            NativeString Function()
          >('navigine_sdk_flutter_NavigineSdk_getVersion'));
        final __resultHandle = _getVersionFfi();
        final _result = toPlatformString(__resultHandle);
        return _result;
    }
    String getDeviceId() {
        final _getDeviceIdFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(),
            NativeString Function()
          >('navigine_sdk_flutter_NavigineSdk_getDeviceId'));
        final __resultHandle = _getDeviceIdFfi();
        final _result = toPlatformString(__resultHandle);
        return _result;
    }
    String getUserAgent() {
        final _getUserAgentFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(),
            NativeString Function()
          >('navigine_sdk_flutter_NavigineSdk_getUserAgent'));
        final __resultHandle = _getUserAgentFfi();
        final _result = toPlatformString(__resultHandle);
        return _result;
    }
    int getRelativeTime() {
        final _getRelativeTimeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int64 Function(),
            int Function()
          >('navigine_sdk_flutter_NavigineSdk_getRelativeTime'));
        final __resultHandle = _getRelativeTimeFfi();
        final _result = __resultHandle;
        return _result;
    }
    @override
    void setUserHash(String userHash) {
        final _setUserHashFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, NativeString),
            void Function(Pointer<Void>, NativeString)
          >('navigine_sdk_flutter_NavigineSdk_setUserHash__UserHash'));
        _setUserHashFfi(this.ptr, toNativeString(userHash));
        exception.checkCallResult();
    }

    @override
    void setServer(String server) {
        final _setServerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, NativeString),
            void Function(Pointer<Void>, NativeString)
          >('navigine_sdk_flutter_NavigineSdk_setServer__Server'));
        _setServerFfi(this.ptr, toNativeString(server));
        exception.checkCallResult();
    }

    @override
    void reset() {
        final _resetFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_NavigineSdk_reset'));
        _resetFfi(this.ptr, );
        exception.checkCallResult();
    }

    @override
    LocationManager getLocationManager() {
        final _getLocationManagerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_NavigineSdk_getLocationManager'));
        final __resultHandle = _getLocationManagerFfi(this.ptr, );
        final _result = LocationManager$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    NavigationManager getNavigationManager(LocationManager locationManager) {
        final _getNavigationManagerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NavigineSdk_getNavigationManager__LocationManager'));
        final __resultHandle = _getNavigationManagerFfi(this.ptr, LocationManager$Impl.getNativePtr(locationManager));
        final _result = NavigationManager$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    ZoneManager getZoneManager(NavigationManager navigationManager) {
        final _getZoneManagerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NavigineSdk_getZoneManager__NavigationManager'));
        final __resultHandle = _getZoneManagerFfi(this.ptr, NavigationManager$Impl.getNativePtr(navigationManager));
        final _result = ZoneManager$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    AsyncRouteManager getAsyncRouteManager(LocationManager locationManager, NavigationManager navigationManager) {
        final _getAsyncRouteManagerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NavigineSdk_getAsyncRouteManager__LocationManager_NavigationManager'));
        final __resultHandle = _getAsyncRouteManagerFfi(this.ptr, LocationManager$Impl.getNativePtr(locationManager), NavigationManager$Impl.getNativePtr(navigationManager));
        final _result = AsyncRouteManager$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    NotificationManager getNotificationManager(LocationManager locationManager) {
        final _getNotificationManagerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NavigineSdk_getNotificationManager__LocationManager'));
        final __resultHandle = _getNotificationManagerFfi(this.ptr, LocationManager$Impl.getNativePtr(locationManager));
        final _result = NotificationManager$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    String getErrorDescription(int errorCode) {
        final _getErrorDescriptionFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>, Int32),
            NativeString Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_NavigineSdk_getErrorDescription__ErrorCode'));
        final __resultHandle = _getErrorDescriptionFfi(this.ptr, errorCode);
        final _result = toPlatformString(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    LocationWindow createLocationWindow(PlatformView platformView) {
        final _createLocationWindowFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NavigineSdk_createLocationWindow__PlatformView'));
        final __resultHandle = _createLocationWindowFfi(this.ptr, PlatformViewImpl.getNativePtr(platformView));
        final _result = LocationWindow$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    StorageManager getStorageManager() {
        final _getStorageManagerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_NavigineSdk_getStorageManager'));
        final __resultHandle = _getStorageManagerFfi(this.ptr, );
        final _result = StorageManager$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    UserLocationLayer getUserLocationLayer(LocationWindow locationWindow) {
        final _getUserLocationLayerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NavigineSdk_getUserLocationLayer__LocationWindow'));
        final __resultHandle = _getUserLocationLayerFfi(this.ptr, LocationWindow$Impl.getNativePtr(locationWindow));
        final _result = UserLocationLayer$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    RouteManager getRouteManager(LocationManager locationManager, NavigationManager navigationManager) {
        final _getRouteManagerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NavigineSdk_getRouteManager__LocationManager_NavigationManager'));
        final __resultHandle = _getRouteManagerFfi(this.ptr, LocationManager$Impl.getNativePtr(locationManager), NavigationManager$Impl.getNativePtr(navigationManager));
        final _result = RouteManager$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    MeasurementManager getMeasurementManager(LocationManager locationManager) {
        final _getMeasurementManagerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NavigineSdk_getMeasurementManager__LocationManager'));
        final __resultHandle = _getMeasurementManagerFfi(this.ptr, LocationManager$Impl.getNativePtr(locationManager));
        final _result = MeasurementManager$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    ResourceManager getResourceManager(LocationManager locationManager) {
        final _getResourceManagerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NavigineSdk_getResourceManager__LocationManager'));
        final __resultHandle = _getResourceManagerFfi(this.ptr, LocationManager$Impl.getNativePtr(locationManager));
        final _result = ResourceManager$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    LocationEditManager getLocationEditManager(LocationManager locationManager) {
        final _getLocationEditManagerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NavigineSdk_getLocationEditManager__LocationManager'));
        final __resultHandle = _getLocationEditManagerFfi(this.ptr, LocationManager$Impl.getNativePtr(locationManager));
        final _result = LocationEditManager$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    BeaconProximityEstimator getBeaconProximityEstimator(LocationManager locationManager) {
        final _getBeaconProximityEstimatorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NavigineSdk_getBeaconProximityEstimator__LocationManager'));
        final __resultHandle = _getBeaconProximityEstimatorFfi(this.ptr, LocationManager$Impl.getNativePtr(locationManager));
        final _result = BeaconProximityEstimator$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    MqttSession getMqttSession(NavigationManager navigationManager) {
        final _getMqttSessionFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NavigineSdk_getMqttSession__NavigationManager'));
        final __resultHandle = _getMqttSessionFfi(this.ptr, NavigationManager$Impl.getNativePtr(navigationManager));
        final _result = MqttSession$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    LocationListManager getLocationListManager() {
        final _getLocationListManagerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_NavigineSdk_getLocationListManager'));
        final __resultHandle = _getLocationListManagerFfi(this.ptr, );
        final _result = LocationListManager$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }




}

// End of NavigineSdk "private" section.
