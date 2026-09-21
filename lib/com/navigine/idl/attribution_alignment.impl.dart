part of 'attribution_alignment.dart';

// AttributionAlignment "private" section, not exported.

final class AttributionAlignmentNative extends Struct {
    @Uint32()
    external int horizontalAlignment;
    @Uint32()
    external int verticalAlignment;
}

final AttributionAlignmentNative Function(int, int) _AttributionAlignmentNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<AttributionAlignmentNative Function(Uint32, Uint32)>>('navigine_sdk_flutter_AttributionAlignment_init')
  .asFunction<AttributionAlignmentNative Function(int, int)>(isLeaf: true));

extension AttributionAlignmentImpl on AttributionAlignment  {
    static AttributionAlignment fromNative(AttributionAlignmentNative native, {bool takeOwnership = true})  {
        return AttributionAlignment(
          horizontalAlignment: AttributionHorizontalAlignmentImpl.fromInt(native.horizontalAlignment),
          verticalAlignment: AttributionVerticalAlignmentImpl.fromInt(native.verticalAlignment),
        );
    }

    static AttributionAlignmentNative toNative(AttributionAlignment obj)  {
        return _AttributionAlignmentNativeInit(
          AttributionHorizontalAlignmentImpl.toInt(obj.horizontalAlignment),
          AttributionVerticalAlignmentImpl.toInt(obj.verticalAlignment),
        );
    }

    static AttributionAlignment? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = AttributionAlignmentImpl.fromNative(ptr.cast<AttributionAlignmentNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(AttributionAlignment? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<AttributionAlignmentNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of AttributionAlignment "private" section.
