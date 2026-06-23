part of 'debug_flag.dart';

// DebugFlag "private" section, not exported.

extension DebugFlagImpl on DebugFlag  {
    static int toInt(DebugFlag e) => e.index;

    static DebugFlag fromInt(int val)  {
        if (val < 0 || val >= DebugFlag.values.length) {
          throw StateError('Invalid numeric value $val for DebugFlag enum.');
        }
        return DebugFlag.values[val];
    }

    static DebugFlag? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(DebugFlag? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of DebugFlag "private" section.
