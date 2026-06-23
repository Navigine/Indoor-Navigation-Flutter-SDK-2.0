part of 'rectangle.dart';

// Rectangle "private" section, not exported.

final class RectangleNative extends Struct {
    @Int32()
    external int x;
    @Int32()
    external int y;
    @Int32()
    external int width;
    @Int32()
    external int height;
}

final RectangleNative Function(int, int, int, int) _RectangleNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<RectangleNative Function(Int32, Int32, Int32, Int32)>>('navigine_sdk_flutter_Rectangle_init')
  .asFunction<RectangleNative Function(int, int, int, int)>(isLeaf: true));

extension RectangleImpl on Rectangle  {
    static Rectangle fromNative(RectangleNative native, {bool takeOwnership = true})  {
        return Rectangle(
          native.x,
          native.y,
          native.width,
          native.height,
        );
    }

    static RectangleNative toNative(Rectangle obj)  {
        return _RectangleNativeInit(
          obj.x,
          obj.y,
          obj.width,
          obj.height,
        );
    }

    static Rectangle? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = RectangleImpl.fromNative(ptr.cast<RectangleNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(Rectangle? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<RectangleNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of Rectangle "private" section.
