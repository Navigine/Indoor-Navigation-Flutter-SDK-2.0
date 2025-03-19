part of 'image.dart';

// Image "private" section, not exported.

final _navigine_sdk_flutter_Image_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Image_copy_handle'));

final _navigine_sdk_flutter_Image_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Image_release_handle'));

final _navigine_sdk_flutter_Image_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_Image_free');


class Image$Impl extends __lib.NativeBase implements Image, Finalizable {
    Image$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_Image_free.cast());


    Uint8List get data {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Image_data_get'));

        final _handle = this.handle;
        final _dataHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_Uint8List_FromFfi(_dataHandle);
        navigine_sdk_flutter_Uint8List_ReleaseFfiHandle(_dataHandle);
        return _result;
    }


    int get width {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Image_width_get'));

        final _handle = this.handle;
        final _widthHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_int_FromFfi(_widthHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_widthHandle);
        return _result;
    }


    int get height {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Image_height_get'));

        final _handle = this.handle;
        final _heightHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_int_FromFfi(_heightHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_heightHandle);
        return _result;
    }


    ImageType get type {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Image_type_get'));

        final _handle = this.handle;
        final _typeHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_ImageType_FromFfi(_typeHandle);
        navigine_sdk_flutter_ImageType_ReleaseFfiHandle(_typeHandle);
        return _result;
    }




}

Pointer<Void> navigine_sdk_flutter_Image_ToFfi(Image value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_Image_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

Image navigine_sdk_flutter_Image_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_Image_CopyHandle(handle);
    final result = Image$Impl(_copiedHandle);
    Image$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_Image_ToFfiNullable(Image? value) => 
  value != null ? navigine_sdk_flutter_Image_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_Image_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_Image_ReleaseHandle(handle);

void navigine_sdk_flutter_Image_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_Image_ReleaseHandle(handle);

Image? navigine_sdk_flutter_Image_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_Image_FromFfi(handle) : null;

// End of Image "private" section.
