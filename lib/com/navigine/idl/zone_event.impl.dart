part of 'zone_event.dart';

// ZoneEvent "private" section, not exported.

final class ZoneEventNative extends Struct {
    @Uint32()
    external int type;
    @Int32()
    external int locationId;
    @Int32()
    external int sublocationId;
    @Int32()
    external int id;
    external NativeString name;
    external NativeString alias;
}

final ZoneEventNative Function(int, int, int, int, NativeString, NativeString) _ZoneEventNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<ZoneEventNative Function(Uint32, Int32, Int32, Int32, NativeString, NativeString)>>('navigine_sdk_flutter_ZoneEvent_init')
  .asFunction<ZoneEventNative Function(int, int, int, int, NativeString, NativeString)>(isLeaf: true));

extension ZoneEventImpl on ZoneEvent  {
    static ZoneEvent fromNative(ZoneEventNative native, {bool takeOwnership = true})  {
        return ZoneEvent(
          ZoneEventTypeImpl.fromInt(native.type),
          native.locationId,
          native.sublocationId,
          native.id,
          toPlatformString(native.name, takeOwnership: takeOwnership),
          toPlatformString(native.alias, takeOwnership: takeOwnership),
        );
    }

    static ZoneEventNative toNative(ZoneEvent obj)  {
        return _ZoneEventNativeInit(
          ZoneEventTypeImpl.toInt(obj.type),
          obj.locationId,
          obj.sublocationId,
          obj.id,
          toNativeString(obj.name),
          toNativeString(obj.alias),
        );
    }

    static ZoneEvent? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = ZoneEventImpl.fromNative(ptr.cast<ZoneEventNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(ZoneEvent? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<ZoneEventNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of ZoneEvent "private" section.
