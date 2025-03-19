part of 'bitmap_region_decoder.dart';

// BitmapRegionDecoder "private" section, not exported.

final _navigine_sdk_flutter_BitmapRegionDecoder_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_BitmapRegionDecoder_copy_handle'));

final _navigine_sdk_flutter_BitmapRegionDecoder_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_BitmapRegionDecoder_release_handle'));

final _navigine_sdk_flutter_BitmapRegionDecoder_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_BitmapRegionDecoder_free');


class BitmapRegionDecoder$Impl extends __lib.NativeBase implements BitmapRegionDecoder, Finalizable {
    BitmapRegionDecoder$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_BitmapRegionDecoder_free.cast());

    BitmapRegionDecoder newInstance(Uint8List data) {
        final _newInstanceFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_BitmapRegionDecoder_newInstance__Data'));
        final _dataHandle = navigine_sdk_flutter_Uint8List_ToFfi(data);
        final __resultHandle = _newInstanceFfi(_dataHandle);
        navigine_sdk_flutter_Uint8List_ReleaseFfiHandle(_dataHandle);
        final _result = navigine_sdk_flutter_BitmapRegionDecoder_FromFfi(__resultHandle);
        navigine_sdk_flutter_BitmapRegionDecoder_ReleaseFfiHandle(__resultHandle);
        return _result;
    }
    @override
    ImageWrapper decodeRegion(Rectangle rect, int sampleSize) {
        final _decodeRegionFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Int32),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, int)
          >('navigine_sdk_flutter_BitmapRegionDecoder_decodeRegion__Rect_SampleSize'));
        final _rectHandle = navigine_sdk_flutter_Rectangle_ToFfi(rect);
        final _sampleSizeHandle = navigine_sdk_flutter_int_ToFfi(sampleSize);
        final _handle = this.handle;
        final __resultHandle = _decodeRegionFfi(_handle, _rectHandle, _sampleSizeHandle);
        navigine_sdk_flutter_Rectangle_ReleaseFfiHandle(_rectHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_sampleSizeHandle);
        final _result = navigine_sdk_flutter_ImageWrapper_FromFfi(__resultHandle);
        navigine_sdk_flutter_ImageWrapper_ReleaseFfiHandle(__resultHandle);
        return _result;
    }




}

Pointer<Void> navigine_sdk_flutter_BitmapRegionDecoder_ToFfi(BitmapRegionDecoder value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_BitmapRegionDecoder_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

BitmapRegionDecoder navigine_sdk_flutter_BitmapRegionDecoder_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_BitmapRegionDecoder_CopyHandle(handle);
    final result = BitmapRegionDecoder$Impl(_copiedHandle);
    BitmapRegionDecoder$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_BitmapRegionDecoder_ToFfiNullable(BitmapRegionDecoder? value) => 
  value != null ? navigine_sdk_flutter_BitmapRegionDecoder_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_BitmapRegionDecoder_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_BitmapRegionDecoder_ReleaseHandle(handle);

void navigine_sdk_flutter_BitmapRegionDecoder_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_BitmapRegionDecoder_ReleaseHandle(handle);

BitmapRegionDecoder? navigine_sdk_flutter_BitmapRegionDecoder_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_BitmapRegionDecoder_FromFfi(handle) : null;

// End of BitmapRegionDecoder "private" section.
