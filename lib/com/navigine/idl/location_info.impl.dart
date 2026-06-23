part of 'location_info.dart';

// LocationInfo "private" section, not exported.

final class LocationInfoNative extends Struct {
    @Int32()
    external int id;
    @Int32()
    external int version;
    external NativeString name;
}

final LocationInfoNative Function(int, int, NativeString) _LocationInfoNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<LocationInfoNative Function(Int32, Int32, NativeString)>>('navigine_sdk_flutter_LocationInfo_init')
  .asFunction<LocationInfoNative Function(int, int, NativeString)>(isLeaf: true));

extension LocationInfoImpl on LocationInfo  {
    static LocationInfo fromNative(LocationInfoNative native, {bool takeOwnership = true})  {
        return LocationInfo(
          native.id,
          native.version,
          toPlatformString(native.name, takeOwnership: takeOwnership),
        );
    }

    static LocationInfoNative toNative(LocationInfo obj)  {
        return _LocationInfoNativeInit(
          obj.id,
          obj.version,
          toNativeString(obj.name),
        );
    }

    static LocationInfo? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = LocationInfoImpl.fromNative(ptr.cast<LocationInfoNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(LocationInfo? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<LocationInfoNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of LocationInfo "private" section.
