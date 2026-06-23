part of 'location_polygon.dart';

// LocationPolygon "private" section, not exported.

final class LocationPolygonNative extends Struct {
    external PolygonNative polygon;
    @Int32()
    external int locationId;
    @Int32()
    external int sublocationId;
}

final LocationPolygonNative Function(PolygonNative, int, int) _LocationPolygonNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<LocationPolygonNative Function(PolygonNative, Int32, Int32)>>('navigine_sdk_flutter_LocationPolygon_init')
  .asFunction<LocationPolygonNative Function(PolygonNative, int, int)>(isLeaf: true));

extension LocationPolygonImpl on LocationPolygon  {
    static LocationPolygon fromNative(LocationPolygonNative native, {bool takeOwnership = true})  {
        return LocationPolygon(
          PolygonImpl.fromNative(native.polygon, takeOwnership: takeOwnership),
          native.locationId,
          native.sublocationId,
        );
    }

    static LocationPolygonNative toNative(LocationPolygon obj)  {
        return _LocationPolygonNativeInit(
          PolygonImpl.toNative(obj.polygon),
          obj.locationId,
          obj.sublocationId,
        );
    }

    static LocationPolygon? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = LocationPolygonImpl.fromNative(ptr.cast<LocationPolygonNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(LocationPolygon? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<LocationPolygonNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of LocationPolygon "private" section.
