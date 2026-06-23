part of 'location_point.dart';

// LocationPoint "private" section, not exported.

final class LocationPointNative extends Struct {
    external PointNative point;
    @Int32()
    external int locationId;
    @Int32()
    external int sublocationId;
}

final LocationPointNative Function(PointNative, int, int) _LocationPointNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<LocationPointNative Function(PointNative, Int32, Int32)>>('navigine_sdk_flutter_LocationPoint_init')
  .asFunction<LocationPointNative Function(PointNative, int, int)>(isLeaf: true));

extension LocationPointImpl on LocationPoint  {
    static LocationPoint fromNative(LocationPointNative native, {bool takeOwnership = true})  {
        return LocationPoint(
          PointImpl.fromNative(native.point, takeOwnership: takeOwnership),
          native.locationId,
          native.sublocationId,
        );
    }

    static LocationPointNative toNative(LocationPoint obj)  {
        return _LocationPointNativeInit(
          PointImpl.toNative(obj.point),
          obj.locationId,
          obj.sublocationId,
        );
    }

    static LocationPoint? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = LocationPointImpl.fromNative(ptr.cast<LocationPointNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(LocationPoint? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<LocationPointNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of LocationPoint "private" section.
