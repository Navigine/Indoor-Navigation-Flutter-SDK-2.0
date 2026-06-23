part of 'position.dart';

// Position "private" section, not exported.

final class PositionNative extends Struct {
    external GlobalPointNative point;
    @Double()
    external double accuracy;
    external Pointer<Void> heading;
    external Pointer<Void> headingAccuracy;
    external Pointer<Void> locationPoint;
    external Pointer<Void> locationHeading;
}

final PositionNative Function(GlobalPointNative, double, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>) _PositionNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<PositionNative Function(GlobalPointNative, Double, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>)>>('navigine_sdk_flutter_Position_init')
  .asFunction<PositionNative Function(GlobalPointNative, double, Pointer<Void>, Pointer<Void>, Pointer<Void>, Pointer<Void>)>(isLeaf: true));

extension PositionImpl on Position  {
    static Position fromNative(PositionNative native, {bool takeOwnership = true})  {
        return Position(
          GlobalPointImpl.fromNative(native.point, takeOwnership: takeOwnership),
          native.accuracy,
          toPlatformFromPointerDouble(native.heading),
          toPlatformFromPointerDouble(native.headingAccuracy),
          LocationPointImpl.fromPointer(native.locationPoint),
          toPlatformFromPointerDouble(native.locationHeading),
        );
    }

    static PositionNative toNative(Position obj)  {
        return _PositionNativeInit(
          GlobalPointImpl.toNative(obj.point),
          obj.accuracy,
          toNativePtrDouble(obj.heading),
          toNativePtrDouble(obj.headingAccuracy),
          LocationPointImpl.toPointer(obj.locationPoint),
          toNativePtrDouble(obj.locationHeading),
        );
    }

    static Position? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = PositionImpl.fromNative(ptr.cast<PositionNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(Position? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<PositionNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of Position "private" section.
