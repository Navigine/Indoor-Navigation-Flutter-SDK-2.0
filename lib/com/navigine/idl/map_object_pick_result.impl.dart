part of 'map_object_pick_result.dart';

// MapObjectPickResult "private" section, not exported.

final _navigine_sdk_flutter_MapObjectPickResult_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_MapObjectPickResult_copy_handle'));

final _navigine_sdk_flutter_MapObjectPickResult_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_MapObjectPickResult_release_handle'));

final _navigine_sdk_flutter_MapObjectPickResult_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_MapObjectPickResult_free');


class MapObjectPickResult$Impl extends __lib.NativeBase implements MapObjectPickResult, Finalizable {
    MapObjectPickResult$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_MapObjectPickResult_free.cast());


    LocationPoint get point {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_MapObjectPickResult_point_get'));

        final _handle = this.handle;
        final _pointHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_LocationPoint_FromFfi(_pointHandle);
        navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(_pointHandle);
        return _result;
    }


    MapObject get mapObject {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_MapObjectPickResult_mapObject_get'));

        final _handle = this.handle;
        final _mapObjectHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_MapObject_FromFfi(_mapObjectHandle);
        navigine_sdk_flutter_MapObject_ReleaseFfiHandle(_mapObjectHandle);
        return _result;
    }




}

Pointer<Void> navigine_sdk_flutter_MapObjectPickResult_ToFfi(MapObjectPickResult value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_MapObjectPickResult_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

MapObjectPickResult navigine_sdk_flutter_MapObjectPickResult_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_MapObjectPickResult_CopyHandle(handle);
    final result = MapObjectPickResult$Impl(_copiedHandle);
    MapObjectPickResult$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_MapObjectPickResult_ToFfiNullable(MapObjectPickResult? value) => 
  value != null ? navigine_sdk_flutter_MapObjectPickResult_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_MapObjectPickResult_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_MapObjectPickResult_ReleaseHandle(handle);

void navigine_sdk_flutter_MapObjectPickResult_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_MapObjectPickResult_ReleaseHandle(handle);

MapObjectPickResult? navigine_sdk_flutter_MapObjectPickResult_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_MapObjectPickResult_FromFfi(handle) : null;

// End of MapObjectPickResult "private" section.
