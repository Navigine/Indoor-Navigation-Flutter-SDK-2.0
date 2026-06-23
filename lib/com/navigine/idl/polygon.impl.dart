part of 'polygon.dart';

// Polygon "private" section, not exported.

final class PolygonNative extends Struct {
    external Pointer<Void> points;
}

final PolygonNative Function(Pointer<Void>) _PolygonNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<PolygonNative Function(Pointer<Void>)>>('navigine_sdk_flutter_Polygon_init')
  .asFunction<PolygonNative Function(Pointer<Void>)>(isLeaf: true));

extension PolygonImpl on Polygon  {
    static Polygon fromNative(PolygonNative native, {bool takeOwnership = true})  {
        return Polygon(
          ListPointImpl.fromNativePtr(native.points),
        );
    }

    static PolygonNative toNative(Polygon obj)  {
        return _PolygonNativeInit(
          ListPointImpl.getNativePtr(obj.points),
        );
    }

    static Polygon? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = PolygonImpl.fromNative(ptr.cast<PolygonNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(Polygon? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<PolygonNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of Polygon "private" section.
