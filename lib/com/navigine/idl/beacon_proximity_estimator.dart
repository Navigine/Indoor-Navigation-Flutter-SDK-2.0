import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/beacon_proximity_estimator_listener.dart';

abstract class BeaconProximityEstimator implements Finalizable {

    void start();

    void stop();

    void pause();

    void resume();

    void addListener(BeaconProximityEstimatorListener listener);

    void removeListener(BeaconProximityEstimatorListener listener);



}

// BeaconProximityEstimator "private" section, not exported.

final _navigine_sdk_flutter_BeaconProximityEstimator_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_BeaconProximityEstimator_copy_handle'));

final _navigine_sdk_flutter_BeaconProximityEstimator_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_BeaconProximityEstimator_release_handle'));

final _navigine_sdk_flutter_BeaconProximityEstimator_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_BeaconProximityEstimator_free');

final _navigine_sdk_flutter_BeaconProximityEstimator_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer, Pointer, Pointer, Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer, Pointer, Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_BeaconProximityEstimator_create_proxy'));

final _navigine_sdk_flutter_BeaconProximityEstimator_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_BeaconProximityEstimator_set_ports'));


class BeaconProximityEstimator$Impl extends __lib.NativeBase implements BeaconProximityEstimator, Finalizable {
    BeaconProximityEstimator$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_BeaconProximityEstimator_free.cast());

    @override
    void start() {
        final _startFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_BeaconProximityEstimator_start'));
        final _handle = this.handle;
        _startFfi(_handle, );
    }

    @override
    void stop() {
        final _stopFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_BeaconProximityEstimator_stop'));
        final _handle = this.handle;
        _stopFfi(_handle, );
    }

    @override
    void pause() {
        final _pauseFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_BeaconProximityEstimator_pause'));
        final _handle = this.handle;
        _pauseFfi(_handle, );
    }

    @override
    void resume() {
        final _resumeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_BeaconProximityEstimator_resume'));
        final _handle = this.handle;
        _resumeFfi(_handle, );
    }

    @override
    void addListener(BeaconProximityEstimatorListener listener) {
        final _addListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_BeaconProximityEstimator_addListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_BeaconProximityEstimatorListener_ToFfi(listener);
        final _handle = this.handle;
        _addListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_BeaconProximityEstimatorListener_ReleaseFfiHandle(_listenerHandle);
    }

    @override
    void removeListener(BeaconProximityEstimatorListener listener) {
        final _removeListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_BeaconProximityEstimator_removeListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_BeaconProximityEstimatorListener_ToFfi(listener);
        final _handle = this.handle;
        _removeListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_BeaconProximityEstimatorListener_ReleaseFfiHandle(_listenerHandle);
    }




}

Pointer<Void> navigine_sdk_flutter_BeaconProximityEstimator_ToFfi(BeaconProximityEstimator value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_BeaconProximityEstimator_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

BeaconProximityEstimator navigine_sdk_flutter_BeaconProximityEstimator_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_BeaconProximityEstimator_CopyHandle(handle);
    final result = BeaconProximityEstimator$Impl(_copiedHandle);
    BeaconProximityEstimator$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_BeaconProximityEstimator_ToFfiNullable(BeaconProximityEstimator? value) => 
  value != null ? navigine_sdk_flutter_BeaconProximityEstimator_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_BeaconProximityEstimator_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_BeaconProximityEstimator_ReleaseHandle(handle);

void navigine_sdk_flutter_BeaconProximityEstimator_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_BeaconProximityEstimator_ReleaseHandle(handle);

BeaconProximityEstimator? navigine_sdk_flutter_BeaconProximityEstimator_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_BeaconProximityEstimator_FromFfi(handle) : null;

// End of BeaconProximityEstimator "private" section.
