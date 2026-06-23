part of 'beacon_proximity_entry.dart';

// BeaconProximityEntry "private" section, not exported.

final class BeaconProximityEntryNative extends Struct {
    @Int32()
    external int major;
    @Int32()
    external int minor;
    external NativeString uuid;
    @Float()
    external double rssi;
    @Float()
    external double frequency;
    @Float()
    external double quality;
    external Pointer<Void> distance;
}

final BeaconProximityEntryNative Function(int, int, NativeString, double, double, double, Pointer<Void>) _BeaconProximityEntryNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<BeaconProximityEntryNative Function(Int32, Int32, NativeString, Float, Float, Float, Pointer<Void>)>>('navigine_sdk_flutter_BeaconProximityEntry_init')
  .asFunction<BeaconProximityEntryNative Function(int, int, NativeString, double, double, double, Pointer<Void>)>(isLeaf: true));

extension BeaconProximityEntryImpl on BeaconProximityEntry  {
    static BeaconProximityEntry fromNative(BeaconProximityEntryNative native, {bool takeOwnership = true})  {
        return BeaconProximityEntry(
          native.major,
          native.minor,
          toPlatformString(native.uuid, takeOwnership: takeOwnership),
          native.rssi,
          native.frequency,
          native.quality,
          toPlatformFromPointerFloat(native.distance),
        );
    }

    static BeaconProximityEntryNative toNative(BeaconProximityEntry obj)  {
        return _BeaconProximityEntryNativeInit(
          obj.major,
          obj.minor,
          toNativeString(obj.uuid),
          obj.rssi,
          obj.frequency,
          obj.quality,
          toNativePtrFloat(obj.distance),
        );
    }

    static BeaconProximityEntry? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = BeaconProximityEntryImpl.fromNative(ptr.cast<BeaconProximityEntryNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(BeaconProximityEntry? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<BeaconProximityEntryNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of BeaconProximityEntry "private" section.
