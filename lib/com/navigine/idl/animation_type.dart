import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

enum AnimationType {
    NONE,
    LINEAR,
    CUBIC,
    QUINT,
    SINE,
}

// AnimationType "private" section, not exported.

int navigine_sdk_flutter_AnimationType_ToFfi(AnimationType value) {
    switch (value) {
    case AnimationType.NONE:
        return 0;
    case AnimationType.LINEAR:
        return 1;
    case AnimationType.CUBIC:
        return 2;
    case AnimationType.QUINT:
        return 3;
    case AnimationType.SINE:
        return 4;
    default:
        throw StateError("Invalid enum value $value for AnimationType enum.");
    }
}

AnimationType navigine_sdk_flutter_AnimationType_FromFfi(int handle) {
    switch (handle) {
    case 0:
        return AnimationType.NONE;
    case 1:
        return AnimationType.LINEAR;
    case 2:
        return AnimationType.CUBIC;
    case 3:
        return AnimationType.QUINT;
    case 4:
        return AnimationType.SINE;
    default:
        throw StateError("Invalid numeric value $handle for AnimationType enum.");
    }
}

void navigine_sdk_flutter_AnimationType_ReleaseFfiHandle(int handle) {}

final _navigine_sdk_flutter_AnimationType_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint32),
    Pointer<Void> Function(int)
  >('navigine_sdk_flutter_AnimationType_create_handle_nullable'));

final _navigine_sdk_flutter_AnimationType_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_AnimationType_release_handle_nullable'));

final _navigine_sdk_flutter_AnimationType_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_AnimationType_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_AnimationType_ToFfiNullable(AnimationType? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_AnimationType_ToFfi(value);
    final result = _navigine_sdk_flutter_AnimationType_CreateHandleNullable(_handle);
    navigine_sdk_flutter_AnimationType_ReleaseFfiHandle(_handle);
    return result;
}

AnimationType? navigine_sdk_flutter_AnimationType_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_AnimationType_GetValueNullable(handle);
    final result = navigine_sdk_flutter_AnimationType_FromFfi(_handle);
    navigine_sdk_flutter_AnimationType_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_AnimationType_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_AnimationType_ReleaseHandleNullable(handle);

// End of AnimationType "private" section.
