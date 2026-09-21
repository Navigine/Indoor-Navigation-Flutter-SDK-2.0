part of 'attribution_vertical_alignment.dart';

// AttributionVerticalAlignment "private" section, not exported.

extension AttributionVerticalAlignmentImpl on AttributionVerticalAlignment  {
    static int toInt(AttributionVerticalAlignment e) => e.index;

    static AttributionVerticalAlignment fromInt(int val)  {
        if (val < 0 || val >= AttributionVerticalAlignment.values.length) {
          throw StateError('Invalid numeric value $val for AttributionVerticalAlignment enum.');
        }
        return AttributionVerticalAlignment.values[val];
    }

    static AttributionVerticalAlignment? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(AttributionVerticalAlignment? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of AttributionVerticalAlignment "private" section.
