part of 'circle_map_object.dart';

// CircleMapObject "private" section, not exported.

final _navigine_sdk_flutter_CircleMapObject_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_CircleMapObject_copy_handle'));

final _navigine_sdk_flutter_CircleMapObject_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_CircleMapObject_release_handle'));

final _navigine_sdk_flutter_CircleMapObject_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_CircleMapObject_free');


class CircleMapObject$Impl extends __lib.NativeBase implements CircleMapObject, Finalizable {
    CircleMapObject$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_CircleMapObject_free.cast());

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
    bool setPosition(LocationPoint point) {
        final _setPositionFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_CircleMapObject_setPosition__Point'));
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
          >('navigine_sdk_flutter_CircleMapObject_setPositionAnimated__Point_Duration_Type'));
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
    bool setColor(double red, double green, double blue, double alpha) {
        final _setColorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float, Float, Float, Float),
            int Function(Pointer<Void>, double, double, double, double)
          >('navigine_sdk_flutter_CircleMapObject_setColor__Red_Green_Blue_Alpha'));
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
    bool setRadius(double radius) {
        final _setRadiusFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_CircleMapObject_setRadius__Radius'));
        final _radiusHandle = navigine_sdk_flutter_double_ToFfi(radius);
        final _handle = this.handle;
        final __resultHandle = _setRadiusFfi(_handle, _radiusHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_radiusHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setCollisionEnabled(bool enabled) {
        final _setCollisionEnabledFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Uint8),
            int Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_CircleMapObject_setCollisionEnabled__Enabled'));
        final _enabledHandle = navigine_sdk_flutter_bool_ToFfi(enabled);
        final _handle = this.handle;
        final __resultHandle = _setCollisionEnabledFfi(_handle, _enabledHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(_enabledHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setBuffer(double width, double height) {
        final _setBufferFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float, Float),
            int Function(Pointer<Void>, double, double)
          >('navigine_sdk_flutter_CircleMapObject_setBuffer__Width_Height'));
        final _widthHandle = navigine_sdk_flutter_double_ToFfi(width);
        final _heightHandle = navigine_sdk_flutter_double_ToFfi(height);
        final _handle = this.handle;
        final __resultHandle = _setBufferFfi(_handle, _widthHandle, _heightHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_widthHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_heightHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setOffset(double width, double height) {
        final _setOffsetFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float, Float),
            int Function(Pointer<Void>, double, double)
          >('navigine_sdk_flutter_CircleMapObject_setOffset__Width_Height'));
        final _widthHandle = navigine_sdk_flutter_double_ToFfi(width);
        final _heightHandle = navigine_sdk_flutter_double_ToFfi(height);
        final _handle = this.handle;
        final __resultHandle = _setOffsetFfi(_handle, _widthHandle, _heightHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_widthHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_heightHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setPriority(double priority) {
        final _setPriorityFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_CircleMapObject_setPriority__Priority'));
        final _priorityHandle = navigine_sdk_flutter_double_ToFfi(priority);
        final _handle = this.handle;
        final __resultHandle = _setPriorityFfi(_handle, _priorityHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_priorityHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool setOutlineColor(double red, double green, double blue, double alpha) {
        final _setOutlineColorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float, Float, Float, Float),
            int Function(Pointer<Void>, double, double, double, double)
          >('navigine_sdk_flutter_CircleMapObject_setOutlineColor__Red_Green_Blue_Alpha'));
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
    bool setOutlineRadius(double radius) {
        final _setOutlineRadiusFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Float),
            int Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_CircleMapObject_setOutlineRadius__Radius'));
        final _radiusHandle = navigine_sdk_flutter_double_ToFfi(radius);
        final _handle = this.handle;
        final __resultHandle = _setOutlineRadiusFfi(_handle, _radiusHandle);
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
          >('navigine_sdk_flutter_CircleMapObject_setOutlineAlpha__Alpha'));
        final _alphaHandle = navigine_sdk_flutter_double_ToFfi(alpha);
        final _handle = this.handle;
        final __resultHandle = _setOutlineAlphaFfi(_handle, _alphaHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_alphaHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }




}

Pointer<Void> navigine_sdk_flutter_CircleMapObject_ToFfi(CircleMapObject value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_CircleMapObject_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

CircleMapObject navigine_sdk_flutter_CircleMapObject_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_CircleMapObject_CopyHandle(handle);
    final result = CircleMapObject$Impl(_copiedHandle);
    CircleMapObject$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_CircleMapObject_ToFfiNullable(CircleMapObject? value) => 
  value != null ? navigine_sdk_flutter_CircleMapObject_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_CircleMapObject_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_CircleMapObject_ReleaseHandle(handle);

void navigine_sdk_flutter_CircleMapObject_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_CircleMapObject_ReleaseHandle(handle);

CircleMapObject? navigine_sdk_flutter_CircleMapObject_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_CircleMapObject_FromFfi(handle) : null;

// End of CircleMapObject "private" section.
