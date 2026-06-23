part of 'zone_event_type.dart';

// ZoneEventType "private" section, not exported.

extension ZoneEventTypeImpl on ZoneEventType  {
    static int toInt(ZoneEventType e) => e.index;

    static ZoneEventType fromInt(int val)  {
        if (val < 0 || val >= ZoneEventType.values.length) {
          throw StateError('Invalid numeric value $val for ZoneEventType enum.');
        }
        return ZoneEventType.values[val];
    }

    static ZoneEventType? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(ZoneEventType? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of ZoneEventType "private" section.
