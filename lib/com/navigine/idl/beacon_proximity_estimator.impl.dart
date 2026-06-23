part of 'beacon_proximity_estimator.dart';

// BeaconProximityEstimator "private" section, not exported.

final _navigine_sdk_flutter_BeaconProximityEstimator_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_BeaconProximityEstimator_free');


class BeaconProximityEstimator$Impl implements BeaconProximityEstimator, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_BeaconProximityEstimator_free.cast());

    BeaconProximityEstimator$Impl.fromExternalPtr(this.ptr);

    @internal
    BeaconProximityEstimator$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory BeaconProximityEstimator$Impl.fromNativePtr(Pointer<Void> ptr) =>
        BeaconProximityEstimator$Impl.fromNativePtrImpl(ptr);


    static Pointer<Void> getNativePtr(BeaconProximityEstimator? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as BeaconProximityEstimator$Impl).ptr;
    }

    static BeaconProximityEstimator? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return BeaconProximityEstimator$Impl.fromNativePtr(ptr);
    }

    @override
    void start() {
        final _startFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_BeaconProximityEstimator_start'));
        _startFfi(this.ptr, );
        exception.checkCallResult();
    }

    @override
    void stop() {
        final _stopFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_BeaconProximityEstimator_stop'));
        _stopFfi(this.ptr, );
        exception.checkCallResult();
    }

    @override
    void pause() {
        final _pauseFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_BeaconProximityEstimator_pause'));
        _pauseFfi(this.ptr, );
        exception.checkCallResult();
    }

    @override
    void resume() {
        final _resumeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_BeaconProximityEstimator_resume'));
        _resumeFfi(this.ptr, );
        exception.checkCallResult();
    }

    @override
    void addListener(BeaconProximityEstimatorListener listener) {
        final _addListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_BeaconProximityEstimator_addListener__Listener'));
        _addListenerFfi(this.ptr, BeaconProximityEstimatorListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void removeListener(BeaconProximityEstimatorListener listener) {
        final _removeListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_BeaconProximityEstimator_removeListener__Listener'));
        _removeListenerFfi(this.ptr, BeaconProximityEstimatorListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }




}

// End of BeaconProximityEstimator "private" section.
