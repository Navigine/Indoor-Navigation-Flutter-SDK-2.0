import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/location_edit_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';

abstract class LocationEditManager implements Finalizable {

    void addBeacon(int subLocId, String uuid, int major, int minor, Point point, String name, int? power);
    void editBeacon(int subLocId, String uuid, int major, int minor, Point point, String name, int? power);
    void removeBeacon(int subLocId, String uuid, int major, int minor);
    void addEddystone(int subLocId, String namespaceId, String instanceId, Point point, String name, int? power);
    void editEddystone(int subLocId, String namespaceId, String instanceId, Point point, String name, int? power);
    void removeEddystone(int subLocId, String namespaceId, String instanceId);
    void addWifi(int subLocId, String mac, Point point, String name);
    void editWifi(int subLocId, String mac, Point point, String name);
    void removeWifi(int subLocId, String mac);
    void addWifiRtt();
    void editWifiRtt();
    void removeWifiRtt(int subLocId, String mac);
    void addLocationEditListener(LocationEditListener locationEditListener);
    void removeLocationEditListener(LocationEditListener locationEditListener);



}

// LocationEditManager "private" section, not exported.

final _navigine_sdk_flutter_LocationEditManager_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationEditManager_copy_handle'));

final _navigine_sdk_flutter_LocationEditManager_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationEditManager_release_handle'));

final _navigine_sdk_flutter_LocationEditManager_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_LocationEditManager_free');

final _navigine_sdk_flutter_LocationEditManager_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_LocationEditManager_create_proxy'));

final _navigine_sdk_flutter_LocationEditManager_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_LocationEditManager_set_ports'));


