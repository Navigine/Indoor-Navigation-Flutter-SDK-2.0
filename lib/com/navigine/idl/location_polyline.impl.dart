part of 'location_polyline.dart';

// LocationPolyline "private" section, not exported.

final class LocationPolylineNative extends Struct {
    external PolylineNative polyline;
    @Int32()
    external int locationId;
    @Int32()
    external int sublocationId;
}

final LocationPolylineNative Function(PolylineNative, int, int) _LocationPolylineNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<LocationPolylineNative Function(PolylineNative, Int32, Int32)>>('navigine_sdk_flutter_LocationPolyline_init')
  .asFunction<LocationPolylineNative Function(PolylineNative, int, int)>(isLeaf: true));

extension LocationPolylineImpl on LocationPolyline  {
    static LocationPolyline fromNative(LocationPolylineNative native, {bool takeOwnership = true})  {
        return LocationPolyline(
          PolylineImpl.fromNative(native.polyline, takeOwnership: takeOwnership),
          native.locationId,
          native.sublocationId,
        );
    }

    static LocationPolylineNative toNative(LocationPolyline obj)  {
        return _LocationPolylineNativeInit(
          PolylineImpl.toNative(obj.polyline),
          obj.locationId,
          obj.sublocationId,
        );
    }

    static LocationPolyline? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = LocationPolylineImpl.fromNative(ptr.cast<LocationPolylineNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(LocationPolyline? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<LocationPolylineNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of LocationPolyline "private" section.
