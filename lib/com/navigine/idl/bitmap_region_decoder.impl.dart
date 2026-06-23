part of 'bitmap_region_decoder.dart';

// BitmapRegionDecoder "private" section, not exported.

final _navigine_sdk_flutter_BitmapRegionDecoder_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_BitmapRegionDecoder_check'));

final _navigine_sdk_flutter_BitmapRegionDecoder_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_BitmapRegionDecoder_free');


class BitmapRegionDecoder$Impl implements BitmapRegionDecoder, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_BitmapRegionDecoder_free.cast());

    BitmapRegionDecoder$Impl.fromExternalPtr(this.ptr);

    @internal
    BitmapRegionDecoder$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory BitmapRegionDecoder$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_BitmapRegionDecoder_check(ptr);

    static Pointer<Void> getNativePtr(BitmapRegionDecoder? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as BitmapRegionDecoder$Impl).ptr;
    }

    static BitmapRegionDecoder? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return BitmapRegionDecoder$Impl.fromNativePtr(ptr);
    }

    BitmapRegionDecoder newInstance(Uint8List data) {
        final _newInstanceFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(NativeBytes),
            Pointer<Void> Function(NativeBytes)
          >('navigine_sdk_flutter_BitmapRegionDecoder_newInstance__Data'));
        final __resultHandle = _newInstanceFfi(toNativeBytes(data));
        final _result = BitmapRegionDecoder$Impl.fromNativePtr(__resultHandle);
        return _result;
    }
    BitmapRegionDecoder newInstanceFromImage(Image data) {
        final _newInstanceFromImageFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_BitmapRegionDecoder_newInstanceFromImage__Data'));
        final __resultHandle = _newInstanceFromImageFfi(Image$Impl.getNativePtr(data));
        final _result = BitmapRegionDecoder$Impl.fromNativePtr(__resultHandle);
        return _result;
    }
    @override
    ImageWrapper decodeRegion(Rectangle rect, double sampleSize) {
        final _decodeRegionFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, RectangleNative, Float),
            Pointer<Void> Function(Pointer<Void>, RectangleNative, double)
          >('navigine_sdk_flutter_BitmapRegionDecoder_decodeRegion__Rect_SampleSize'));
        final __resultHandle = _decodeRegionFfi(this.ptr, RectangleImpl.toNative(rect), sampleSize);
        final _result = ImageWrapperImpl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }


    int get width {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_BitmapRegionDecoder_width_get'));

        final _widthHandle = _getFfi(this.ptr);
        final _result = _widthHandle;
        exception.checkCallResult();
        return _result;
    }


    int get height {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_BitmapRegionDecoder_height_get'));

        final _heightHandle = _getFfi(this.ptr);
        final _result = _heightHandle;
        exception.checkCallResult();
        return _result;
    }




}

// End of BitmapRegionDecoder "private" section.
