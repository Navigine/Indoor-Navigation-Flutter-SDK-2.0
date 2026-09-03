part of 'location_polyline.dart';

// LocationPolyline "private" section, not exported.

final class LocationPolylineNative extends Struct {
    external Pointer<Void> points;
    external Pointer<Void> sublocationId;
}

final LocationPolylineNative Function(Pointer<Void>, Pointer<Void>) _LocationPolylineNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<LocationPolylineNative Function(Pointer<Void>, Pointer<Void>)>>('navigine_sdk_flutter_LocationPolyline_init')
  .asFunction<LocationPolylineNative Function(Pointer<Void>, Pointer<Void>)>(isLeaf: true));

extension LocationPolylineImpl on LocationPolyline  {
    static LocationPolyline fromNative(LocationPolylineNative native, {bool takeOwnership = true})  {
        return LocationPolyline(
          ListGlobalPointImpl.fromNativePtr(native.points),
          toPlatformFromPointerInt32(native.sublocationId),
        );
    }

    static LocationPolylineNative toNative(LocationPolyline obj)  {
        return _LocationPolylineNativeInit(
          ListGlobalPointImpl.getNativePtr(obj.points),
          toNativePtrInt32(obj.sublocationId),
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
