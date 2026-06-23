part of 'turn_type.dart';

// TurnType "private" section, not exported.

extension TurnTypeImpl on TurnType  {
    static int toInt(TurnType e) => e.index;

    static TurnType fromInt(int val)  {
        if (val < 0 || val >= TurnType.values.length) {
          throw StateError('Invalid numeric value $val for TurnType enum.');
        }
        return TurnType.values[val];
    }

    static TurnType? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(TurnType? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of TurnType "private" section.
