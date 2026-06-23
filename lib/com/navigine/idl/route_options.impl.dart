part of 'route_options.dart';

// RouteOptions "private" section, not exported.

final class RouteOptionsNative extends Struct {
    external Pointer<Void> smoothRadius;
    external Pointer<Void> maxProjectionDistance;
    external Pointer<Void> maxAdvance;
}

final RouteOptionsNative Function(Pointer<Void>, Pointer<Void>, Pointer<Void>) _RouteOptionsNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<RouteOptionsNative Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)>>('navigine_sdk_flutter_RouteOptions_init')
  .asFunction<RouteOptionsNative Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)>(isLeaf: true));

extension RouteOptionsImpl on RouteOptions  {
    static RouteOptions fromNative(RouteOptionsNative native, {bool takeOwnership = true})  {
        return RouteOptions(
          toPlatformFromPointerDouble(native.smoothRadius),
          toPlatformFromPointerDouble(native.maxProjectionDistance),
          toPlatformFromPointerDouble(native.maxAdvance),
        );
    }

    static RouteOptionsNative toNative(RouteOptions obj)  {
        return _RouteOptionsNativeInit(
          toNativePtrDouble(obj.smoothRadius),
          toNativePtrDouble(obj.maxProjectionDistance),
          toNativePtrDouble(obj.maxAdvance),
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
