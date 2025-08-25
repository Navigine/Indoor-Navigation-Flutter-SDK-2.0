part of 'placement.dart';

// Placement "private" section, not exported.

int navigine_sdk_flutter_Placement_ToFfi(Placement value) {
    switch (value) {
    case Placement.VERTEX:
        return 0;
    case Placement.MIDPOINT:
        return 1;
    case Placement.SPACED:
        return 2;
    }
}

Placement navigine_sdk_flutter_Placement_FromFfi(int handle) {
    switch (handle) {
    case 0:
        return Placement.VERTEX;
    case 1:
        return Placement.MIDPOINT;
    case 2:
        return Placement.SPACED;
    default:
        throw StateError("Invalid numeric value $handle for Placement enum.");
    }
}

void navigine_sdk_flutter_Placement_ReleaseFfiHandle(int handle) {}

final _navigine_sdk_flutter_Placement_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint32),
    Pointer<Void> Function(int)
  >('navigine_sdk_flutter_Placement_create_handle_nullable'));

final _navigine_sdk_flutter_Placement_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Placement_release_handle_nullable'));

final _navigine_sdk_flutter_Placement_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_Placement_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_Placement_ToFfiNullable(Placement? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_Placement_ToFfi(value);
    final result = _navigine_sdk_flutter_Placement_CreateHandleNullable(_handle);
    navigine_sdk_flutter_Placement_ReleaseFfiHandle(_handle);
    return result;
}

Placement? navigine_sdk_flutter_Placement_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_Placement_GetValueNullable(handle);
    final result = navigine_sdk_flutter_Placement_FromFfi(_handle);
    navigine_sdk_flutter_Placement_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_Placement_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_Placement_ReleaseHandleNullable(handle);

// End of Placement "private" section.
