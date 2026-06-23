part of 'line.dart';

// Line "private" section, not exported.

final class LineNative extends Struct {
    external Pointer<Void> segments;
}

final LineNative Function(Pointer<Void>) _LineNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<LineNative Function(Pointer<Void>)>>('navigine_sdk_flutter_Line_init')
  .asFunction<LineNative Function(Pointer<Void>)>(isLeaf: true));

extension LineImpl on Line  {
    static Line fromNative(LineNative native, {bool takeOwnership = true})  {
        return Line(
          ListSegmentImpl.fromNativePtr(native.segments),
        );
    }

    static LineNative toNative(Line obj)  {
        return _LineNativeInit(
          ListSegmentImpl.getNativePtr(obj.segments),
        );
    }

    static Line? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = LineImpl.fromNative(ptr.cast<LineNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(Line? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<LineNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of Line "private" section.
