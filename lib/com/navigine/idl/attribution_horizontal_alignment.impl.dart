part of 'attribution_horizontal_alignment.dart';

// AttributionHorizontalAlignment "private" section, not exported.

extension AttributionHorizontalAlignmentImpl on AttributionHorizontalAlignment  {
    static int toInt(AttributionHorizontalAlignment e) => e.index;

    static AttributionHorizontalAlignment fromInt(int val)  {
        if (val < 0 || val >= AttributionHorizontalAlignment.values.length) {
          throw StateError('Invalid numeric value $val for AttributionHorizontalAlignment enum.');
        }
        return AttributionHorizontalAlignment.values[val];
    }

    static AttributionHorizontalAlignment? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(AttributionHorizontalAlignment? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of AttributionHorizontalAlignment "private" section.
