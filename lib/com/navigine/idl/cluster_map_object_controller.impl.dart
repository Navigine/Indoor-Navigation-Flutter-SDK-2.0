part of 'cluster_map_object_controller.dart';

// ClusterMapObjectController "private" section, not exported.

final _navigine_sdk_flutter_ClusterMapObjectController_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_ClusterMapObjectController_check'));

final _navigine_sdk_flutter_ClusterMapObjectController_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_ClusterMapObjectController_free');


class ClusterMapObjectController$Impl implements ClusterMapObjectController, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_ClusterMapObjectController_free.cast());

    ClusterMapObjectController$Impl.fromExternalPtr(this.ptr);

    @internal
    ClusterMapObjectController$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory ClusterMapObjectController$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_ClusterMapObjectController_check(ptr);

    static Pointer<Void> getNativePtr(ClusterMapObjectController? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as ClusterMapObjectController$Impl).ptr;
    }

    static ClusterMapObjectController? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return ClusterMapObjectController$Impl.fromNativePtr(ptr);
    }

    @override
    bool addIconMapObject(IconMapObject iconMapObject) {
        final _addIconMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_ClusterMapObjectController_addIconMapObject__IconMapObject'));
        final __resultHandle = _addIconMapObjectFfi(this.ptr, IconMapObject$Impl.getNativePtr(iconMapObject));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool removeIconMapObject(IconMapObject iconMapObject) {
        final _removeIconMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_ClusterMapObjectController_removeIconMapObject__IconMapObject'));
        final __resultHandle = _removeIconMapObjectFfi(this.ptr, IconMapObject$Impl.getNativePtr(iconMapObject));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    void clear() {
        final _clearFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_ClusterMapObjectController_clear'));
        _clearFfi(this.ptr, );
        exception.checkCallResult();
    }

    @override
    void setEnabled(bool enabled) {
        final _setEnabledFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Uint8),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_ClusterMapObjectController_setEnabled__Enabled'));
        _setEnabledFfi(this.ptr, (enabled ? 1 : 0));
        exception.checkCallResult();
    }

    @override
    bool isEnabled() {
        final _isEnabledFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, ),
            int Function(Pointer<Void>, )
          >('navigine_sdk_flutter_ClusterMapObjectController_isEnabled'));
        final __resultHandle = _isEnabledFfi(this.ptr, );
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    void setRadius(double radius) {
        final _setRadiusFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Float),
            void Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_ClusterMapObjectController_setRadius__Radius'));
        _setRadiusFfi(this.ptr, radius);
        exception.checkCallResult();
    }

    @override
    double getRadius() {
        final _getRadiusFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>, ),
            double Function(Pointer<Void>, )
          >('navigine_sdk_flutter_ClusterMapObjectController_getRadius'));
        final __resultHandle = _getRadiusFfi(this.ptr, );
        final _result = __resultHandle;
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setInteractive(bool interactive) {
        final _setInteractiveFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Uint8),
            int Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_ClusterMapObjectController_setInteractive__Interactive'));
        final __resultHandle = _setInteractiveFfi(this.ptr, (interactive ? 1 : 0));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setClusterSize(double width, double height) {
        final _setClusterSizeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float, Float),
            int Function(Pointer<Void>, double, double)
          >('navigine_sdk_flutter_ClusterMapObjectController_setClusterSize__Width_Height'));
        final __resultHandle = _setClusterSizeFfi(this.ptr, width, height);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    void addListener(ClusterMapObjectControllerListener listener) {
        final _addListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_ClusterMapObjectController_addListener__Listener'));
        _addListenerFfi(this.ptr, ClusterMapObjectControllerListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void removeListener(ClusterMapObjectControllerListener listener) {
        final _removeListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_ClusterMapObjectController_removeListener__Listener'));
        _removeListenerFfi(this.ptr, ClusterMapObjectControllerListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    List<ClusterMapObject> getClusters() {
        final _getClustersFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_ClusterMapObjectController_getClusters'));
        final __resultHandle = _getClustersFfi(this.ptr, );
        final _result = ListClusterMapObjectImpl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }




}

// End of ClusterMapObjectController "private" section.
