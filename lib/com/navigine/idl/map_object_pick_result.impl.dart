part of 'map_object_pick_result.dart';

// MapObjectPickResult "private" section, not exported.

final _navigine_sdk_flutter_MapObjectPickResult_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_MapObjectPickResult_free');


class MapObjectPickResult$Impl implements MapObjectPickResult, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_MapObjectPickResult_free.cast());

    MapObjectPickResult$Impl.fromExternalPtr(this.ptr);

    @internal
    MapObjectPickResult$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory MapObjectPickResult$Impl.fromNativePtr(Pointer<Void> ptr) =>
        MapObjectPickResult$Impl.fromNativePtrImpl(ptr);


    static Pointer<Void> getNativePtr(MapObjectPickResult? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as MapObjectPickResult$Impl).ptr;
    }

    static MapObjectPickResult? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return MapObjectPickResult$Impl.fromNativePtr(ptr);
    }


    LocationPoint get point {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            LocationPointNative Function(Pointer<Void>),
            LocationPointNative Function(Pointer<Void>)
          >('navigine_sdk_flutter_MapObjectPickResult_point_get'));

        final _pointHandle = _getFfi(this.ptr);
        final _result = LocationPointImpl.fromNative(_pointHandle);
        exception.checkCallResult();
        return _result;
    }


    MapObject get mapObject {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_MapObjectPickResult_mapObject_get'));

        final _mapObjectHandle = _getFfi(this.ptr);
        final _result = MapObject$Impl.fromNativePtr(_mapObjectHandle);
        exception.checkCallResult();
        return _result;
    }




}

// End of MapObjectPickResult "private" section.
