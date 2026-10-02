part of 'route_simulator_sample.dart';

// RouteSimulatorSample "private" section, not exported.

final class RouteSimulatorSampleNative extends Struct {
    external GlobalPointNative point;
    external Pointer<Void> sublocationId;
    @Float()
    external double advance;
    @Float()
    external double heading;
}

final RouteSimulatorSampleNative Function(GlobalPointNative, Pointer<Void>, double, double) _RouteSimulatorSampleNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<RouteSimulatorSampleNative Function(GlobalPointNative, Pointer<Void>, Float, Float)>>('navigine_sdk_flutter_RouteSimulatorSample_init')
  .asFunction<RouteSimulatorSampleNative Function(GlobalPointNative, Pointer<Void>, double, double)>(isLeaf: true));

extension RouteSimulatorSampleImpl on RouteSimulatorSample  {
    static RouteSimulatorSample fromNative(RouteSimulatorSampleNative native, {bool takeOwnership = true})  {
        return RouteSimulatorSample(
          GlobalPointImpl.fromNative(native.point, takeOwnership: takeOwnership),
          toPlatformFromPointerInt32(native.sublocationId),
          native.advance,
          native.heading,
        );
    }

    static RouteSimulatorSampleNative toNative(RouteSimulatorSample obj)  {
        return _RouteSimulatorSampleNativeInit(
          GlobalPointImpl.toNative(obj.point),
          toNativePtrInt32(obj.sublocationId),
          obj.advance,
          obj.heading,
        );
    }

    static RouteSimulatorSample? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = RouteSimulatorSampleImpl.fromNative(ptr.cast<RouteSimulatorSampleNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(RouteSimulatorSample? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<RouteSimulatorSampleNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of RouteSimulatorSample "private" section.
