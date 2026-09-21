part of 'screen_rect.dart';

// ScreenRect "private" section, not exported.

final class ScreenRectNative extends Struct {
    external ScreenPointNative topLeft;
    external ScreenPointNative bottomRight;
}

final ScreenRectNative Function(ScreenPointNative, ScreenPointNative) _ScreenRectNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<ScreenRectNative Function(ScreenPointNative, ScreenPointNative)>>('navigine_sdk_flutter_ScreenRect_init')
  .asFunction<ScreenRectNative Function(ScreenPointNative, ScreenPointNative)>(isLeaf: true));

extension ScreenRectImpl on ScreenRect  {
    static ScreenRect fromNative(ScreenRectNative native, {bool takeOwnership = true})  {
        return ScreenRect(
          ScreenPointImpl.fromNative(native.topLeft),
          ScreenPointImpl.fromNative(native.bottomRight),
        );
    }

    static ScreenRectNative toNative(ScreenRect obj)  {
        return _ScreenRectNativeInit(
          ScreenPointImpl.toNative(obj.topLeft),
          ScreenPointImpl.toNative(obj.bottomRight),
        );
    }

    static ScreenRect? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = ScreenRectImpl.fromNative(ptr.cast<ScreenRectNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(ScreenRect? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<ScreenRectNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of ScreenRect "private" section.
