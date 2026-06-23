part of 'navigation_manager.dart';

// NavigationManager "private" section, not exported.

final _navigine_sdk_flutter_NavigationManager_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_NavigationManager_free');


class NavigationManager$Impl implements NavigationManager, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_NavigationManager_free.cast());

    NavigationManager$Impl.fromExternalPtr(this.ptr);

    @internal
    NavigationManager$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory NavigationManager$Impl.fromNativePtr(Pointer<Void> ptr) =>
        NavigationManager$Impl.fromNativePtrImpl(ptr);


    static Pointer<Void> getNativePtr(NavigationManager? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as NavigationManager$Impl).ptr;
    }

    static NavigationManager? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return NavigationManager$Impl.fromNativePtr(ptr);
    }

    @override
    void addPositionListener(PositionListener listener) {
        final _addPositionListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NavigationManager_addPositionListener__Listener'));
        _addPositionListenerFfi(this.ptr, PositionListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void startLogRecording() {
        final _startLogRecordingFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_NavigationManager_startLogRecording'));
        _startLogRecordingFfi(this.ptr, );
        exception.checkCallResult();
    }

    @override
    void addCheckPoint(LocationPoint point) {
        final _addCheckPointFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, LocationPointNative),
            void Function(Pointer<Void>, LocationPointNative)
          >('navigine_sdk_flutter_NavigationManager_addCheckPoint__Point'));
        _addCheckPointFfi(this.ptr, LocationPointImpl.toNative(point));
        exception.checkCallResult();
    }

    @override
    void stopLogRecording() {
        final _stopLogRecordingFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_NavigationManager_stopLogRecording'));
        _stopLogRecordingFfi(this.ptr, );
        exception.checkCallResult();
    }

    @override
    void addLocationMeasurement(GlobalPoint point, double accuracy, String provider) {
        final _addLocationMeasurementFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, GlobalPointNative, Float, NativeString),
            void Function(Pointer<Void>, GlobalPointNative, double, NativeString)
          >('navigine_sdk_flutter_NavigationManager_addLocationMeasurement__Point_Accuracy_Provider'));
        _addLocationMeasurementFfi(this.ptr, GlobalPointImpl.toNative(point), accuracy, toNativeString(provider));
        exception.checkCallResult();
    }

    @override
    void removePositionListener(PositionListener listener) {
        final _removePositionListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NavigationManager_removePositionListener__Listener'));
        _removePositionListenerFfi(this.ptr, PositionListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }




}

// End of NavigationManager "private" section.
