part of 'point_sprite.dart';

// PointSprite "private" section, not exported.

final class PointSpriteNative extends Struct {
    external GlobalPointNative position;
    @Float()
    external double heading;
    @Int32()
    external int color;
    @Float()
    external double size;
}

final PointSpriteNative Function(GlobalPointNative, double, int, double) _PointSpriteNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<PointSpriteNative Function(GlobalPointNative, Float, Int32, Float)>>('navigine_sdk_flutter_PointSprite_init')
  .asFunction<PointSpriteNative Function(GlobalPointNative, double, int, double)>(isLeaf: true));

extension PointSpriteImpl on PointSprite  {
    static PointSprite fromNative(PointSpriteNative native, {bool takeOwnership = true})  {
        return PointSprite(
          GlobalPointImpl.fromNative(native.position, takeOwnership: takeOwnership),
          native.heading,
          Color(native.color),
          native.size,
        );
    }

    static PointSpriteNative toNative(PointSprite obj)  {
        return _PointSpriteNativeInit(
          GlobalPointImpl.toNative(obj.position),
          obj.heading,
          obj.color.value,
          obj.size,
        );
    }

    static PointSprite? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = PointSpriteImpl.fromNative(ptr.cast<PointSpriteNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(PointSprite? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<PointSpriteNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of PointSprite "private" section.
