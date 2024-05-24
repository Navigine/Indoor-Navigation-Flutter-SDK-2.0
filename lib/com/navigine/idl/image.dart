import 'dart:ffi';
import 'dart:typed_data';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/image_type.dart';

abstract class Image implements Finalizable {


    Uint8List get data;
    int get width;
    int get height;
    ImageType get type;


}

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

final _navigine_sdk_flutter_Image_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer, Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_Image_create_proxy'));

final _navigine_sdk_flutter_Image_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_Image_set_ports'));


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
        try  {
            return navigine_sdk_flutter_Uint8List_FromFfi(_dataHandle);
        }
        finally  {
            navigine_sdk_flutter_Uint8List_ReleaseFfiHandle(_dataHandle);
        }
    }


    int get width {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Image_width_get'));

        final _handle = this.handle;
        final _widthHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_int_FromFfi(_widthHandle);
        }
        finally  {
            navigine_sdk_flutter_int_ReleaseFfiHandle(_widthHandle);
        }
    }


    int get height {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Image_height_get'));

        final _handle = this.handle;
        final _heightHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_int_FromFfi(_heightHandle);
        }
        finally  {
            navigine_sdk_flutter_int_ReleaseFfiHandle(_heightHandle);
        }
    }


    ImageType get type {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Image_type_get'));

        final _handle = this.handle;
        final _typeHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_ImageType_FromFfi(_typeHandle);
        }
        finally  {
            navigine_sdk_flutter_ImageType_ReleaseFfiHandle(_typeHandle);
        }
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
