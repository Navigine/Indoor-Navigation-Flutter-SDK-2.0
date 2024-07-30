import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

/** Supported image types */
enum ImageType {
    PNG,
    SVG,
    JPG,
}

// ImageType "private" section, not exported.

int navigine_sdk_flutter_ImageType_ToFfi(ImageType value) {
    switch (value) {
    case ImageType.PNG:
        return 0;
    case ImageType.SVG:
        return 1;
    case ImageType.JPG:
        return 2;
    default:
        throw StateError("Invalid enum value $value for ImageType enum.");
    }
}

ImageType navigine_sdk_flutter_ImageType_FromFfi(int handle) {
    switch (handle) {
    case 0:
        return ImageType.PNG;
    case 1:
        return ImageType.SVG;
    case 2:
        return ImageType.JPG;
    default:
        throw StateError("Invalid numeric value $handle for ImageType enum.");
    }
}

void navigine_sdk_flutter_ImageType_ReleaseFfiHandle(int handle) {}

final _navigine_sdk_flutter_ImageType_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint32),
    Pointer<Void> Function(int)
  >('navigine_sdk_flutter_ImageType_create_handle_nullable'));

final _navigine_sdk_flutter_ImageType_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_ImageType_release_handle_nullable'));

final _navigine_sdk_flutter_ImageType_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_ImageType_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_ImageType_ToFfiNullable(ImageType? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_ImageType_ToFfi(value);
    final result = _navigine_sdk_flutter_ImageType_CreateHandleNullable(_handle);
    navigine_sdk_flutter_ImageType_ReleaseFfiHandle(_handle);
    return result;
}

ImageType? navigine_sdk_flutter_ImageType_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_ImageType_GetValueNullable(handle);
    final result = navigine_sdk_flutter_ImageType_FromFfi(_handle);
    navigine_sdk_flutter_ImageType_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_ImageType_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_ImageType_ReleaseHandleNullable(handle);

// End of ImageType "private" section.
