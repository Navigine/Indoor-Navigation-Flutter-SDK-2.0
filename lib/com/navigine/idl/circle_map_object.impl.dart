part of 'circle_map_object.dart';

// CircleMapObject "private" section, not exported.

final _navigine_sdk_flutter_CircleMapObject_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_CircleMapObject_check'));

final _navigine_sdk_flutter_CircleMapObject_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_CircleMapObject_free');


class CircleMapObject$Impl implements CircleMapObject, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_CircleMapObject_free.cast());

    CircleMapObject$Impl.fromExternalPtr(this.ptr);

    @internal
    CircleMapObject$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory CircleMapObject$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_CircleMapObject_check(ptr);

    static Pointer<Void> getNativePtr(CircleMapObject? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as CircleMapObject$Impl).ptr;
    }

    static CircleMapObject? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return CircleMapObject$Impl.fromNativePtr(ptr);
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
          >('navigine_sdk_flutter_CircleMapObject_setPosition__Point'));
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
          >('navigine_sdk_flutter_CircleMapObject_setPositionAnimated__Point_Duration_Type'));
        final __resultHandle = _setPositionAnimatedFfi(this.ptr, LocationPointImpl.toNative(point), duration, AnimationTypeImpl.toInt(type));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setColor(double red, double green, double blue, double alpha) {
        final _setColorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float, Float, Float, Float),
            int Function(Pointer<Void>, double, double, double, double)
          >('navigine_sdk_flutter_CircleMapObject_setColor__Red_Green_Blue_Alpha'));
        final __resultHandle = _setColorFfi(this.ptr, red, green, blue, alpha);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setRadius(double radius) {
        final _setRadiusFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_CircleMapObject_setRadius__Radius'));
        final __resultHandle = _setRadiusFfi(this.ptr, radius);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setCollisionEnabled(bool enabled) {
        final _setCollisionEnabledFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Uint8),
            int Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_CircleMapObject_setCollisionEnabled__Enabled'));
        final __resultHandle = _setCollisionEnabledFfi(this.ptr, (enabled ? 1 : 0));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setBuffer(double width, double height) {
        final _setBufferFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float, Float),
            int Function(Pointer<Void>, double, double)
          >('navigine_sdk_flutter_CircleMapObject_setBuffer__Width_Height'));
        final __resultHandle = _setBufferFfi(this.ptr, width, height);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setOffset(double width, double height) {
        final _setOffsetFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float, Float),
            int Function(Pointer<Void>, double, double)
          >('navigine_sdk_flutter_CircleMapObject_setOffset__Width_Height'));
        final __resultHandle = _setOffsetFfi(this.ptr, width, height);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setPriority(double priority) {
        final _setPriorityFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_CircleMapObject_setPriority__Priority'));
        final __resultHandle = _setPriorityFfi(this.ptr, priority);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setOutlineColor(double red, double green, double blue, double alpha) {
        final _setOutlineColorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float, Float, Float, Float),
            int Function(Pointer<Void>, double, double, double, double)
          >('navigine_sdk_flutter_CircleMapObject_setOutlineColor__Red_Green_Blue_Alpha'));
        final __resultHandle = _setOutlineColorFfi(this.ptr, red, green, blue, alpha);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setOutlineRadius(double radius) {
        final _setOutlineRadiusFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_CircleMapObject_setOutlineRadius__Radius'));
        final __resultHandle = _setOutlineRadiusFfi(this.ptr, radius);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setOutlineAlpha(double alpha) {
        final _setOutlineAlphaFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_CircleMapObject_setOutlineAlpha__Alpha'));
        final __resultHandle = _setOutlineAlphaFfi(this.ptr, alpha);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }




}

// End of CircleMapObject "private" section.
