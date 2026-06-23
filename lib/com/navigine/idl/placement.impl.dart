part of 'placement.dart';

// Placement "private" section, not exported.

extension PlacementImpl on Placement  {
    static int toInt(Placement e) => e.index;

    static Placement fromInt(int val)  {
        if (val < 0 || val >= Placement.values.length) {
          throw StateError('Invalid numeric value $val for Placement enum.');
        }
        return Placement.values[val];
    }

    static Placement? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(Placement? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of Placement "private" section.
