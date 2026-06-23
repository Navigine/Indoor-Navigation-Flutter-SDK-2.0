part of 'target_reached_event.dart';

// TargetReachedEvent "private" section, not exported.

final class TargetReachedEventNative extends Struct {
    @Int64()
    external int index;
    external LocationPointNative point;
}

final TargetReachedEventNative Function(int, LocationPointNative) _TargetReachedEventNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<TargetReachedEventNative Function(Int64, LocationPointNative)>>('navigine_sdk_flutter_TargetReachedEvent_init')
  .asFunction<TargetReachedEventNative Function(int, LocationPointNative)>(isLeaf: true));

extension TargetReachedEventImpl on TargetReachedEvent  {
    static TargetReachedEvent fromNative(TargetReachedEventNative native, {bool takeOwnership = true})  {
        return TargetReachedEvent(
          native.index,
          LocationPointImpl.fromNative(native.point, takeOwnership: takeOwnership),
        );
    }

    static TargetReachedEventNative toNative(TargetReachedEvent obj)  {
        return _TargetReachedEventNativeInit(
          obj.index,
          LocationPointImpl.toNative(obj.point),
        );
    }

    static TargetReachedEvent? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = TargetReachedEventImpl.fromNative(ptr.cast<TargetReachedEventNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(TargetReachedEvent? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<TargetReachedEventNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of TargetReachedEvent "private" section.
