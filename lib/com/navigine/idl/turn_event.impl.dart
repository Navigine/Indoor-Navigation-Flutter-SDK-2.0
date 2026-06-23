part of 'turn_event.dart';

// TurnEvent "private" section, not exported.

final class TurnEventNative extends Struct {
    @Uint32()
    external int type;
    @Int32()
    external int angle;
}

final TurnEventNative Function(int, int) _TurnEventNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<TurnEventNative Function(Uint32, Int32)>>('navigine_sdk_flutter_TurnEvent_init')
  .asFunction<TurnEventNative Function(int, int)>(isLeaf: true));

extension TurnEventImpl on TurnEvent  {
    static TurnEvent fromNative(TurnEventNative native, {bool takeOwnership = true})  {
        return TurnEvent(
          TurnTypeImpl.fromInt(native.type),
          native.angle,
        );
    }

    static TurnEventNative toNative(TurnEvent obj)  {
        return _TurnEventNativeInit(
          TurnTypeImpl.toInt(obj.type),
          obj.angle,
        );
    }

    static TurnEvent? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = TurnEventImpl.fromNative(ptr.cast<TurnEventNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(TurnEvent? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<TurnEventNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of TurnEvent "private" section.
