import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/measurement_listener.dart';

abstract class MeasurementManager implements Finalizable {

    void addMeasurementListener(MeasurementListener listener);

    void removeMeasurementListener(MeasurementListener listener);

    String addBeaconGenerator(String uuid, int major, int minor, int power, int timeout, int rssiMin, int rssiMax);

    String addEddystoneGenerator(String namespaceId, String instanceId, int power, int timeout, int rssiMin, int rssiMax);

    void removeBleGenerators();

    void removeBleGenerator(String id);

    String addWifiGenerator(String mac, int timeout, int rssiMin, int rssiMax);

    void removeWifiGenerator(String id);

    void removeWifiGenerators();

    String addWifiRttGenerator(String mac, int timeout, int distMin, int distMax, int stdDevMin, int stdDevMax, int rssiMin, int rssiMax);

    void removeWifiRttGenerator(String hash);

    void removeWifiRttGenerators();

    String addLocationGenerator(double latMin, double latMax, double lonMin, double lonMax, double accMin, double accMax, int timeout);

    void removeLocationGenerator(String id);

    void removeLocationGenerators();



}

// MeasurementManager "private" section, not exported.

final _navigine_sdk_flutter_MeasurementManager_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_MeasurementManager_copy_handle'));

final _navigine_sdk_flutter_MeasurementManager_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_MeasurementManager_release_handle'));

final _navigine_sdk_flutter_MeasurementManager_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_MeasurementManager_free');

final _navigine_sdk_flutter_MeasurementManager_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_MeasurementManager_create_proxy'));

final _navigine_sdk_flutter_MeasurementManager_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_MeasurementManager_set_ports'));


