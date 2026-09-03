part of 'location_polygon.dart';

// LocationPolygon "private" section, not exported.

final class LocationPolygonNative extends Struct {
    external Pointer<Void> points;
    external Pointer<Void> sublocationId;
}

final LocationPolygonNative Function(Pointer<Void>, Pointer<Void>) _LocationPolygonNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<LocationPolygonNative Function(Pointer<Void>, Pointer<Void>)>>('navigine_sdk_flutter_LocationPolygon_init')
  .asFunction<LocationPolygonNative Function(Pointer<Void>, Pointer<Void>)>(isLeaf: true));

extension LocationPolygonImpl on LocationPolygon  {
    static LocationPolygon fromNative(LocationPolygonNative native, {bool takeOwnership = true})  {
        return LocationPolygon(
          ListGlobalPointImpl.fromNativePtr(native.points),
          toPlatformFromPointerInt32(native.sublocationId),
        );
    }

    static LocationPolygonNative toNative(LocationPolygon obj)  {
        return _LocationPolygonNativeInit(
          ListGlobalPointImpl.getNativePtr(obj.points),
          toNativePtrInt32(obj.sublocationId),
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
