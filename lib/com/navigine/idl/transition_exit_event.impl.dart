part of 'transition_exit_event.dart';

// TransitionExitEvent "private" section, not exported.

final class TransitionExitEventNative extends Struct {
    @Int64()
    external int from;
    @Int64()
    external int to;
}

final TransitionExitEventNative Function(int, int) _TransitionExitEventNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<TransitionExitEventNative Function(Int64, Int64)>>('navigine_sdk_flutter_TransitionExitEvent_init')
  .asFunction<TransitionExitEventNative Function(int, int)>(isLeaf: true));

extension TransitionExitEventImpl on TransitionExitEvent  {
    static TransitionExitEvent fromNative(TransitionExitEventNative native, {bool takeOwnership = true})  {
        return TransitionExitEvent(
          native.from,
          native.to,
        );
    }

    static TransitionExitEventNative toNative(TransitionExitEvent obj)  {
        return _TransitionExitEventNativeInit(
          obj.from,
          obj.to,
        );
    }

    static TransitionExitEvent? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = TransitionExitEventImpl.fromNative(ptr.cast<TransitionExitEventNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(TransitionExitEvent? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<TransitionExitEventNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of TransitionExitEvent "private" section.
