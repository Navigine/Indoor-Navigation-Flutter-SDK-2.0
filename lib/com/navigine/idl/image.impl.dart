part of 'image.dart';

// Image "private" section, not exported.

final _navigine_sdk_flutter_Image_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_Image_check'));

final _navigine_sdk_flutter_Image_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_Image_free');


class Image$Impl implements Image, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_Image_free.cast());

    Image$Impl.fromExternalPtr(this.ptr);

    @internal
    Image$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory Image$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_Image_check(ptr);

    static Pointer<Void> getNativePtr(Image? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as Image$Impl).ptr;
    }

    static Image? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return Image$Impl.fromNativePtr(ptr);
    }


    Uint8List get data {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeBytes Function(Pointer<Void>),
            NativeBytes Function(Pointer<Void>)
          >('navigine_sdk_flutter_Image_data_get'));

        final _dataHandle = _getFfi(this.ptr);
        final _result = toPlatformBytes(_dataHandle);
        exception.checkCallResult();
        return _result;
    }


    int get width {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Image_width_get'));

        final _widthHandle = _getFfi(this.ptr);
        final _result = _widthHandle;
        exception.checkCallResult();
        return _result;
    }


    int get height {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Image_height_get'));

        final _heightHandle = _getFfi(this.ptr);
        final _result = _heightHandle;
        exception.checkCallResult();
        return _result;
    }


    ImageType get type {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Image_type_get'));

        final _typeHandle = _getFfi(this.ptr);
        final _result = ImageTypeImpl.fromInt(_typeHandle);
        exception.checkCallResult();
        return _result;
    }




}

// End of Image "private" section.
