part of 'measurement_manager.dart';

// MeasurementManager "private" section, not exported.

final _navigine_sdk_flutter_MeasurementManager_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_MeasurementManager_free');


class MeasurementManager$Impl implements MeasurementManager, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_MeasurementManager_free.cast());

    MeasurementManager$Impl.fromExternalPtr(this.ptr);

    @internal
    MeasurementManager$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory MeasurementManager$Impl.fromNativePtr(Pointer<Void> ptr) =>
        MeasurementManager$Impl.fromNativePtrImpl(ptr);


    static Pointer<Void> getNativePtr(MeasurementManager? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as MeasurementManager$Impl).ptr;
    }

    static MeasurementManager? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return MeasurementManager$Impl.fromNativePtr(ptr);
    }

    @override
    void addMeasurementListener(MeasurementListener listener) {
        final _addMeasurementListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_MeasurementManager_addMeasurementListener__Listener'));
        _addMeasurementListenerFfi(this.ptr, MeasurementListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void removeMeasurementListener(MeasurementListener listener) {
        final _removeMeasurementListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_MeasurementManager_removeMeasurementListener__Listener'));
        _removeMeasurementListenerFfi(this.ptr, MeasurementListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void setPublishIntervalMs(int intervalMs) {
        final _setPublishIntervalMsFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_MeasurementManager_setPublishIntervalMs__IntervalMs'));
        _setPublishIntervalMsFfi(this.ptr, intervalMs);
        exception.checkCallResult();
    }

    @override
    String addBeaconGenerator(String uuid, int major, int minor, int power, int timeout, int rssiMin, int rssiMax) {
        final _addBeaconGeneratorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>, NativeString, Int32, Int32, Int32, Int32, Int32, Int32),
            NativeString Function(Pointer<Void>, NativeString, int, int, int, int, int, int)
          >('navigine_sdk_flutter_MeasurementManager_addBeaconGenerator__Uuid_Major_Minor_Power_Timeout_RssiMin_RssiMax'));
        final __resultHandle = _addBeaconGeneratorFfi(this.ptr, toNativeString(uuid), major, minor, power, timeout, rssiMin, rssiMax);
        final _result = toPlatformString(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    String addEddystoneGenerator(String namespaceId, String instanceId, int power, int timeout, int rssiMin, int rssiMax) {
        final _addEddystoneGeneratorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>, NativeString, NativeString, Int32, Int32, Int32, Int32),
            NativeString Function(Pointer<Void>, NativeString, NativeString, int, int, int, int)
          >('navigine_sdk_flutter_MeasurementManager_addEddystoneGenerator__NamespaceId_InstanceId_Power_Timeout_RssiMin_RssiMax'));
        final __resultHandle = _addEddystoneGeneratorFfi(this.ptr, toNativeString(namespaceId), toNativeString(instanceId), power, timeout, rssiMin, rssiMax);
        final _result = toPlatformString(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    void removeBleGenerators() {
        final _removeBleGeneratorsFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_MeasurementManager_removeBleGenerators'));
        _removeBleGeneratorsFfi(this.ptr, );
        exception.checkCallResult();
    }

    @override
    void removeBleGenerator(String id) {
        final _removeBleGeneratorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, NativeString),
            void Function(Pointer<Void>, NativeString)
          >('navigine_sdk_flutter_MeasurementManager_removeBleGenerator__Id'));
        _removeBleGeneratorFfi(this.ptr, toNativeString(id));
        exception.checkCallResult();
    }

    @override
    String addWifiGenerator(String mac, int timeout, int rssiMin, int rssiMax) {
        final _addWifiGeneratorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>, NativeString, Int32, Int32, Int32),
            NativeString Function(Pointer<Void>, NativeString, int, int, int)
          >('navigine_sdk_flutter_MeasurementManager_addWifiGenerator__Mac_Timeout_RssiMin_RssiMax'));
        final __resultHandle = _addWifiGeneratorFfi(this.ptr, toNativeString(mac), timeout, rssiMin, rssiMax);
        final _result = toPlatformString(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    void removeWifiGenerator(String id) {
        final _removeWifiGeneratorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, NativeString),
            void Function(Pointer<Void>, NativeString)
          >('navigine_sdk_flutter_MeasurementManager_removeWifiGenerator__Id'));
        _removeWifiGeneratorFfi(this.ptr, toNativeString(id));
        exception.checkCallResult();
    }

    @override
    void removeWifiGenerators() {
        final _removeWifiGeneratorsFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_MeasurementManager_removeWifiGenerators'));
        _removeWifiGeneratorsFfi(this.ptr, );
        exception.checkCallResult();
    }

    @override
    String addWifiRttGenerator(String mac, int timeout, int distMin, int distMax, int stdDevMin, int stdDevMax, int rssiMin, int rssiMax) {
        final _addWifiRttGeneratorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>, NativeString, Int32, Int32, Int32, Int32, Int32, Int32, Int32),
            NativeString Function(Pointer<Void>, NativeString, int, int, int, int, int, int, int)
          >('navigine_sdk_flutter_MeasurementManager_addWifiRttGenerator__Mac_Timeout_DistMin_DistMax_StdDevMin_StdDevMax_RssiMin_RssiMax'));
        final __resultHandle = _addWifiRttGeneratorFfi(this.ptr, toNativeString(mac), timeout, distMin, distMax, stdDevMin, stdDevMax, rssiMin, rssiMax);
        final _result = toPlatformString(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    void removeWifiRttGenerator(String hash) {
        final _removeWifiRttGeneratorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, NativeString),
            void Function(Pointer<Void>, NativeString)
          >('navigine_sdk_flutter_MeasurementManager_removeWifiRttGenerator__Hash'));
        _removeWifiRttGeneratorFfi(this.ptr, toNativeString(hash));
        exception.checkCallResult();
    }

    @override
    void removeWifiRttGenerators() {
        final _removeWifiRttGeneratorsFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_MeasurementManager_removeWifiRttGenerators'));
        _removeWifiRttGeneratorsFfi(this.ptr, );
        exception.checkCallResult();
    }

    @override
    String addLocationGenerator(double latMin, double latMax, double lonMin, double lonMax, double accMin, double accMax, int timeout) {
        final _addLocationGeneratorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>, Double, Double, Double, Double, Float, Float, Int32),
            NativeString Function(Pointer<Void>, double, double, double, double, double, double, int)
          >('navigine_sdk_flutter_MeasurementManager_addLocationGenerator__LatMin_LatMax_LonMin_LonMax_AccMin_AccMax_Timeout'));
        final __resultHandle = _addLocationGeneratorFfi(this.ptr, latMin, latMax, lonMin, lonMax, accMin, accMax, timeout);
        final _result = toPlatformString(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    void removeLocationGenerator(String id) {
        final _removeLocationGeneratorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, NativeString),
            void Function(Pointer<Void>, NativeString)
          >('navigine_sdk_flutter_MeasurementManager_removeLocationGenerator__Id'));
        _removeLocationGeneratorFfi(this.ptr, toNativeString(id));
        exception.checkCallResult();
    }

    @override
    void removeLocationGenerators() {
        final _removeLocationGeneratorsFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_MeasurementManager_removeLocationGenerators'));
        _removeLocationGeneratorsFfi(this.ptr, );
        exception.checkCallResult();
    }




}

// End of MeasurementManager "private" section.
