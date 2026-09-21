part of 'mbtiles_tile_source.dart';

// MbtilesTileSource "private" section, not exported.

final class MbtilesTileSourceNative extends Struct {
    external NativeString path;
}

final MbtilesTileSourceNative Function(NativeString) _MbtilesTileSourceNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<MbtilesTileSourceNative Function(NativeString)>>('navigine_sdk_flutter_MbtilesTileSource_init')
  .asFunction<MbtilesTileSourceNative Function(NativeString)>(isLeaf: true));

extension MbtilesTileSourceImpl on MbtilesTileSource  {
    static MbtilesTileSource fromNative(MbtilesTileSourceNative native, {bool takeOwnership = true})  {
        return MbtilesTileSource(
          toPlatformString(native.path, takeOwnership: takeOwnership),
        );
    }

    static MbtilesTileSourceNative toNative(MbtilesTileSource obj)  {
        return _MbtilesTileSourceNativeInit(
          toNativeString(obj.path),
        );
    }

    static MbtilesTileSource? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = MbtilesTileSourceImpl.fromNative(ptr.cast<MbtilesTileSourceNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(MbtilesTileSource? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<MbtilesTileSourceNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of MbtilesTileSource "private" section.
