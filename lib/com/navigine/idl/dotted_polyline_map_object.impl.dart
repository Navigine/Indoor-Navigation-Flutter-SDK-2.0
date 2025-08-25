part of 'dotted_polyline_map_object.dart';

// DottedPolylineMapObject "private" section, not exported.

final _navigine_sdk_flutter_DottedPolylineMapObject_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_DottedPolylineMapObject_copy_handle'));

final _navigine_sdk_flutter_DottedPolylineMapObject_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_DottedPolylineMapObject_release_handle'));

final _navigine_sdk_flutter_DottedPolylineMapObject_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_DottedPolylineMapObject_free');


class DottedPolylineMapObject$Impl extends __lib.NativeBase implements DottedPolylineMapObject, Finalizable {
    DottedPolylineMapObject$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_DottedPolylineMapObject_free.cast());

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
          >('navigine_sdk_flutter_DottedPolylineMapObject_setPolyLine__Polyline'));
        final _polylineHandle = navigine_sdk_flutter_LocationPolyline_ToFfi(polyline);
        final _handle = this.handle;
        final __resultHandle = _setPolyLineFfi(_handle, _polylineHandle);
        navigine_sdk_flutter_LocationPolyline_ReleaseFfiHandle(_polylineHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setColor(double red, double green, double blue, double alpha) {
        final _setColorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float, Float, Float, Float),
            int Function(Pointer<Void>, double, double, double, double)
          >('navigine_sdk_flutter_DottedPolylineMapObject_setColor__Red_Green_Blue_Alpha'));
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
    bool setSize(double width, double height) {
        final _setSizeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float, Float),
            int Function(Pointer<Void>, double, double)
          >('navigine_sdk_flutter_DottedPolylineMapObject_setSize__Width_Height'));
        final _widthHandle = navigine_sdk_flutter_double_ToFfi(width);
        final _heightHandle = navigine_sdk_flutter_double_ToFfi(height);
        final _handle = this.handle;
        final __resultHandle = _setSizeFfi(_handle, _widthHandle, _heightHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_widthHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_heightHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setCollisionEnabled(bool enabled) {
        final _setCollisionEnabledFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Uint8),
            int Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_DottedPolylineMapObject_setCollisionEnabled__Enabled'));
        final _enabledHandle = navigine_sdk_flutter_bool_ToFfi(enabled);
        final _handle = this.handle;
        final __resultHandle = _setCollisionEnabledFfi(_handle, _enabledHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(_enabledHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setPlacement(Placement placement) {
        final _setPlacementFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Uint32),
            int Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_DottedPolylineMapObject_setPlacement__Placement'));
        final _placementHandle = navigine_sdk_flutter_Placement_ToFfi(placement);
        final _handle = this.handle;
        final __resultHandle = _setPlacementFfi(_handle, _placementHandle);
        navigine_sdk_flutter_Placement_ReleaseFfiHandle(_placementHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setPlacementMinRatio(double ratio) {
        final _setPlacementMinRatioFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_DottedPolylineMapObject_setPlacementMinRatio__Ratio'));
        final _ratioHandle = navigine_sdk_flutter_double_ToFfi(ratio);
        final _handle = this.handle;
        final __resultHandle = _setPlacementMinRatioFfi(_handle, _ratioHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_ratioHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setPlacementSpacing(double spacing) {
        final _setPlacementSpacingFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_DottedPolylineMapObject_setPlacementSpacing__Spacing'));
        final _spacingHandle = navigine_sdk_flutter_double_ToFfi(spacing);
        final _handle = this.handle;
        final __resultHandle = _setPlacementSpacingFfi(_handle, _spacingHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_spacingHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setRepeatDistance(double distance) {
        final _setRepeatDistanceFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_DottedPolylineMapObject_setRepeatDistance__Distance'));
        final _distanceHandle = navigine_sdk_flutter_double_ToFfi(distance);
        final _handle = this.handle;
        final __resultHandle = _setRepeatDistanceFfi(_handle, _distanceHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_distanceHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setRepeatGroup(int group) {
        final _setRepeatGroupFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Int32),
            int Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_DottedPolylineMapObject_setRepeatGroup__Group'));
        final _groupHandle = navigine_sdk_flutter_int_ToFfi(group);
        final _handle = this.handle;
        final __resultHandle = _setRepeatGroupFfi(_handle, _groupHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_groupHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setPriority(double priority) {
        final _setPriorityFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_DottedPolylineMapObject_setPriority__Priority'));
        final _priorityHandle = navigine_sdk_flutter_double_ToFfi(priority);
        final _handle = this.handle;
        final __resultHandle = _setPriorityFfi(_handle, _priorityHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_priorityHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }




}

Pointer<Void> navigine_sdk_flutter_DottedPolylineMapObject_ToFfi(DottedPolylineMapObject value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_DottedPolylineMapObject_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

DottedPolylineMapObject navigine_sdk_flutter_DottedPolylineMapObject_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_DottedPolylineMapObject_CopyHandle(handle);
    final result = DottedPolylineMapObject$Impl(_copiedHandle);
    DottedPolylineMapObject$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_DottedPolylineMapObject_ToFfiNullable(DottedPolylineMapObject? value) => 
  value != null ? navigine_sdk_flutter_DottedPolylineMapObject_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_DottedPolylineMapObject_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_DottedPolylineMapObject_ReleaseHandle(handle);

void navigine_sdk_flutter_DottedPolylineMapObject_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_DottedPolylineMapObject_ReleaseHandle(handle);

DottedPolylineMapObject? navigine_sdk_flutter_DottedPolylineMapObject_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_DottedPolylineMapObject_FromFfi(handle) : null;

// End of DottedPolylineMapObject "private" section.
