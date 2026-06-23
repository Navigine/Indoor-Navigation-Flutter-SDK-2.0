part of 'join_type.dart';

// JoinType "private" section, not exported.

extension JoinTypeImpl on JoinType  {
    static int toInt(JoinType e) => e.index;

    static JoinType fromInt(int val)  {
        if (val < 0 || val >= JoinType.values.length) {
          throw StateError('Invalid numeric value $val for JoinType enum.');
        }
        return JoinType.values[val];
    }

    static JoinType? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(JoinType? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of JoinType "private" section.
