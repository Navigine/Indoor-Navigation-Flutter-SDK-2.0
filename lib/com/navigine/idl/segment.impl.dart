part of 'segment.dart';

// Segment "private" section, not exported.

final class SegmentNative extends Struct {
    external PointNative start;
    external PointNative end;
}

final SegmentNative Function(PointNative, PointNative) _SegmentNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<SegmentNative Function(PointNative, PointNative)>>('navigine_sdk_flutter_Segment_init')
  .asFunction<SegmentNative Function(PointNative, PointNative)>(isLeaf: true));

extension SegmentImpl on Segment  {
    static Segment fromNative(SegmentNative native, {bool takeOwnership = true})  {
        return Segment(
          PointImpl.fromNative(native.start, takeOwnership: takeOwnership),
          PointImpl.fromNative(native.end, takeOwnership: takeOwnership),
        );
    }

    static SegmentNative toNative(Segment obj)  {
        return _SegmentNativeInit(
          PointImpl.toNative(obj.start),
          PointImpl.toNative(obj.end),
        );
    }

    static Segment? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = SegmentImpl.fromNative(ptr.cast<SegmentNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(Segment? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<SegmentNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of Segment "private" section.
