part of 'cap_type.dart';

// CapType "private" section, not exported.

extension CapTypeImpl on CapType  {
    static int toInt(CapType e) => e.index;

    static CapType fromInt(int val)  {
        if (val < 0 || val >= CapType.values.length) {
          throw StateError('Invalid numeric value $val for CapType enum.');
        }
        return CapType.values[val];
    }

    static CapType? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(CapType? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of CapType "private" section.
