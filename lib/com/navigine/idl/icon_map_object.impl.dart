part of 'icon_map_object.dart';

// IconMapObject "private" section, not exported.

final _navigine_sdk_flutter_IconMapObject_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_IconMapObject_copy_handle'));

final _navigine_sdk_flutter_IconMapObject_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_IconMapObject_release_handle'));

final _navigine_sdk_flutter_IconMapObject_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_IconMapObject_free');


class IconMapObject$Impl extends __lib.NativeBase implements IconMapObject, Finalizable {
    IconMapObject$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_IconMapObject_free.cast());

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
    bool setStyle(String style) {
        final _setStyleFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_MapObject_setStyle__Style'));
        final _styleHandle = navigine_sdk_flutter_String_ToFfi(style);
        final _handle = this.handle;
        final __resultHandle = _setStyleFfi(_handle, _styleHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_styleHandle);
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
    bool setPosition(LocationPoint point) {
        final _setPositionFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_IconMapObject_setPosition__Point'));
        final _pointHandle = navigine_sdk_flutter_LocationPoint_ToFfi(point);
        final _handle = this.handle;
        final __resultHandle = _setPositionFfi(_handle, _pointHandle);
        navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(_pointHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setPositionAnimated(LocationPoint point, double duration, AnimationType type) {
        final _setPositionAnimatedFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>, Float, Uint32),
            int Function(Pointer<Void>, Pointer<Void>, double, int)
          >('navigine_sdk_flutter_IconMapObject_setPositionAnimated__Point_Duration_Type'));
        final _pointHandle = navigine_sdk_flutter_LocationPoint_ToFfi(point);
        final _durationHandle = navigine_sdk_flutter_double_ToFfi(duration);
        final _typeHandle = navigine_sdk_flutter_AnimationType_ToFfi(type);
        final _handle = this.handle;
        final __resultHandle = _setPositionAnimatedFfi(_handle, _pointHandle, _durationHandle, _typeHandle);
        navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(_pointHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_durationHandle);
        navigine_sdk_flutter_AnimationType_ReleaseFfiHandle(_typeHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setBitmap(ImageWrapper bitmap) {
        final _setBitmapFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_IconMapObject_setBitmap__Bitmap'));
        final _bitmapHandle = navigine_sdk_flutter_ImageWrapper_ToFfi(bitmap);
        final _handle = this.handle;
        final __resultHandle = _setBitmapFfi(_handle, _bitmapHandle);
        navigine_sdk_flutter_ImageWrapper_ReleaseFfiHandle(_bitmapHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setSize(double width, double height) {
        final _setSizeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float, Float),
            int Function(Pointer<Void>, double, double)
          >('navigine_sdk_flutter_IconMapObject_setSize__Width_Height'));
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




}

Pointer<Void> navigine_sdk_flutter_IconMapObject_ToFfi(IconMapObject value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_IconMapObject_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

IconMapObject navigine_sdk_flutter_IconMapObject_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_IconMapObject_CopyHandle(handle);
    final result = IconMapObject$Impl(_copiedHandle);
    IconMapObject$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_IconMapObject_ToFfiNullable(IconMapObject? value) => 
  value != null ? navigine_sdk_flutter_IconMapObject_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_IconMapObject_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_IconMapObject_ReleaseHandle(handle);

void navigine_sdk_flutter_IconMapObject_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_IconMapObject_ReleaseHandle(handle);

IconMapObject? navigine_sdk_flutter_IconMapObject_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_IconMapObject_FromFfi(handle) : null;

// End of IconMapObject "private" section.
