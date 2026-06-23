part of 'reference_entry_type.dart';

// ReferenceEntryType "private" section, not exported.

extension ReferenceEntryTypeImpl on ReferenceEntryType  {
    static int toInt(ReferenceEntryType e) => e.index;

    static ReferenceEntryType fromInt(int val)  {
        if (val < 0 || val >= ReferenceEntryType.values.length) {
          throw StateError('Invalid numeric value $val for ReferenceEntryType enum.');
        }
        return ReferenceEntryType.values[val];
    }

    static ReferenceEntryType? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(ReferenceEntryType? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of ReferenceEntryType "private" section.
