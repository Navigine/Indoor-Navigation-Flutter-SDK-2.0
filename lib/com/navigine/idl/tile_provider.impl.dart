part of 'tile_provider.dart';

// TileProvider "private" section, not exported.

final class TileProviderNative extends Struct {
    @Uint32()
    external int schema;
    external Pointer<Void> http;
    external Pointer<Void> mbtiles;
    @Int32()
    external int minZoom;
    @Int32()
    external int maxZoom;
    external Pointer<Void> attribution;
}

final TileProviderNative Function(int, Pointer<Void>, Pointer<Void>, int, int, Pointer<Void>) _TileProviderNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<TileProviderNative Function(Uint32, Pointer<Void>, Pointer<Void>, Int32, Int32, Pointer<Void>)>>('navigine_sdk_flutter_TileProvider_init')
  .asFunction<TileProviderNative Function(int, Pointer<Void>, Pointer<Void>, int, int, Pointer<Void>)>(isLeaf: true));

extension TileProviderImpl on TileProvider  {
    static TileProvider fromNative(TileProviderNative native, {bool takeOwnership = true})  {
        return TileProvider(
          schema: TileSchemaImpl.fromInt(native.schema),
          http: HttpTileSourceImpl.fromPointer(native.http),
          mbtiles: MbtilesTileSourceImpl.fromPointer(native.mbtiles),
          minZoom: native.minZoom,
          maxZoom: native.maxZoom,
          attribution: toPlatformFromPointerString(native.attribution),
        );
    }

    static TileProviderNative toNative(TileProvider obj)  {
        return _TileProviderNativeInit(
          TileSchemaImpl.toInt(obj.schema),
          HttpTileSourceImpl.toPointer(obj.http),
          MbtilesTileSourceImpl.toPointer(obj.mbtiles),
          obj.minZoom,
          obj.maxZoom,
          toNativePtrString(obj.attribution),
        );
    }

    static TileProvider? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = TileProviderImpl.fromNative(ptr.cast<TileProviderNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(TileProvider? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<TileProviderNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of TileProvider "private" section.
