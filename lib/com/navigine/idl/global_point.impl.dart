part of 'global_point.dart';

// GlobalPoint "private" section, not exported.

final class GlobalPointNative extends Struct {
    @Double()
    external double latitude;
    @Double()
    external double longitude;
}

final GlobalPointNative Function(double, double) _GlobalPointNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<GlobalPointNative Function(Double, Double)>>('navigine_sdk_flutter_GlobalPoint_init')
  .asFunction<GlobalPointNative Function(double, double)>(isLeaf: true));

extension GlobalPointImpl on GlobalPoint  {
    static GlobalPoint fromNative(GlobalPointNative native, {bool takeOwnership = true})  {
        return GlobalPoint(
          native.latitude,
          native.longitude,
        );
    }

    static GlobalPointNative toNative(GlobalPoint obj)  {
        return _GlobalPointNativeInit(
          obj.latitude,
          obj.longitude,
        );
    }

    static GlobalPoint? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = GlobalPointImpl.fromNative(ptr.cast<GlobalPointNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(GlobalPoint? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<GlobalPointNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of GlobalPoint "private" section.
