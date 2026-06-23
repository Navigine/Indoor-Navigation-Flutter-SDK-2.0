part of 'sensor_type.dart';

// SensorType "private" section, not exported.

extension SensorTypeImpl on SensorType  {
    static int toInt(SensorType e) => e.index;

    static SensorType fromInt(int val)  {
        if (val < 0 || val >= SensorType.values.length) {
          throw StateError('Invalid numeric value $val for SensorType enum.');
        }
        return SensorType.values[val];
    }

    static SensorType? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(SensorType? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of SensorType "private" section.
