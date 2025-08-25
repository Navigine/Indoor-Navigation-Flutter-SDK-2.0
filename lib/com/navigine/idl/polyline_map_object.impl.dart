part of 'polyline_map_object.dart';

// PolylineMapObject "private" section, not exported.

final _navigine_sdk_flutter_PolylineMapObject_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_PolylineMapObject_copy_handle'));

final _navigine_sdk_flutter_PolylineMapObject_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_PolylineMapObject_release_handle'));

final _navigine_sdk_flutter_PolylineMapObject_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_PolylineMapObject_free');


class PolylineMapObject$Impl extends __lib.NativeBase implements PolylineMapObject, Finalizable {
    PolylineMapObject$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_PolylineMapObject_free.cast());

    // MapObject methods
    @override
    int getId() {
        final _getIdFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>, ),
            int Function(Pointer<Void>, )
          >('navigine_sdk_flutter_MapObject_getId'));
        final _handle = this.handle;
        final __resultHandle = _getIdFfi(_handle, );
        final _result = navigine_sdk_flutter_int_FromFfi(__resultHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    MapObjectType getType() {
        final _getTypeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint32 Function(Pointer<Void>, ),
            int Function(Pointer<Void>, )
          >('navigine_sdk_flutter_MapObject_getType'));
        final _handle = this.handle;
        final __resultHandle = _getTypeFfi(_handle, );
        final _result = navigine_sdk_flutter_MapObjectType_FromFfi(__resultHandle);
        navigine_sdk_flutter_MapObjectType_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    Uint8List getData() {
        final _getDataFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_MapObject_getData'));
        final _handle = this.handle;
        final __resultHandle = _getDataFfi(_handle, );
        final _result = navigine_sdk_flutter_Uint8List_FromFfi(__resultHandle);
        navigine_sdk_flutter_Uint8List_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setVisible(bool visible) {
        final _setVisibleFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Uint8),
            int Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_MapObject_setVisible__Visible'));
        final _visibleHandle = navigine_sdk_flutter_bool_ToFfi(visible);
        final _handle = this.handle;
        final __resultHandle = _setVisibleFfi(_handle, _visibleHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(_visibleHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setInteractive(bool interactive) {
        final _setInteractiveFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Uint8),
            int Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_MapObject_setInteractive__Interactive'));
        final _interactiveHandle = navigine_sdk_flutter_bool_ToFfi(interactive);
        final _handle = this.handle;
        final __resultHandle = _setInteractiveFfi(_handle, _interactiveHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(_interactiveHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    void setData(Uint8List data) {
        final _setDataFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_MapObject_setData__Data'));
        final _dataHandle = navigine_sdk_flutter_Uint8List_ToFfi(data);
        final _handle = this.handle;
        _setDataFfi(_handle, _dataHandle);
        navigine_sdk_flutter_Uint8List_ReleaseFfiHandle(_dataHandle);
    }

    @override
    bool setTitle(String title) {
        final _setTitleFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_MapObject_setTitle__Title'));
        final _titleHandle = navigine_sdk_flutter_String_ToFfi(title);
        final _handle = this.handle;
        final __resultHandle = _setTitleFfi(_handle, _titleHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_titleHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setAlpha(double alpha) {
        final _setAlphaFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_MapObject_setAlpha__Alpha'));
        final _alphaHandle = navigine_sdk_flutter_double_ToFfi(alpha);
        final _handle = this.handle;
        final __resultHandle = _setAlphaFfi(_handle, _alphaHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_alphaHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }


    @override
    bool setPolyLine(LocationPolyline polyline) {
        final _setPolyLineFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_PolylineMapObject_setPolyLine__Polyline'));
        final _polylineHandle = navigine_sdk_flutter_LocationPolyline_ToFfi(polyline);
        final _handle = this.handle;
        final __resultHandle = _setPolyLineFfi(_handle, _polylineHandle);
        navigine_sdk_flutter_LocationPolyline_ReleaseFfiHandle(_polylineHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setWidth(double width) {
        final _setWidthFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_PolylineMapObject_setWidth__Width'));
        final _widthHandle = navigine_sdk_flutter_double_ToFfi(width);
        final _handle = this.handle;
        final __resultHandle = _setWidthFfi(_handle, _widthHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_widthHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setColor(double red, double green, double blue, double alpha) {
        final _setColorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float, Float, Float, Float),
            int Function(Pointer<Void>, double, double, double, double)
          >('navigine_sdk_flutter_PolylineMapObject_setColor__Red_Green_Blue_Alpha'));
        final _redHandle = navigine_sdk_flutter_double_ToFfi(red);
        final _greenHandle = navigine_sdk_flutter_double_ToFfi(green);
        final _blueHandle = navigine_sdk_flutter_double_ToFfi(blue);
        final _alphaHandle = navigine_sdk_flutter_double_ToFfi(alpha);
        final _handle = this.handle;
        final __resultHandle = _setColorFfi(_handle, _redHandle, _greenHandle, _blueHandle, _alphaHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_redHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_greenHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_blueHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_alphaHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setOrder(int order) {
        final _setOrderFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Int32),
            int Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_PolylineMapObject_setOrder__Order'));
        final _orderHandle = navigine_sdk_flutter_int_ToFfi(order);
        final _handle = this.handle;
        final __resultHandle = _setOrderFfi(_handle, _orderHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_orderHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setCapType(CapType cap) {
        final _setCapTypeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Uint32),
            int Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_PolylineMapObject_setCapType__Cap'));
        final _capHandle = navigine_sdk_flutter_CapType_ToFfi(cap);
        final _handle = this.handle;
        final __resultHandle = _setCapTypeFfi(_handle, _capHandle);
        navigine_sdk_flutter_CapType_ReleaseFfiHandle(_capHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setJoinType(JoinType join) {
        final _setJoinTypeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Uint32),
            int Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_PolylineMapObject_setJoinType__Join'));
        final _joinHandle = navigine_sdk_flutter_JoinType_ToFfi(join);
        final _handle = this.handle;
        final __resultHandle = _setJoinTypeFfi(_handle, _joinHandle);
        navigine_sdk_flutter_JoinType_ReleaseFfiHandle(_joinHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setMiterLimit(double miterLimit) {
        final _setMiterLimitFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_PolylineMapObject_setMiterLimit__MiterLimit'));
        final _miterLimitHandle = navigine_sdk_flutter_double_ToFfi(miterLimit);
        final _handle = this.handle;
        final __resultHandle = _setMiterLimitFfi(_handle, _miterLimitHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_miterLimitHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setOutlineColor(double red, double green, double blue, double alpha) {
        final _setOutlineColorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float, Float, Float, Float),
            int Function(Pointer<Void>, double, double, double, double)
          >('navigine_sdk_flutter_PolylineMapObject_setOutlineColor__Red_Green_Blue_Alpha'));
        final _redHandle = navigine_sdk_flutter_double_ToFfi(red);
        final _greenHandle = navigine_sdk_flutter_double_ToFfi(green);
        final _blueHandle = navigine_sdk_flutter_double_ToFfi(blue);
        final _alphaHandle = navigine_sdk_flutter_double_ToFfi(alpha);
        final _handle = this.handle;
        final __resultHandle = _setOutlineColorFfi(_handle, _redHandle, _greenHandle, _blueHandle, _alphaHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_redHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_greenHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_blueHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_alphaHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setOutlineWidth(double radius) {
        final _setOutlineWidthFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_PolylineMapObject_setOutlineWidth__Radius'));
        final _radiusHandle = navigine_sdk_flutter_double_ToFfi(radius);
        final _handle = this.handle;
        final __resultHandle = _setOutlineWidthFfi(_handle, _radiusHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_radiusHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setOutlineAlpha(double alpha) {
        final _setOutlineAlphaFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_PolylineMapObject_setOutlineAlpha__Alpha'));
        final _alphaHandle = navigine_sdk_flutter_double_ToFfi(alpha);
        final _handle = this.handle;
        final __resultHandle = _setOutlineAlphaFfi(_handle, _alphaHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_alphaHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setOutlineCapType(CapType cap) {
        final _setOutlineCapTypeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Uint32),
            int Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_PolylineMapObject_setOutlineCapType__Cap'));
        final _capHandle = navigine_sdk_flutter_CapType_ToFfi(cap);
        final _handle = this.handle;
        final __resultHandle = _setOutlineCapTypeFfi(_handle, _capHandle);
        navigine_sdk_flutter_CapType_ReleaseFfiHandle(_capHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setOutlineJoinType(JoinType join) {
        final _setOutlineJoinTypeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Uint32),
            int Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_PolylineMapObject_setOutlineJoinType__Join'));
        final _joinHandle = navigine_sdk_flutter_JoinType_ToFfi(join);
        final _handle = this.handle;
        final __resultHandle = _setOutlineJoinTypeFfi(_handle, _joinHandle);
        navigine_sdk_flutter_JoinType_ReleaseFfiHandle(_joinHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setOutlineMiterLimit(double miterLimit) {
        final _setOutlineMiterLimitFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_PolylineMapObject_setOutlineMiterLimit__MiterLimit'));
        final _miterLimitHandle = navigine_sdk_flutter_double_ToFfi(miterLimit);
        final _handle = this.handle;
        final __resultHandle = _setOutlineMiterLimitFfi(_handle, _miterLimitHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_miterLimitHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setOutlineOrder(int order) {
        final _setOutlineOrderFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Int32),
            int Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_PolylineMapObject_setOutlineOrder__Order'));
        final _orderHandle = navigine_sdk_flutter_int_ToFfi(order);
        final _handle = this.handle;
        final __resultHandle = _setOutlineOrderFfi(_handle, _orderHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_orderHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }




}

Pointer<Void> navigine_sdk_flutter_PolylineMapObject_ToFfi(PolylineMapObject value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_PolylineMapObject_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

PolylineMapObject navigine_sdk_flutter_PolylineMapObject_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_PolylineMapObject_CopyHandle(handle);
    final result = PolylineMapObject$Impl(_copiedHandle);
    PolylineMapObject$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_PolylineMapObject_ToFfiNullable(PolylineMapObject? value) => 
  value != null ? navigine_sdk_flutter_PolylineMapObject_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_PolylineMapObject_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_PolylineMapObject_ReleaseHandle(handle);

void navigine_sdk_flutter_PolylineMapObject_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_PolylineMapObject_ReleaseHandle(handle);

PolylineMapObject? navigine_sdk_flutter_PolylineMapObject_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_PolylineMapObject_FromFfi(handle) : null;

// End of PolylineMapObject "private" section.
