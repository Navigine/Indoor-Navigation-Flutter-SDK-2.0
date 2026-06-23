part of 'animation_type.dart';

// AnimationType "private" section, not exported.

extension AnimationTypeImpl on AnimationType  {
    static int toInt(AnimationType e) => e.index;

    static AnimationType fromInt(int val)  {
        if (val < 0 || val >= AnimationType.values.length) {
          throw StateError('Invalid numeric value $val for AnimationType enum.');
        }
        return AnimationType.values[val];
    }

    static AnimationType? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(AnimationType? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of AnimationType "private" section.
