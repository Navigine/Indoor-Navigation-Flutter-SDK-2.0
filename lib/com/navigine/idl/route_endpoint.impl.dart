part of 'route_endpoint.dart';

// RouteEndpoint "private" section, not exported.

final class RouteEndpointNative extends Struct {
    external GlobalPointNative point;
    external Pointer<Void> sublocationId;
}

final RouteEndpointNative Function(GlobalPointNative, Pointer<Void>) _RouteEndpointNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<RouteEndpointNative Function(GlobalPointNative, Pointer<Void>)>>('navigine_sdk_flutter_RouteEndpoint_init')
  .asFunction<RouteEndpointNative Function(GlobalPointNative, Pointer<Void>)>(isLeaf: true));

extension RouteEndpointImpl on RouteEndpoint  {
    static RouteEndpoint fromNative(RouteEndpointNative native, {bool takeOwnership = true})  {
        return RouteEndpoint(
          GlobalPointImpl.fromNative(native.point, takeOwnership: takeOwnership),
          toPlatformFromPointerInt32(native.sublocationId),
        );
    }

    static RouteEndpointNative toNative(RouteEndpoint obj)  {
        return _RouteEndpointNativeInit(
          GlobalPointImpl.toNative(obj.point),
          toNativePtrInt32(obj.sublocationId),
        );
    }

    static RouteEndpoint? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = RouteEndpointImpl.fromNative(ptr.cast<RouteEndpointNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(RouteEndpoint? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<RouteEndpointNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of RouteEndpoint "private" section.
