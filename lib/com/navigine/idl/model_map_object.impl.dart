part of 'model_map_object.dart';

// ModelMapObject "private" section, not exported.

final _navigine_sdk_flutter_ModelMapObject_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_ModelMapObject_check'));

final _navigine_sdk_flutter_ModelMapObject_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_ModelMapObject_free');


class ModelMapObject$Impl implements ModelMapObject, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_ModelMapObject_free.cast());

    ModelMapObject$Impl.fromExternalPtr(this.ptr);

    @internal
    ModelMapObject$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory ModelMapObject$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_ModelMapObject_check(ptr);

    static Pointer<Void> getNativePtr(ModelMapObject? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as ModelMapObject$Impl).ptr;
    }

    static ModelMapObject? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return ModelMapObject$Impl.fromNativePtr(ptr);
    }

    // MapObject methods
    @override
    int getId() {
        final _getIdFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>, ),
            int Function(Pointer<Void>, )
          >('navigine_sdk_flutter_MapObject_getId'));
        final __resultHandle = _getIdFfi(this.ptr, );
        final _result = __resultHandle;
        exception.checkCallResult();
        return _result;
    }

    @override
    MapObjectType getType() {
        final _getTypeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint32 Function(Pointer<Void>, ),
            int Function(Pointer<Void>, )
          >('navigine_sdk_flutter_MapObject_getType'));
        final __resultHandle = _getTypeFfi(this.ptr, );
        final _result = MapObjectTypeImpl.fromInt(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    Uint8List getData() {
        final _getDataFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeBytes Function(Pointer<Void>, ),
            NativeBytes Function(Pointer<Void>, )
          >('navigine_sdk_flutter_MapObject_getData'));
        final __resultHandle = _getDataFfi(this.ptr, );
        final _result = toPlatformBytes(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setVisible(bool visible) {
        final _setVisibleFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Uint8),
            int Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_MapObject_setVisible__Visible'));
        final __resultHandle = _setVisibleFfi(this.ptr, (visible ? 1 : 0));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setInteractive(bool interactive) {
        final _setInteractiveFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Uint8),
            int Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_MapObject_setInteractive__Interactive'));
        final __resultHandle = _setInteractiveFfi(this.ptr, (interactive ? 1 : 0));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    void setData(Uint8List data) {
        final _setDataFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, NativeBytes),
            void Function(Pointer<Void>, NativeBytes)
          >('navigine_sdk_flutter_MapObject_setData__Data'));
        _setDataFfi(this.ptr, toNativeBytes(data));
        exception.checkCallResult();
    }

    @override
    bool setTitle(String title) {
        final _setTitleFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, NativeString),
            int Function(Pointer<Void>, NativeString)
          >('navigine_sdk_flutter_MapObject_setTitle__Title'));
        final __resultHandle = _setTitleFfi(this.ptr, toNativeString(title));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setAlpha(double alpha) {
        final _setAlphaFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_MapObject_setAlpha__Alpha'));
        final __resultHandle = _setAlphaFfi(this.ptr, alpha);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }


    @override
    bool setPosition(LocationPoint point) {
        final _setPositionFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, LocationPointNative),
            int Function(Pointer<Void>, LocationPointNative)
          >('navigine_sdk_flutter_ModelMapObject_setPosition__Point'));
        final __resultHandle = _setPositionFfi(this.ptr, LocationPointImpl.toNative(point));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setPositionAnimated(LocationPoint point, double duration, AnimationType type) {
        final _setPositionAnimatedFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, LocationPointNative, Float, Uint32),
            int Function(Pointer<Void>, LocationPointNative, double, int)
          >('navigine_sdk_flutter_ModelMapObject_setPositionAnimated__Point_Duration_Type'));
        final __resultHandle = _setPositionAnimatedFfi(this.ptr, LocationPointImpl.toNative(point), duration, AnimationTypeImpl.toInt(type));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setModel(ModelProvider model) {
        final _setModelFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_ModelMapObject_setModel__Model'));
        final _modelHandle = ModelProviderImpl.getNativePtr(model);
        final __resultHandle = _setModelFfi(this.ptr, _modelHandle);
        ModelProviderImpl.releaseNativePtr(_modelHandle);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setSize(double width, double height) {
        final _setSizeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float, Float),
            int Function(Pointer<Void>, double, double)
          >('navigine_sdk_flutter_ModelMapObject_setSize__Width_Height'));
        final __resultHandle = _setSizeFfi(this.ptr, width, height);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setCollisionEnabled(bool enabled) {
        final _setCollisionEnabledFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Uint8),
            int Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_ModelMapObject_setCollisionEnabled__Enabled'));
        final __resultHandle = _setCollisionEnabledFfi(this.ptr, (enabled ? 1 : 0));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setAngle(double angle) {
        final _setAngleFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_ModelMapObject_setAngle__Angle'));
        final __resultHandle = _setAngleFfi(this.ptr, angle);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setAngleAnimated(double angle, double duration, AnimationType type) {
        final _setAngleAnimatedFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float, Float, Uint32),
            int Function(Pointer<Void>, double, double, int)
          >('navigine_sdk_flutter_ModelMapObject_setAngleAnimated__Angle_Duration_Type'));
        final __resultHandle = _setAngleAnimatedFfi(this.ptr, angle, duration, AnimationTypeImpl.toInt(type));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setBuffer(double width, double height) {
        final _setBufferFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float, Float),
            int Function(Pointer<Void>, double, double)
          >('navigine_sdk_flutter_ModelMapObject_setBuffer__Width_Height'));
        final __resultHandle = _setBufferFfi(this.ptr, width, height);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setPriority(double priority) {
        final _setPriorityFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_ModelMapObject_setPriority__Priority'));
        final __resultHandle = _setPriorityFfi(this.ptr, priority);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }




}

// End of ModelMapObject "private" section.
