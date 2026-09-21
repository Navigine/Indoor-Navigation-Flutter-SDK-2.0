part of 'visible_region.dart';

// VisibleRegion "private" section, not exported.

final class VisibleRegionNative extends Struct {
    external GlobalPointNative topLeft;
    external GlobalPointNative topRight;
    external GlobalPointNative bottomLeft;
    external GlobalPointNative bottomRight;
}

final VisibleRegionNative Function(GlobalPointNative, GlobalPointNative, GlobalPointNative, GlobalPointNative) _VisibleRegionNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<VisibleRegionNative Function(GlobalPointNative, GlobalPointNative, GlobalPointNative, GlobalPointNative)>>('navigine_sdk_flutter_VisibleRegion_init')
  .asFunction<VisibleRegionNative Function(GlobalPointNative, GlobalPointNative, GlobalPointNative, GlobalPointNative)>(isLeaf: true));

extension VisibleRegionImpl on VisibleRegion  {
    static VisibleRegion fromNative(VisibleRegionNative native, {bool takeOwnership = true})  {
        return VisibleRegion(
          GlobalPointImpl.fromNative(native.topLeft, takeOwnership: takeOwnership),
          GlobalPointImpl.fromNative(native.topRight, takeOwnership: takeOwnership),
          GlobalPointImpl.fromNative(native.bottomLeft, takeOwnership: takeOwnership),
          GlobalPointImpl.fromNative(native.bottomRight, takeOwnership: takeOwnership),
        );
    }

    static VisibleRegionNative toNative(VisibleRegion obj)  {
        return _VisibleRegionNativeInit(
          GlobalPointImpl.toNative(obj.topLeft),
          GlobalPointImpl.toNative(obj.topRight),
          GlobalPointImpl.toNative(obj.bottomLeft),
          GlobalPointImpl.toNative(obj.bottomRight),
        );
    }

    static VisibleRegion? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = VisibleRegionImpl.fromNative(ptr.cast<VisibleRegionNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(VisibleRegion? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<VisibleRegionNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of VisibleRegion "private" section.