class MeasurementManager$Impl extends __lib.NativeBase implements MeasurementManager, Finalizable {
    MeasurementManager$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_MeasurementManager_free.cast());

    @override
    void addMeasurementListener(MeasurementListener listener) {
        final _addMeasurementListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_MeasurementManager_addMeasurementListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_MeasurementListener_ToFfi(listener);
        final _handle = this.handle;
        _addMeasurementListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_MeasurementListener_ReleaseFfiHandle(_listenerHandle);
    }

    @override
    void removeMeasurementListener(MeasurementListener listener) {
        final _removeMeasurementListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_MeasurementManager_removeMeasurementListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_MeasurementListener_ToFfi(listener);
        final _handle = this.handle;
        _removeMeasurementListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_MeasurementListener_ReleaseFfiHandle(_listenerHandle);
    }

    @override
    String addBeaconGenerator(String uuid, int major, int minor, int power, int timeout, int rssiMin, int rssiMax) {
        final _addBeaconGeneratorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Int32, Int32, Int32, Int32, Int32, Int32),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, int, int, int, int, int, int)
          >('navigine_sdk_flutter_MeasurementManager_addBeaconGenerator__Uuid_Major_Minor_Power_Timeout_RssiMin_RssiMax'));
        final _uuidHandle = navigine_sdk_flutter_String_ToFfi(uuid);
        final _majorHandle = navigine_sdk_flutter_int_ToFfi(major);
        final _minorHandle = navigine_sdk_flutter_int_ToFfi(minor);
        final _powerHandle = navigine_sdk_flutter_int_ToFfi(power);
        final _timeoutHandle = navigine_sdk_flutter_int_ToFfi(timeout);
        final _rssiMinHandle = navigine_sdk_flutter_int_ToFfi(rssiMin);
        final _rssiMaxHandle = navigine_sdk_flutter_int_ToFfi(rssiMax);
        final _handle = this.handle;
        final __resultHandle = _addBeaconGeneratorFfi(_handle, _uuidHandle, _majorHandle, _minorHandle, _powerHandle, _timeoutHandle, _rssiMinHandle, _rssiMaxHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_uuidHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_majorHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_minorHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_powerHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_timeoutHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_rssiMinHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_rssiMaxHandle);
        try  {
            return navigine_sdk_flutter_String_FromFfi(__resultHandle);
        }
        catch (e, stack)  {
            // todo print stacktrace
            rethrow;
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    String addEddystoneGenerator(String namespaceId, String instanceId, int power, int timeout, int rssiMin, int rssiMax) {
        final _addEddystoneGeneratorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Pointer<Void>, Int32, Int32, Int32, Int32),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Pointer<Void>, int, int, int, int)
          >('navigine_sdk_flutter_MeasurementManager_addEddystoneGenerator__NamespaceId_InstanceId_Power_Timeout_RssiMin_RssiMax'));
        final _namespaceIdHandle = navigine_sdk_flutter_String_ToFfi(namespaceId);
        final _instanceIdHandle = navigine_sdk_flutter_String_ToFfi(instanceId);
        final _powerHandle = navigine_sdk_flutter_int_ToFfi(power);
        final _timeoutHandle = navigine_sdk_flutter_int_ToFfi(timeout);
        final _rssiMinHandle = navigine_sdk_flutter_int_ToFfi(rssiMin);
        final _rssiMaxHandle = navigine_sdk_flutter_int_ToFfi(rssiMax);
        final _handle = this.handle;
        final __resultHandle = _addEddystoneGeneratorFfi(_handle, _namespaceIdHandle, _instanceIdHandle, _powerHandle, _timeoutHandle, _rssiMinHandle, _rssiMaxHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_namespaceIdHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_instanceIdHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_powerHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_timeoutHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_rssiMinHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_rssiMaxHandle);
        try  {
            return navigine_sdk_flutter_String_FromFfi(__resultHandle);
        }
        catch (e, stack)  {
            // todo print stacktrace
            rethrow;
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    void removeBleGenerators() {
        final _removeBleGeneratorsFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_MeasurementManager_removeBleGenerators'));
        final _handle = this.handle;
        _removeBleGeneratorsFfi(_handle, );
    }

    @override
    void removeBleGenerator(String id) {
        final _removeBleGeneratorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_MeasurementManager_removeBleGenerator__Id'));
        final _idHandle = navigine_sdk_flutter_String_ToFfi(id);
        final _handle = this.handle;
        _removeBleGeneratorFfi(_handle, _idHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_idHandle);
    }

    @override
    String addWifiGenerator(String mac, int timeout, int rssiMin, int rssiMax) {
        final _addWifiGeneratorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Int32, Int32, Int32),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, int, int, int)
          >('navigine_sdk_flutter_MeasurementManager_addWifiGenerator__Mac_Timeout_RssiMin_RssiMax'));
        final _macHandle = navigine_sdk_flutter_String_ToFfi(mac);
        final _timeoutHandle = navigine_sdk_flutter_int_ToFfi(timeout);
        final _rssiMinHandle = navigine_sdk_flutter_int_ToFfi(rssiMin);
        final _rssiMaxHandle = navigine_sdk_flutter_int_ToFfi(rssiMax);
        final _handle = this.handle;
        final __resultHandle = _addWifiGeneratorFfi(_handle, _macHandle, _timeoutHandle, _rssiMinHandle, _rssiMaxHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_macHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_timeoutHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_rssiMinHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_rssiMaxHandle);
        try  {
            return navigine_sdk_flutter_String_FromFfi(__resultHandle);
        }
        catch (e, stack)  {
            // todo print stacktrace
            rethrow;
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    void removeWifiGenerator(String id) {
        final _removeWifiGeneratorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_MeasurementManager_removeWifiGenerator__Id'));
        final _idHandle = navigine_sdk_flutter_String_ToFfi(id);
        final _handle = this.handle;
        _removeWifiGeneratorFfi(_handle, _idHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_idHandle);
    }

    @override
    void removeWifiGenerators() {
        final _removeWifiGeneratorsFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_MeasurementManager_removeWifiGenerators'));
        final _handle = this.handle;
        _removeWifiGeneratorsFfi(_handle, );
    }

    @override
    String addWifiRttGenerator(String mac, int timeout, int distMin, int distMax, int stdDevMin, int stdDevMax, int rssiMin, int rssiMax) {
        final _addWifiRttGeneratorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Int32, Int32, Int32, Int32, Int32, Int32, Int32),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, int, int, int, int, int, int, int)
          >('navigine_sdk_flutter_MeasurementManager_addWifiRttGenerator__Mac_Timeout_DistMin_DistMax_StdDevMin_StdDevMax_RssiMin_RssiMax'));
        final _macHandle = navigine_sdk_flutter_String_ToFfi(mac);
        final _timeoutHandle = navigine_sdk_flutter_int_ToFfi(timeout);
        final _distMinHandle = navigine_sdk_flutter_int_ToFfi(distMin);
        final _distMaxHandle = navigine_sdk_flutter_int_ToFfi(distMax);
        final _stdDevMinHandle = navigine_sdk_flutter_int_ToFfi(stdDevMin);
        final _stdDevMaxHandle = navigine_sdk_flutter_int_ToFfi(stdDevMax);
        final _rssiMinHandle = navigine_sdk_flutter_int_ToFfi(rssiMin);
        final _rssiMaxHandle = navigine_sdk_flutter_int_ToFfi(rssiMax);
        final _handle = this.handle;
        final __resultHandle = _addWifiRttGeneratorFfi(_handle, _macHandle, _timeoutHandle, _distMinHandle, _distMaxHandle, _stdDevMinHandle, _stdDevMaxHandle, _rssiMinHandle, _rssiMaxHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_macHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_timeoutHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_distMinHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_distMaxHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_stdDevMinHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_stdDevMaxHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_rssiMinHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_rssiMaxHandle);
        try  {
            return navigine_sdk_flutter_String_FromFfi(__resultHandle);
        }
        catch (e, stack)  {
            // todo print stacktrace
            rethrow;
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    void removeWifiRttGenerator(String hash) {
        final _removeWifiRttGeneratorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_MeasurementManager_removeWifiRttGenerator__Hash'));
        final _hashHandle = navigine_sdk_flutter_String_ToFfi(hash);
        final _handle = this.handle;
        _removeWifiRttGeneratorFfi(_handle, _hashHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_hashHandle);
    }

    @override
    void removeWifiRttGenerators() {
        final _removeWifiRttGeneratorsFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_MeasurementManager_removeWifiRttGenerators'));
        final _handle = this.handle;
        _removeWifiRttGeneratorsFfi(_handle, );
    }

    @override
    String addLocationGenerator(double latMin, double latMax, double lonMin, double lonMax, double accMin, double accMax, int timeout) {
        final _addLocationGeneratorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Double, Double, Double, Double, Double, Double, Int32),
            Pointer<Void> Function(Pointer<Void>, double, double, double, double, double, double, int)
          >('navigine_sdk_flutter_MeasurementManager_addLocationGenerator__LatMin_LatMax_LonMin_LonMax_AccMin_AccMax_Timeout'));
        final _latMinHandle = navigine_sdk_flutter_double_ToFfi(latMin);
        final _latMaxHandle = navigine_sdk_flutter_double_ToFfi(latMax);
        final _lonMinHandle = navigine_sdk_flutter_double_ToFfi(lonMin);
        final _lonMaxHandle = navigine_sdk_flutter_double_ToFfi(lonMax);
        final _accMinHandle = navigine_sdk_flutter_double_ToFfi(accMin);
        final _accMaxHandle = navigine_sdk_flutter_double_ToFfi(accMax);
        final _timeoutHandle = navigine_sdk_flutter_int_ToFfi(timeout);
        final _handle = this.handle;
        final __resultHandle = _addLocationGeneratorFfi(_handle, _latMinHandle, _latMaxHandle, _lonMinHandle, _lonMaxHandle, _accMinHandle, _accMaxHandle, _timeoutHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_latMinHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_latMaxHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_lonMinHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_lonMaxHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_accMinHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_accMaxHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_timeoutHandle);
        try  {
            return navigine_sdk_flutter_String_FromFfi(__resultHandle);
        }
        catch (e, stack)  {
            // todo print stacktrace
            rethrow;
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    void removeLocationGenerator(String id) {
        final _removeLocationGeneratorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_MeasurementManager_removeLocationGenerator__Id'));
        final _idHandle = navigine_sdk_flutter_String_ToFfi(id);
        final _handle = this.handle;
        _removeLocationGeneratorFfi(_handle, _idHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_idHandle);
    }

    @override
    void removeLocationGenerators() {
        final _removeLocationGeneratorsFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_MeasurementManager_removeLocationGenerators'));
        final _handle = this.handle;
        _removeLocationGeneratorsFfi(_handle, );
    }




}

Pointer<Void> navigine_sdk_flutter_MeasurementManager_ToFfi(MeasurementManager value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_MeasurementManager_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

MeasurementManager navigine_sdk_flutter_MeasurementManager_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_MeasurementManager_CopyHandle(handle);
    final result = MeasurementManager$Impl(_copiedHandle);
    MeasurementManager$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_MeasurementManager_ToFfiNullable(MeasurementManager? value) => 
  value != null ? navigine_sdk_flutter_MeasurementManager_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_MeasurementManager_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_MeasurementManager_ReleaseHandle(handle);

void navigine_sdk_flutter_MeasurementManager_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_MeasurementManager_ReleaseHandle(handle);

MeasurementManager? navigine_sdk_flutter_MeasurementManager_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_MeasurementManager_FromFfi(handle) : null;

// End of MeasurementManager "private" section.
