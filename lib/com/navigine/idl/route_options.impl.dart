part of 'route_options.dart';

// RouteOptions "private" section, not exported.

final class RouteOptionsNative extends Struct {
    @Double()
    external double smoothRadius;
    @Double()
    external double maxProjectionDistance;
    @Double()
    external double maxAdvance;
}

final RouteOptionsNative Function(double, double, double) _RouteOptionsNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<RouteOptionsNative Function(Double, Double, Double)>>('navigine_sdk_flutter_RouteOptions_init')
  .asFunction<RouteOptionsNative Function(double, double, double)>(isLeaf: true));

extension RouteOptionsImpl on RouteOptions  {
    static RouteOptions fromNative(RouteOptionsNative native, {bool takeOwnership = true})  {
        return RouteOptions(
          smoothRadius: native.smoothRadius,
          maxProjectionDistance: native.maxProjectionDistance,
          maxAdvance: native.maxAdvance,
        );
    }

    static RouteOptionsNative toNative(RouteOptions obj)  {
        return _RouteOptionsNativeInit(
          obj.smoothRadius,
          obj.maxProjectionDistance,
          obj.maxAdvance,
        );
    }

    static RouteOptions? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = RouteOptionsImpl.fromNative(ptr.cast<RouteOptionsNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(RouteOptions? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<RouteOptionsNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of RouteOptions "private" section.
