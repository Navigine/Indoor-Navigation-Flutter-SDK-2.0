part of 'route_progress.dart';

// RouteProgress "private" section, not exported.

final class RouteProgressNative extends Struct {
    external GlobalPointNative point;
    external Pointer<Void> sublocationId;
    @Float()
    external double advance;
    @Float()
    external double remainingDistance;
    @Int32()
    external int legIndex;
}

final RouteProgressNative Function(GlobalPointNative, Pointer<Void>, double, double, int) _RouteProgressNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<RouteProgressNative Function(GlobalPointNative, Pointer<Void>, Float, Float, Int32)>>('navigine_sdk_flutter_RouteProgress_init')
  .asFunction<RouteProgressNative Function(GlobalPointNative, Pointer<Void>, double, double, int)>(isLeaf: true));

extension RouteProgressImpl on RouteProgress  {
    static RouteProgress fromNative(RouteProgressNative native, {bool takeOwnership = true})  {
        return RouteProgress(
          GlobalPointImpl.fromNative(native.point, takeOwnership: takeOwnership),
          toPlatformFromPointerInt32(native.sublocationId),
          native.advance,
          native.remainingDistance,
          native.legIndex,
        );
    }

    static RouteProgressNative toNative(RouteProgress obj)  {
        return _RouteProgressNativeInit(
          GlobalPointImpl.toNative(obj.point),
          toNativePtrInt32(obj.sublocationId),
          obj.advance,
          obj.remainingDistance,
          obj.legIndex,
        );
    }

    static RouteProgress? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = RouteProgressImpl.fromNative(ptr.cast<RouteProgressNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(RouteProgress? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<RouteProgressNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of RouteProgress "private" section.
