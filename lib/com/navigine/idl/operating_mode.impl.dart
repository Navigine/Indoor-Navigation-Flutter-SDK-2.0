part of 'operating_mode.dart';

// OperatingMode "private" section, not exported.

extension OperatingModeImpl on OperatingMode  {
    static int toInt(OperatingMode e) => e.index;

    static OperatingMode fromInt(int val)  {
        if (val < 0 || val >= OperatingMode.values.length) {
          throw StateError('Invalid numeric value $val for OperatingMode enum.');
        }
        return OperatingMode.values[val];
    }

    static OperatingMode? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(OperatingMode? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of OperatingMode "private" section.
