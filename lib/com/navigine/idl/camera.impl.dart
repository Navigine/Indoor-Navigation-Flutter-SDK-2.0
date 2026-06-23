part of 'camera.dart';

// Camera "private" section, not exported.

final class CameraNative extends Struct {
    external PointNative point;
    @Float()
    external double zoom;
    @Float()
    external double rotation;
    @Float()
    external double tilt;
}

final CameraNative Function(PointNative, double, double, double) _CameraNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<CameraNative Function(PointNative, Float, Float, Float)>>('navigine_sdk_flutter_Camera_init')
  .asFunction<CameraNative Function(PointNative, double, double, double)>(isLeaf: true));

extension CameraImpl on Camera  {
    static Camera fromNative(CameraNative native, {bool takeOwnership = true})  {
        return Camera(
          PointImpl.fromNative(native.point, takeOwnership: takeOwnership),
          native.zoom,
          native.rotation,
          native.tilt,
        );
    }

    static CameraNative toNative(Camera obj)  {
        return _CameraNativeInit(
          PointImpl.toNative(obj.point),
          obj.zoom,
          obj.rotation,
          obj.tilt,
        );
    }

    static Camera? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = CameraImpl.fromNative(ptr.cast<CameraNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(Camera? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<CameraNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of Camera "private" section.
