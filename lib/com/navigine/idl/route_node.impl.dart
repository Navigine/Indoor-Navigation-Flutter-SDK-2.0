part of 'route_node.dart';

// RouteNode "private" section, not exported.

final class RouteNodeNative extends Struct {
    external LocationPointNative point;
    @Float()
    external double weight;
    @Float()
    external double distance;
    external Pointer<Void> events;
}

final RouteNodeNative Function(LocationPointNative, double, double, Pointer<Void>) _RouteNodeNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<RouteNodeNative Function(LocationPointNative, Float, Float, Pointer<Void>)>>('navigine_sdk_flutter_RouteNode_init')
  .asFunction<RouteNodeNative Function(LocationPointNative, double, double, Pointer<Void>)>(isLeaf: true));

extension RouteNodeImpl on RouteNode  {
    static RouteNode fromNative(RouteNodeNative native, {bool takeOwnership = true})  {
        return RouteNode(
          LocationPointImpl.fromNative(native.point, takeOwnership: takeOwnership),
          native.weight,
          native.distance,
          ListRouteEventImpl.fromNativePtr(native.events),
        );
    }

    static RouteNodeNative toNative(RouteNode obj)  {
        return _RouteNodeNativeInit(
          LocationPointImpl.toNative(obj.point),
          obj.weight,
          obj.distance,
          ListRouteEventImpl.getNativePtr(obj.events),
        );
    }

    static RouteNode? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = RouteNodeImpl.fromNative(ptr.cast<RouteNodeNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(RouteNode? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<RouteNodeNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of RouteNode "private" section.
