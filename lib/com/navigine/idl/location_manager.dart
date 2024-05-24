import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/location_listener.dart';

abstract class LocationManager implements Finalizable {

    void addLocationListener(LocationListener listener);
    void removeLocationListener(LocationListener listener);
    void setLocationId(int locationId);
    int getLocationId();
    void setLocationUpdateInterval(int interval);
    void commitChanges();
    void revertChanges();



}

// LocationManager "private" section, not exported.

final _navigine_sdk_flutter_LocationManager_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationManager_copy_handle'));

final _navigine_sdk_flutter_LocationManager_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationManager_release_handle'));

final _navigine_sdk_flutter_LocationManager_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_LocationManager_free');

final _navigine_sdk_flutter_LocationManager_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_LocationManager_create_proxy'));

final _navigine_sdk_flutter_LocationManager_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_LocationManager_set_ports'));


class LocationManager$Impl extends __lib.NativeBase implements LocationManager, Finalizable {
    LocationManager$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_LocationManager_free.cast());

    @override
    void addLocationListener(LocationListener listener) {
        final _addLocationListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationManager_addLocationListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_LocationListener_ToFfi(listener);
        final _handle = this.handle;
        _addLocationListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_LocationListener_ReleaseFfiHandle(_listenerHandle);
    }

    @override
    void removeLocationListener(LocationListener listener) {
        final _removeLocationListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationManager_removeLocationListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_LocationListener_ToFfi(listener);
        final _handle = this.handle;
        _removeLocationListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_LocationListener_ReleaseFfiHandle(_listenerHandle);
    }

    @override
    void setLocationId(int locationId) {
        final _setLocationIdFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_LocationManager_setLocationId__LocationId'));
        final _locationIdHandle = navigine_sdk_flutter_int_ToFfi(locationId);
        final _handle = this.handle;
        _setLocationIdFfi(_handle, _locationIdHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_locationIdHandle);
    }

    @override
    int getLocationId() {
        final _getLocationIdFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>, ),
            int Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationManager_getLocationId'));
        final _handle = this.handle;
        final __resultHandle = _getLocationIdFfi(_handle, );
        try  {
            return navigine_sdk_flutter_int_FromFfi(__resultHandle);
        }
        catch (e, stack)  {
            // todo print stacktrace
            rethrow;
        }
        finally  {
            navigine_sdk_flutter_int_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    void setLocationUpdateInterval(int interval) {
        final _setLocationUpdateIntervalFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_LocationManager_setLocationUpdateInterval__Interval'));
        final _intervalHandle = navigine_sdk_flutter_int_ToFfi(interval);
        final _handle = this.handle;
        _setLocationUpdateIntervalFfi(_handle, _intervalHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_intervalHandle);
    }

    @override
    void commitChanges() {
        final _commitChangesFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationManager_commitChanges'));
        final _handle = this.handle;
        _commitChangesFfi(_handle, );
    }

    @override
    void revertChanges() {
        final _revertChangesFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationManager_revertChanges'));
        final _handle = this.handle;
        _revertChangesFfi(_handle, );
    }




}

Pointer<Void> navigine_sdk_flutter_LocationManager_ToFfi(LocationManager value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_LocationManager_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

LocationManager navigine_sdk_flutter_LocationManager_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_LocationManager_CopyHandle(handle);
    final result = LocationManager$Impl(_copiedHandle);
    LocationManager$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_LocationManager_ToFfiNullable(LocationManager? value) => 
  value != null ? navigine_sdk_flutter_LocationManager_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_LocationManager_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_LocationManager_ReleaseHandle(handle);

void navigine_sdk_flutter_LocationManager_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_LocationManager_ReleaseHandle(handle);

LocationManager? navigine_sdk_flutter_LocationManager_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_LocationManager_FromFfi(handle) : null;

// End of LocationManager "private" section.
