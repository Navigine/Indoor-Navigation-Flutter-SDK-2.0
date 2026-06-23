part of 'transition_entry_event.dart';

// TransitionEntryEvent "private" section, not exported.

final class TransitionEntryEventNative extends Struct {
    @Int64()
    external int from;
    @Int64()
    external int to;
}

final TransitionEntryEventNative Function(int, int) _TransitionEntryEventNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<TransitionEntryEventNative Function(Int64, Int64)>>('navigine_sdk_flutter_TransitionEntryEvent_init')
  .asFunction<TransitionEntryEventNative Function(int, int)>(isLeaf: true));

extension TransitionEntryEventImpl on TransitionEntryEvent  {
    static TransitionEntryEvent fromNative(TransitionEntryEventNative native, {bool takeOwnership = true})  {
        return TransitionEntryEvent(
          native.from,
          native.to,
        );
    }

    static TransitionEntryEventNative toNative(TransitionEntryEvent obj)  {
        return _TransitionEntryEventNativeInit(
          obj.from,
          obj.to,
        );
    }

    static TransitionEntryEvent? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = TransitionEntryEventImpl.fromNative(ptr.cast<TransitionEntryEventNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(TransitionEntryEvent? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<TransitionEntryEventNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of TransitionEntryEvent "private" section.
