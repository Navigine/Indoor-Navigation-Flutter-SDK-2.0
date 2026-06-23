part of 'map_filter_condition.dart';

// MapFilterCondition "private" section, not exported.

final class MapFilterConditionNative extends Struct {
    external NativeString property;
    external Pointer<Void> values;
}

final MapFilterConditionNative Function(NativeString, Pointer<Void>) _MapFilterConditionNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<MapFilterConditionNative Function(NativeString, Pointer<Void>)>>('navigine_sdk_flutter_MapFilterCondition_init')
  .asFunction<MapFilterConditionNative Function(NativeString, Pointer<Void>)>(isLeaf: true));

extension MapFilterConditionImpl on MapFilterCondition  {
    static MapFilterCondition fromNative(MapFilterConditionNative native, {bool takeOwnership = true})  {
        return MapFilterCondition(
          toPlatformString(native.property, takeOwnership: takeOwnership),
          ListStringImpl.fromNativePtr(native.values),
        );
    }

    static MapFilterConditionNative toNative(MapFilterCondition obj)  {
        return _MapFilterConditionNativeInit(
          toNativeString(obj.property),
          ListStringImpl.getNativePtr(obj.values),
        );
    }

    static MapFilterCondition? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = MapFilterConditionImpl.fromNative(ptr.cast<MapFilterConditionNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(MapFilterCondition? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<MapFilterConditionNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of MapFilterCondition "private" section.
