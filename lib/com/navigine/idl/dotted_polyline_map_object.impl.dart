part of 'dotted_polyline_map_object.dart';

// DottedPolylineMapObject "private" section, not exported.

final _navigine_sdk_flutter_DottedPolylineMapObject_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_DottedPolylineMapObject_check'));

final _navigine_sdk_flutter_DottedPolylineMapObject_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_DottedPolylineMapObject_free');


class DottedPolylineMapObject$Impl implements DottedPolylineMapObject, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_DottedPolylineMapObject_free.cast());

    DottedPolylineMapObject$Impl.fromExternalPtr(this.ptr);

    @internal
    DottedPolylineMapObject$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory DottedPolylineMapObject$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_DottedPolylineMapObject_check(ptr);

    static Pointer<Void> getNativePtr(DottedPolylineMapObject? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as DottedPolylineMapObject$Impl).ptr;
    }

    static DottedPolylineMapObject? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return DottedPolylineMapObject$Impl.fromNativePtr(ptr);
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
          >('navigine_sdk_flutter_DottedPolylineMapObject_setPolyLine__Polyline'));
        final __resultHandle = _setPolyLineFfi(this.ptr, LocationPolylineImpl.toNative(polyline));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setColor(double red, double green, double blue, double alpha) {
        final _setColorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float, Float, Float, Float),
            int Function(Pointer<Void>, double, double, double, double)
          >('navigine_sdk_flutter_DottedPolylineMapObject_setColor__Red_Green_Blue_Alpha'));
        final __resultHandle = _setColorFfi(this.ptr, red, green, blue, alpha);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setSize(double width, double height) {
        final _setSizeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float, Float),
            int Function(Pointer<Void>, double, double)
          >('navigine_sdk_flutter_DottedPolylineMapObject_setSize__Width_Height'));
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
          >('navigine_sdk_flutter_DottedPolylineMapObject_setCollisionEnabled__Enabled'));
        final __resultHandle = _setCollisionEnabledFfi(this.ptr, (enabled ? 1 : 0));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setPlacement(Placement placement) {
        final _setPlacementFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Uint32),
            int Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_DottedPolylineMapObject_setPlacement__Placement'));
        final __resultHandle = _setPlacementFfi(this.ptr, PlacementImpl.toInt(placement));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setPlacementMinRatio(double ratio) {
        final _setPlacementMinRatioFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_DottedPolylineMapObject_setPlacementMinRatio__Ratio'));
        final __resultHandle = _setPlacementMinRatioFfi(this.ptr, ratio);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setPlacementSpacing(double spacing) {
        final _setPlacementSpacingFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_DottedPolylineMapObject_setPlacementSpacing__Spacing'));
        final __resultHandle = _setPlacementSpacingFfi(this.ptr, spacing);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setRepeatDistance(double distance) {
        final _setRepeatDistanceFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_DottedPolylineMapObject_setRepeatDistance__Distance'));
        final __resultHandle = _setRepeatDistanceFfi(this.ptr, distance);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setRepeatGroup(int group) {
        final _setRepeatGroupFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Int32),
            int Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_DottedPolylineMapObject_setRepeatGroup__Group'));
        final __resultHandle = _setRepeatGroupFfi(this.ptr, group);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool setPriority(double priority) {
        final _setPriorityFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_DottedPolylineMapObject_setPriority__Priority'));
        final __resultHandle = _setPriorityFfi(this.ptr, priority);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }




}

// End of DottedPolylineMapObject "private" section.