class LocationEditManager$Impl extends __lib.NativeBase implements LocationEditManager, Finalizable {
    LocationEditManager$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_LocationEditManager_free.cast());

    @override
    void addBeacon(int subLocId, String uuid, int major, int minor, Point point, String name, int? power) {
        final _addBeaconFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32, Pointer<Void>, Int32, Int32, Pointer<Void>, Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, int, Pointer<Void>, int, int, Pointer<Void>, Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationEditManager_addBeacon__SubLocId_Uuid_Major_Minor_Point_Name_Power'));
        final _subLocIdHandle = navigine_sdk_flutter_int_ToFfi(subLocId);
        final _uuidHandle = navigine_sdk_flutter_String_ToFfi(uuid);
        final _majorHandle = navigine_sdk_flutter_int_ToFfi(major);
        final _minorHandle = navigine_sdk_flutter_int_ToFfi(minor);
        final _pointHandle = navigine_sdk_flutter_Point_ToFfi(point);
        final _nameHandle = navigine_sdk_flutter_String_ToFfi(name);
        final _powerHandle = navigine_sdk_flutter_int_ToFfiNullable(power);
        final _handle = this.handle;
        _addBeaconFfi(_handle, _subLocIdHandle, _uuidHandle, _majorHandle, _minorHandle, _pointHandle, _nameHandle, _powerHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_subLocIdHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_uuidHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_majorHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_minorHandle);
        navigine_sdk_flutter_Point_ReleaseFfiHandle(_pointHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandleNullable(_powerHandle);
    }

    @override
    void editBeacon(int subLocId, String uuid, int major, int minor, Point point, String name, int? power) {
        final _editBeaconFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32, Pointer<Void>, Int32, Int32, Pointer<Void>, Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, int, Pointer<Void>, int, int, Pointer<Void>, Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationEditManager_editBeacon__SubLocId_Uuid_Major_Minor_Point_Name_Power'));
        final _subLocIdHandle = navigine_sdk_flutter_int_ToFfi(subLocId);
        final _uuidHandle = navigine_sdk_flutter_String_ToFfi(uuid);
        final _majorHandle = navigine_sdk_flutter_int_ToFfi(major);
        final _minorHandle = navigine_sdk_flutter_int_ToFfi(minor);
        final _pointHandle = navigine_sdk_flutter_Point_ToFfi(point);
        final _nameHandle = navigine_sdk_flutter_String_ToFfi(name);
        final _powerHandle = navigine_sdk_flutter_int_ToFfiNullable(power);
        final _handle = this.handle;
        _editBeaconFfi(_handle, _subLocIdHandle, _uuidHandle, _majorHandle, _minorHandle, _pointHandle, _nameHandle, _powerHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_subLocIdHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_uuidHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_majorHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_minorHandle);
        navigine_sdk_flutter_Point_ReleaseFfiHandle(_pointHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandleNullable(_powerHandle);
    }

    @override
    void removeBeacon(int subLocId, String uuid, int major, int minor) {
        final _removeBeaconFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32, Pointer<Void>, Int32, Int32),
            void Function(Pointer<Void>, int, Pointer<Void>, int, int)
          >('navigine_sdk_flutter_LocationEditManager_removeBeacon__SubLocId_Uuid_Major_Minor'));
        final _subLocIdHandle = navigine_sdk_flutter_int_ToFfi(subLocId);
        final _uuidHandle = navigine_sdk_flutter_String_ToFfi(uuid);
        final _majorHandle = navigine_sdk_flutter_int_ToFfi(major);
        final _minorHandle = navigine_sdk_flutter_int_ToFfi(minor);
        final _handle = this.handle;
        _removeBeaconFfi(_handle, _subLocIdHandle, _uuidHandle, _majorHandle, _minorHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_subLocIdHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_uuidHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_majorHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_minorHandle);
    }

    @override
    void addEddystone(int subLocId, String namespaceId, String instanceId, Point point, String name, int? power) {
        final _addEddystoneFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, int, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationEditManager_addEddystone__SubLocId_NamespaceId_InstanceId_Point_Name_Power'));
        final _subLocIdHandle = navigine_sdk_flutter_int_ToFfi(subLocId);
        final _namespaceIdHandle = navigine_sdk_flutter_String_ToFfi(namespaceId);
        final _instanceIdHandle = navigine_sdk_flutter_String_ToFfi(instanceId);
        final _pointHandle = navigine_sdk_flutter_Point_ToFfi(point);
        final _nameHandle = navigine_sdk_flutter_String_ToFfi(name);
        final _powerHandle = navigine_sdk_flutter_int_ToFfiNullable(power);
        final _handle = this.handle;
        _addEddystoneFfi(_handle, _subLocIdHandle, _namespaceIdHandle, _instanceIdHandle, _pointHandle, _nameHandle, _powerHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_subLocIdHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_namespaceIdHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_instanceIdHandle);
        navigine_sdk_flutter_Point_ReleaseFfiHandle(_pointHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandleNullable(_powerHandle);
    }

    @override
    void editEddystone(int subLocId, String namespaceId, String instanceId, Point point, String name, int? power) {
        final _editEddystoneFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, int, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationEditManager_editEddystone__SubLocId_NamespaceId_InstanceId_Point_Name_Power'));
        final _subLocIdHandle = navigine_sdk_flutter_int_ToFfi(subLocId);
        final _namespaceIdHandle = navigine_sdk_flutter_String_ToFfi(namespaceId);
        final _instanceIdHandle = navigine_sdk_flutter_String_ToFfi(instanceId);
        final _pointHandle = navigine_sdk_flutter_Point_ToFfi(point);
        final _nameHandle = navigine_sdk_flutter_String_ToFfi(name);
        final _powerHandle = navigine_sdk_flutter_int_ToFfiNullable(power);
        final _handle = this.handle;
        _editEddystoneFfi(_handle, _subLocIdHandle, _namespaceIdHandle, _instanceIdHandle, _pointHandle, _nameHandle, _powerHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_subLocIdHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_namespaceIdHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_instanceIdHandle);
        navigine_sdk_flutter_Point_ReleaseFfiHandle(_pointHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandleNullable(_powerHandle);
    }

    @override
    void removeEddystone(int subLocId, String namespaceId, String instanceId) {
        final _removeEddystoneFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32, Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, int, Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationEditManager_removeEddystone__SubLocId_NamespaceId_InstanceId'));
        final _subLocIdHandle = navigine_sdk_flutter_int_ToFfi(subLocId);
        final _namespaceIdHandle = navigine_sdk_flutter_String_ToFfi(namespaceId);
        final _instanceIdHandle = navigine_sdk_flutter_String_ToFfi(instanceId);
        final _handle = this.handle;
        _removeEddystoneFfi(_handle, _subLocIdHandle, _namespaceIdHandle, _instanceIdHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_subLocIdHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_namespaceIdHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_instanceIdHandle);
    }

    @override
    void addWifi(int subLocId, String mac, Point point, String name) {
        final _addWifiFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32, Pointer<Void>, Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, int, Pointer<Void>, Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationEditManager_addWifi__SubLocId_Mac_Point_Name'));
        final _subLocIdHandle = navigine_sdk_flutter_int_ToFfi(subLocId);
        final _macHandle = navigine_sdk_flutter_String_ToFfi(mac);
        final _pointHandle = navigine_sdk_flutter_Point_ToFfi(point);
        final _nameHandle = navigine_sdk_flutter_String_ToFfi(name);
        final _handle = this.handle;
        _addWifiFfi(_handle, _subLocIdHandle, _macHandle, _pointHandle, _nameHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_subLocIdHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_macHandle);
        navigine_sdk_flutter_Point_ReleaseFfiHandle(_pointHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
    }

    @override
    void editWifi(int subLocId, String mac, Point point, String name) {
        final _editWifiFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32, Pointer<Void>, Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, int, Pointer<Void>, Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationEditManager_editWifi__SubLocId_Mac_Point_Name'));
        final _subLocIdHandle = navigine_sdk_flutter_int_ToFfi(subLocId);
        final _macHandle = navigine_sdk_flutter_String_ToFfi(mac);
        final _pointHandle = navigine_sdk_flutter_Point_ToFfi(point);
        final _nameHandle = navigine_sdk_flutter_String_ToFfi(name);
        final _handle = this.handle;
        _editWifiFfi(_handle, _subLocIdHandle, _macHandle, _pointHandle, _nameHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_subLocIdHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_macHandle);
        navigine_sdk_flutter_Point_ReleaseFfiHandle(_pointHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
    }

    @override
    void removeWifi(int subLocId, String mac) {
        final _removeWifiFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32, Pointer<Void>),
            void Function(Pointer<Void>, int, Pointer<Void>)
          >('navigine_sdk_flutter_LocationEditManager_removeWifi__SubLocId_Mac'));
        final _subLocIdHandle = navigine_sdk_flutter_int_ToFfi(subLocId);
        final _macHandle = navigine_sdk_flutter_String_ToFfi(mac);
        final _handle = this.handle;
        _removeWifiFfi(_handle, _subLocIdHandle, _macHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_subLocIdHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_macHandle);
    }

    @override
    void addWifiRtt() {
        final _addWifiRttFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationEditManager_addWifiRtt'));
        final _handle = this.handle;
        _addWifiRttFfi(_handle, );
    }

    @override
    void editWifiRtt() {
        final _editWifiRttFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationEditManager_editWifiRtt'));
        final _handle = this.handle;
        _editWifiRttFfi(_handle, );
    }

    @override
    void removeWifiRtt(int subLocId, String mac) {
        final _removeWifiRttFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32, Pointer<Void>),
            void Function(Pointer<Void>, int, Pointer<Void>)
          >('navigine_sdk_flutter_LocationEditManager_removeWifiRtt__SubLocId_Mac'));
        final _subLocIdHandle = navigine_sdk_flutter_int_ToFfi(subLocId);
        final _macHandle = navigine_sdk_flutter_String_ToFfi(mac);
        final _handle = this.handle;
        _removeWifiRttFfi(_handle, _subLocIdHandle, _macHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_subLocIdHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_macHandle);
    }

    @override
    void addLocationEditListener(LocationEditListener locationEditListener) {
        final _addLocationEditListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationEditManager_addLocationEditListener__LocationEditListener'));
        final _locationEditListenerHandle = navigine_sdk_flutter_LocationEditListener_ToFfi(locationEditListener);
        final _handle = this.handle;
        _addLocationEditListenerFfi(_handle, _locationEditListenerHandle);
        navigine_sdk_flutter_LocationEditListener_ReleaseFfiHandle(_locationEditListenerHandle);
    }

    @override
    void removeLocationEditListener(LocationEditListener locationEditListener) {
        final _removeLocationEditListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationEditManager_removeLocationEditListener__LocationEditListener'));
        final _locationEditListenerHandle = navigine_sdk_flutter_LocationEditListener_ToFfi(locationEditListener);
        final _handle = this.handle;
        _removeLocationEditListenerFfi(_handle, _locationEditListenerHandle);
        navigine_sdk_flutter_LocationEditListener_ReleaseFfiHandle(_locationEditListenerHandle);
    }




}

Pointer<Void> navigine_sdk_flutter_LocationEditManager_ToFfi(LocationEditManager value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_LocationEditManager_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

LocationEditManager navigine_sdk_flutter_LocationEditManager_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_LocationEditManager_CopyHandle(handle);
    final result = LocationEditManager$Impl(_copiedHandle);
    LocationEditManager$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_LocationEditManager_ToFfiNullable(LocationEditManager? value) => 
  value != null ? navigine_sdk_flutter_LocationEditManager_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_LocationEditManager_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_LocationEditManager_ReleaseHandle(handle);

void navigine_sdk_flutter_LocationEditManager_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_LocationEditManager_ReleaseHandle(handle);

LocationEditManager? navigine_sdk_flutter_LocationEditManager_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_LocationEditManager_FromFfi(handle) : null;

// End of LocationEditManager "private" section.
