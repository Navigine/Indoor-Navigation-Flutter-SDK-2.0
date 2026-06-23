part of 'polygon_map_object.dart';

// PolygonMapObject "private" section, not exported.

final _navigine_sdk_flutter_PolygonMapObject_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_PolygonMapObject_check'));

final _navigine_sdk_flutter_PolygonMapObject_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_PolygonMapObject_free');


class PolygonMapObject$Impl implements PolygonMapObject, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_PolygonMapObject_free.cast());

    PolygonMapObject$Impl.fromExternalPtr(this.ptr);

    @internal
    PolygonMapObject$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory PolygonMapObject$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_PolygonMapObject_check(ptr);

    static Pointer<Void> getNativePtr(PolygonMapObject? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as PolygonMapObject$Impl).ptr;
    }

    static PolygonMapObject? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return PolygonMapObject$Impl.fromNativePtr(ptr);
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
    bool setPolygon(LocationPolygon polygon) {
        final _setPolygonFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, LocationPolygonNative),
            int Function(Pointer<Void>, LocationPolygonNative)
          >('navigine_sdk_flutter_PolygonMapObject_setPolygon__Polygon'));
        final __resultHandle = _setPolygonFfi(this.ptr, LocationPolygonImpl.toNative(polygon));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setColor(double red, double green, double blue, double alpha) {
        final _setColorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float, Float, Float, Float),
            int Function(Pointer<Void>, double, double, double, double)
          >('navigine_sdk_flutter_PolygonMapObject_setColor__Red_Green_Blue_Alpha'));
        final __resultHandle = _setColorFfi(this.ptr, red, green, blue, alpha);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setOrder(int order) {
        final _setOrderFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Int32),
            int Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_PolygonMapObject_setOrder__Order'));
        final __resultHandle = _setOrderFfi(this.ptr, order);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }




}

// End of PolygonMapObject "private" section.
