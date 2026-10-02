part of 'route_simulator.dart';

// RouteSimulator "private" section, not exported.

final _navigine_sdk_flutter_RouteSimulator_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteSimulator_check'));

final _navigine_sdk_flutter_RouteSimulator_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_RouteSimulator_free');


class RouteSimulator$Impl implements RouteSimulator, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_RouteSimulator_free.cast());

    RouteSimulator$Impl.fromExternalPtr(this.ptr);

    @internal
    RouteSimulator$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory RouteSimulator$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_RouteSimulator_check(ptr);

    static Pointer<Void> getNativePtr(RouteSimulator? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as RouteSimulator$Impl).ptr;
    }

    static RouteSimulator? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return RouteSimulator$Impl.fromNativePtr(ptr);
    }

    @override
    bool setGeometry(List<LocationPolyline> polylines) {
        final _setGeometryFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_RouteSimulator_setGeometry__Polylines'));
        final __resultHandle = _setGeometryFfi(this.ptr, ListLocationPolylineImpl.getNativePtr(polylines));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    void setSpeed(double metersPerSecond) {
        final _setSpeedFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Float),
            void Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_RouteSimulator_setSpeed__MetersPerSecond'));
        _setSpeedFfi(this.ptr, metersPerSecond);
        exception.checkCallResult();
    }

    @override
    double speed() {
        final _speedFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>, ),
            double Function(Pointer<Void>, )
          >('navigine_sdk_flutter_RouteSimulator_speed'));
        final __resultHandle = _speedFfi(this.ptr, );
        final _result = __resultHandle;
        exception.checkCallResult();
        return _result;
    }

    @override
    bool start() {
        final _startFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, ),
            int Function(Pointer<Void>, )
          >('navigine_sdk_flutter_RouteSimulator_start'));
        final __resultHandle = _startFfi(this.ptr, );
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    void stop() {
        final _stopFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_RouteSimulator_stop'));
        _stopFfi(this.ptr, );
        exception.checkCallResult();
    }

    @override
    bool active() {
        final _activeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, ),
            int Function(Pointer<Void>, )
          >('navigine_sdk_flutter_RouteSimulator_active'));
        final __resultHandle = _activeFfi(this.ptr, );
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    RouteSimulatorSample? sample() {
        final _sampleFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_RouteSimulator_sample'));
        final __resultHandle = _sampleFfi(this.ptr, );
        final _result = RouteSimulatorSampleImpl.fromPointer(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    void addListener(RouteSimulatorListener listener) {
        final _addListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_RouteSimulator_addListener__Listener'));
        _addListenerFfi(this.ptr, RouteSimulatorListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void removeListener(RouteSimulatorListener listener) {
        final _removeListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_RouteSimulator_removeListener__Listener'));
        _removeListenerFfi(this.ptr, RouteSimulatorListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }




}

// End of RouteSimulator "private" section.
