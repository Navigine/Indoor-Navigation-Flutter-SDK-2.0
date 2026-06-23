part of 'location_edit_manager.dart';

// LocationEditManager "private" section, not exported.

final _navigine_sdk_flutter_LocationEditManager_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_LocationEditManager_free');


class LocationEditManager$Impl implements LocationEditManager, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_LocationEditManager_free.cast());

    LocationEditManager$Impl.fromExternalPtr(this.ptr);

    @internal
    LocationEditManager$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory LocationEditManager$Impl.fromNativePtr(Pointer<Void> ptr) =>
        LocationEditManager$Impl.fromNativePtrImpl(ptr);


    static Pointer<Void> getNativePtr(LocationEditManager? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as LocationEditManager$Impl).ptr;
    }

    static LocationEditManager? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return LocationEditManager$Impl.fromNativePtr(ptr);
    }

    @override
    void addBeacon(int subLocId, String uuid, int major, int minor, Point point, String name, int? power) {
        final _addBeaconFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32, NativeString, Int32, Int32, PointNative, NativeString, Pointer<Void>),
            void Function(Pointer<Void>, int, NativeString, int, int, PointNative, NativeString, Pointer<Void>)
          >('navigine_sdk_flutter_LocationEditManager_addBeacon__SubLocId_Uuid_Major_Minor_Point_Name_Power'));
        _addBeaconFfi(this.ptr, subLocId, toNativeString(uuid), major, minor, PointImpl.toNative(point), toNativeString(name), toNativePtrInt32(power));
        exception.checkCallResult();
    }

    @override
    void editBeacon(int subLocId, String uuid, int major, int minor, Point point, String name, int? power) {
        final _editBeaconFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32, NativeString, Int32, Int32, PointNative, NativeString, Pointer<Void>),
            void Function(Pointer<Void>, int, NativeString, int, int, PointNative, NativeString, Pointer<Void>)
          >('navigine_sdk_flutter_LocationEditManager_editBeacon__SubLocId_Uuid_Major_Minor_Point_Name_Power'));
        _editBeaconFfi(this.ptr, subLocId, toNativeString(uuid), major, minor, PointImpl.toNative(point), toNativeString(name), toNativePtrInt32(power));
        exception.checkCallResult();
    }

    @override
    void removeBeacon(int subLocId, String uuid, int major, int minor) {
        final _removeBeaconFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32, NativeString, Int32, Int32),
            void Function(Pointer<Void>, int, NativeString, int, int)
          >('navigine_sdk_flutter_LocationEditManager_removeBeacon__SubLocId_Uuid_Major_Minor'));
        _removeBeaconFfi(this.ptr, subLocId, toNativeString(uuid), major, minor);
        exception.checkCallResult();
    }

    @override
    void addEddystone(int subLocId, String namespaceId, String instanceId, Point point, String name, int? power) {
        final _addEddystoneFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32, NativeString, NativeString, PointNative, NativeString, Pointer<Void>),
            void Function(Pointer<Void>, int, NativeString, NativeString, PointNative, NativeString, Pointer<Void>)
          >('navigine_sdk_flutter_LocationEditManager_addEddystone__SubLocId_NamespaceId_InstanceId_Point_Name_Power'));
        _addEddystoneFfi(this.ptr, subLocId, toNativeString(namespaceId), toNativeString(instanceId), PointImpl.toNative(point), toNativeString(name), toNativePtrInt32(power));
        exception.checkCallResult();
    }

    @override
    void editEddystone(int subLocId, String namespaceId, String instanceId, Point point, String name, int? power) {
        final _editEddystoneFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32, NativeString, NativeString, PointNative, NativeString, Pointer<Void>),
            void Function(Pointer<Void>, int, NativeString, NativeString, PointNative, NativeString, Pointer<Void>)
          >('navigine_sdk_flutter_LocationEditManager_editEddystone__SubLocId_NamespaceId_InstanceId_Point_Name_Power'));
        _editEddystoneFfi(this.ptr, subLocId, toNativeString(namespaceId), toNativeString(instanceId), PointImpl.toNative(point), toNativeString(name), toNativePtrInt32(power));
        exception.checkCallResult();
    }

    @override
    void removeEddystone(int subLocId, String namespaceId, String instanceId) {
        final _removeEddystoneFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32, NativeString, NativeString),
            void Function(Pointer<Void>, int, NativeString, NativeString)
          >('navigine_sdk_flutter_LocationEditManager_removeEddystone__SubLocId_NamespaceId_InstanceId'));
        _removeEddystoneFfi(this.ptr, subLocId, toNativeString(namespaceId), toNativeString(instanceId));
        exception.checkCallResult();
    }

    @override
    void addWifi(int subLocId, String mac, Point point, String name) {
        final _addWifiFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32, NativeString, PointNative, NativeString),
            void Function(Pointer<Void>, int, NativeString, PointNative, NativeString)
          >('navigine_sdk_flutter_LocationEditManager_addWifi__SubLocId_Mac_Point_Name'));
        _addWifiFfi(this.ptr, subLocId, toNativeString(mac), PointImpl.toNative(point), toNativeString(name));
        exception.checkCallResult();
    }

    @override
    void editWifi(int subLocId, String mac, Point point, String name) {
        final _editWifiFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32, NativeString, PointNative, NativeString),
            void Function(Pointer<Void>, int, NativeString, PointNative, NativeString)
          >('navigine_sdk_flutter_LocationEditManager_editWifi__SubLocId_Mac_Point_Name'));
        _editWifiFfi(this.ptr, subLocId, toNativeString(mac), PointImpl.toNative(point), toNativeString(name));
        exception.checkCallResult();
    }

    @override
    void removeWifi(int subLocId, String mac) {
        final _removeWifiFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32, NativeString),
            void Function(Pointer<Void>, int, NativeString)
          >('navigine_sdk_flutter_LocationEditManager_removeWifi__SubLocId_Mac'));
        _removeWifiFfi(this.ptr, subLocId, toNativeString(mac));
        exception.checkCallResult();
    }

    @override
    void addWifiRtt() {
        final _addWifiRttFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationEditManager_addWifiRtt'));
        _addWifiRttFfi(this.ptr, );
        exception.checkCallResult();
    }

    @override
    void editWifiRtt() {
        final _editWifiRttFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationEditManager_editWifiRtt'));
        _editWifiRttFfi(this.ptr, );
        exception.checkCallResult();
    }

    @override
    void removeWifiRtt(int subLocId, String mac) {
        final _removeWifiRttFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32, NativeString),
            void Function(Pointer<Void>, int, NativeString)
          >('navigine_sdk_flutter_LocationEditManager_removeWifiRtt__SubLocId_Mac'));
        _removeWifiRttFfi(this.ptr, subLocId, toNativeString(mac));
        exception.checkCallResult();
    }

    @override
    void addLocationEditListener(LocationEditListener locationEditListener) {
        final _addLocationEditListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationEditManager_addLocationEditListener__LocationEditListener'));
        _addLocationEditListenerFfi(this.ptr, LocationEditListenerImpl.getNativePtr(locationEditListener));
        exception.checkCallResult();
    }

    @override
    void removeLocationEditListener(LocationEditListener locationEditListener) {
        final _removeLocationEditListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationEditManager_removeLocationEditListener__LocationEditListener'));
        _removeLocationEditListenerFfi(this.ptr, LocationEditListenerImpl.getNativePtr(locationEditListener));
        exception.checkCallResult();
    }




}

// End of LocationEditManager "private" section.
