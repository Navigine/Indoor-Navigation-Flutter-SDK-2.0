part of 'bounding_box.dart';

// BoundingBox "private" section, not exported.

final class BoundingBoxNative extends Struct {
    external GlobalPointNative bottomLeft;
    external GlobalPointNative topRight;
}

final BoundingBoxNative Function(GlobalPointNative, GlobalPointNative) _BoundingBoxNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<BoundingBoxNative Function(GlobalPointNative, GlobalPointNative)>>('navigine_sdk_flutter_BoundingBox_init')
  .asFunction<BoundingBoxNative Function(GlobalPointNative, GlobalPointNative)>(isLeaf: true));

extension BoundingBoxImpl on BoundingBox  {
    static BoundingBox fromNative(BoundingBoxNative native, {bool takeOwnership = true})  {
        return BoundingBox(
          GlobalPointImpl.fromNative(native.bottomLeft, takeOwnership: takeOwnership),
          GlobalPointImpl.fromNative(native.topRight, takeOwnership: takeOwnership),
        );
    }

    static BoundingBoxNative toNative(BoundingBox obj)  {
        return _BoundingBoxNativeInit(
          GlobalPointImpl.toNative(obj.bottomLeft),
          GlobalPointImpl.toNative(obj.topRight),
        );
    }

    static BoundingBox? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = BoundingBoxImpl.fromNative(ptr.cast<BoundingBoxNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(BoundingBox? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<BoundingBoxNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of BoundingBox "private" section.
