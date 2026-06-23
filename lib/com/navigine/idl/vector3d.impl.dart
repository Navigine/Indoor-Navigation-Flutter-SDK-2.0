part of 'vector3d.dart';

// Vector3d "private" section, not exported.

final class Vector3dNative extends Struct {
    @Float()
    external double x;
    @Float()
    external double y;
    @Float()
    external double z;
}

final Vector3dNative Function(double, double, double) _Vector3dNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<Vector3dNative Function(Float, Float, Float)>>('navigine_sdk_flutter_Vector3d_init')
  .asFunction<Vector3dNative Function(double, double, double)>(isLeaf: true));

extension Vector3dImpl on Vector3d  {
    static Vector3d fromNative(Vector3dNative native, {bool takeOwnership = true})  {
        return Vector3d(
          native.x,
          native.y,
          native.z,
        );
    }

    static Vector3dNative toNative(Vector3d obj)  {
        return _Vector3dNativeInit(
          obj.x,
          obj.y,
          obj.z,
        );
    }

    static Vector3d? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = Vector3dImpl.fromNative(ptr.cast<Vector3dNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(Vector3d? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Vector3dNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of Vector3d "private" section.
