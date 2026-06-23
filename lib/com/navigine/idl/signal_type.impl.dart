part of 'signal_type.dart';

// SignalType "private" section, not exported.

extension SignalTypeImpl on SignalType  {
    static int toInt(SignalType e) => e.index;

    static SignalType fromInt(int val)  {
        if (val < 0 || val >= SignalType.values.length) {
          throw StateError('Invalid numeric value $val for SignalType enum.');
        }
        return SignalType.values[val];
    }

    static SignalType? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(SignalType? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of SignalType "private" section.
