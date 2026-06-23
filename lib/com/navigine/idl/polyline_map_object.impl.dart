part of 'polyline_map_object.dart';

// PolylineMapObject "private" section, not exported.

final _navigine_sdk_flutter_PolylineMapObject_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_PolylineMapObject_check'));

final _navigine_sdk_flutter_PolylineMapObject_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_PolylineMapObject_free');


class PolylineMapObject$Impl implements PolylineMapObject, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_PolylineMapObject_free.cast());

    PolylineMapObject$Impl.fromExternalPtr(this.ptr);

    @internal
    PolylineMapObject$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory PolylineMapObject$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_PolylineMapObject_check(ptr);

    static Pointer<Void> getNativePtr(PolylineMapObject? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as PolylineMapObject$Impl).ptr;
    }

    static PolylineMapObject? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return PolylineMapObject$Impl.fromNativePtr(ptr);
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
    bool setPolyLine(LocationPolyline polyline) {
        final _setPolyLineFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, LocationPolylineNative),
            int Function(Pointer<Void>, LocationPolylineNative)
          >('navigine_sdk_flutter_PolylineMapObject_setPolyLine__Polyline'));
        final __resultHandle = _setPolyLineFfi(this.ptr, LocationPolylineImpl.toNative(polyline));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setWidth(double width) {
        final _setWidthFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_PolylineMapObject_setWidth__Width'));
        final __resultHandle = _setWidthFfi(this.ptr, width);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setColor(double red, double green, double blue, double alpha) {
        final _setColorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float, Float, Float, Float),
            int Function(Pointer<Void>, double, double, double, double)
          >('navigine_sdk_flutter_PolylineMapObject_setColor__Red_Green_Blue_Alpha'));
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
          >('navigine_sdk_flutter_PolylineMapObject_setOrder__Order'));
        final __resultHandle = _setOrderFfi(this.ptr, order);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setCapType(CapType cap) {
        final _setCapTypeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Uint32),
            int Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_PolylineMapObject_setCapType__Cap'));
        final __resultHandle = _setCapTypeFfi(this.ptr, CapTypeImpl.toInt(cap));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setJoinType(JoinType join) {
        final _setJoinTypeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Uint32),
            int Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_PolylineMapObject_setJoinType__Join'));
        final __resultHandle = _setJoinTypeFfi(this.ptr, JoinTypeImpl.toInt(join));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setMiterLimit(double miterLimit) {
        final _setMiterLimitFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_PolylineMapObject_setMiterLimit__MiterLimit'));
        final __resultHandle = _setMiterLimitFfi(this.ptr, miterLimit);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setOutlineColor(double red, double green, double blue, double alpha) {
        final _setOutlineColorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float, Float, Float, Float),
            int Function(Pointer<Void>, double, double, double, double)
          >('navigine_sdk_flutter_PolylineMapObject_setOutlineColor__Red_Green_Blue_Alpha'));
        final __resultHandle = _setOutlineColorFfi(this.ptr, red, green, blue, alpha);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setOutlineWidth(double radius) {
        final _setOutlineWidthFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_PolylineMapObject_setOutlineWidth__Radius'));
        final __resultHandle = _setOutlineWidthFfi(this.ptr, radius);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setOutlineAlpha(double alpha) {
        final _setOutlineAlphaFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_PolylineMapObject_setOutlineAlpha__Alpha'));
        final __resultHandle = _setOutlineAlphaFfi(this.ptr, alpha);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setOutlineCapType(CapType cap) {
        final _setOutlineCapTypeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Uint32),
            int Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_PolylineMapObject_setOutlineCapType__Cap'));
        final __resultHandle = _setOutlineCapTypeFfi(this.ptr, CapTypeImpl.toInt(cap));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setOutlineJoinType(JoinType join) {
        final _setOutlineJoinTypeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Uint32),
            int Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_PolylineMapObject_setOutlineJoinType__Join'));
        final __resultHandle = _setOutlineJoinTypeFfi(this.ptr, JoinTypeImpl.toInt(join));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setOutlineMiterLimit(double miterLimit) {
        final _setOutlineMiterLimitFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_PolylineMapObject_setOutlineMiterLimit__MiterLimit'));
        final __resultHandle = _setOutlineMiterLimitFfi(this.ptr, miterLimit);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setOutlineOrder(int order) {
        final _setOutlineOrderFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Int32),
            int Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_PolylineMapObject_setOutlineOrder__Order'));
        final __resultHandle = _setOutlineOrderFfi(this.ptr, order);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }




}

// End of PolylineMapObject "private" section.
