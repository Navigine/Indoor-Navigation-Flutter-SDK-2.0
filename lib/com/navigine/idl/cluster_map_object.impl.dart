part of 'cluster_map_object.dart';

// ClusterMapObject "private" section, not exported.

final _navigine_sdk_flutter_ClusterMapObject_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_ClusterMapObject_check'));

final _navigine_sdk_flutter_ClusterMapObject_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_ClusterMapObject_free');


class ClusterMapObject$Impl implements ClusterMapObject, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_ClusterMapObject_free.cast());

    ClusterMapObject$Impl.fromExternalPtr(this.ptr);

    @internal
    ClusterMapObject$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory ClusterMapObject$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_ClusterMapObject_check(ptr);

    static Pointer<Void> getNativePtr(ClusterMapObject? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as ClusterMapObject$Impl).ptr;
    }

    static ClusterMapObject? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return ClusterMapObject$Impl.fromNativePtr(ptr);
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
    bool setBitmap(ImageProvider bitmap) {
        final _setBitmapFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_ClusterMapObject_setBitmap__Bitmap'));
        final _bitmapHandle = ImageProviderImpl.getNativePtr(bitmap);
        final __resultHandle = _setBitmapFfi(this.ptr, _bitmapHandle);
        ImageProviderImpl.releaseNativePtr(_bitmapHandle);
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    void addListener(ClusterMapObjectListener listener) {
        final _addListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_ClusterMapObject_addListener__Listener'));
        _addListenerFfi(this.ptr, ClusterMapObjectListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void removeListener(ClusterMapObjectListener listener) {
        final _removeListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_ClusterMapObject_removeListener__Listener'));
        _removeListenerFfi(this.ptr, ClusterMapObjectListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }


    LocationPoint get position {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            LocationPointNative Function(Pointer<Void>),
            LocationPointNative Function(Pointer<Void>)
          >('navigine_sdk_flutter_ClusterMapObject_position_get'));

        final _positionHandle = _getFfi(this.ptr);
        final _result = LocationPointImpl.fromNative(_positionHandle);
        exception.checkCallResult();
        return _result;
    }


    int get count {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_ClusterMapObject_count_get'));

        final _countHandle = _getFfi(this.ptr);
        final _result = _countHandle;
        exception.checkCallResult();
        return _result;
    }


    List<IconMapObject> get iconMapObjects {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_ClusterMapObject_iconMapObjects_get'));

        final _iconMapObjectsHandle = _getFfi(this.ptr);
        final _result = ListIconMapObjectImpl.fromNativePtr(_iconMapObjectsHandle);
        exception.checkCallResult();
        return _result;
    }




}

// End of ClusterMapObject "private" section.
