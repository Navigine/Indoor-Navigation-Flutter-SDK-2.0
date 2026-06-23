part of 'bounding_box.dart';

// BoundingBox "private" section, not exported.

final class BoundingBoxNative extends Struct {
    external PointNative bottomLeft;
    external PointNative topRight;
}

final BoundingBoxNative Function(PointNative, PointNative) _BoundingBoxNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<BoundingBoxNative Function(PointNative, PointNative)>>('navigine_sdk_flutter_BoundingBox_init')
  .asFunction<BoundingBoxNative Function(PointNative, PointNative)>(isLeaf: true));

extension BoundingBoxImpl on BoundingBox  {
    static BoundingBox fromNative(BoundingBoxNative native, {bool takeOwnership = true})  {
        return BoundingBox(
          PointImpl.fromNative(native.bottomLeft, takeOwnership: takeOwnership),
          PointImpl.fromNative(native.topRight, takeOwnership: takeOwnership),
        );
    }

    static BoundingBoxNative toNative(BoundingBox obj)  {
        return _BoundingBoxNativeInit(
          PointImpl.toNative(obj.bottomLeft),
          PointImpl.toNative(obj.topRight),
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
