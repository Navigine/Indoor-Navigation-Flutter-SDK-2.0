part of 'map_object_type.dart';

// MapObjectType "private" section, not exported.

int navigine_sdk_flutter_MapObjectType_ToFfi(MapObjectType value) {
    switch (value) {
    case MapObjectType.ICON:
        return 0;
    case MapObjectType.FLAT_ICON:
        return 1;
    case MapObjectType.POLYGON:
        return 2;
    case MapObjectType.POLYLINE:
        return 3;
    case MapObjectType.CIRCLE:
        return 4;
    }
}

MapObjectType navigine_sdk_flutter_MapObjectType_FromFfi(int handle) {
    switch (handle) {
    case 0:
        return MapObjectType.ICON;
    case 1:
        return MapObjectType.FLAT_ICON;
    case 2:
        return MapObjectType.POLYGON;
    case 3:
        return MapObjectType.POLYLINE;
    case 4:
        return MapObjectType.CIRCLE;
    default:
        throw StateError("Invalid numeric value $handle for MapObjectType enum.");
    }
}

void navigine_sdk_flutter_MapObjectType_ReleaseFfiHandle(int handle) {}

final _navigine_sdk_flutter_MapObjectType_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint32),
    Pointer<Void> Function(int)
  >('navigine_sdk_flutter_MapObjectType_create_handle_nullable'));

final _navigine_sdk_flutter_MapObjectType_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_MapObjectType_release_handle_nullable'));

final _navigine_sdk_flutter_MapObjectType_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Uint32 Function(Pointer<Void>),
    int Function(Pointer<Void>)
  >('navigine_sdk_flutter_MapObjectType_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_MapObjectType_ToFfiNullable(MapObjectType? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_MapObjectType_ToFfi(value);
    final result = _navigine_sdk_flutter_MapObjectType_CreateHandleNullable(_handle);
    navigine_sdk_flutter_MapObjectType_ReleaseFfiHandle(_handle);
    return result;
}

MapObjectType? navigine_sdk_flutter_MapObjectType_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_MapObjectType_GetValueNullable(handle);
    final result = navigine_sdk_flutter_MapObjectType_FromFfi(_handle);
    navigine_sdk_flutter_MapObjectType_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_MapObjectType_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_MapObjectType_ReleaseHandleNullable(handle);

// End of MapObjectType "private" section.
