part of 'point.dart';

// Point "private" section, not exported.

final class PointNative extends Struct {
    @Float()
    external double x;
    @Float()
    external double y;
}

final PointNative Function(double, double) _PointNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<PointNative Function(Float, Float)>>('navigine_sdk_flutter_Point_init')
  .asFunction<PointNative Function(double, double)>(isLeaf: true));

extension PointImpl on Point  {
    static Point fromNative(PointNative native, {bool takeOwnership = true})  {
        return Point(
          native.x,
          native.y,
        );
    }

    static PointNative toNative(Point obj)  {
        return _PointNativeInit(
          obj.x,
          obj.y,
        );
    }

    static Point? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = PointImpl.fromNative(ptr.cast<PointNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(Point? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<PointNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of Point "private" section.
