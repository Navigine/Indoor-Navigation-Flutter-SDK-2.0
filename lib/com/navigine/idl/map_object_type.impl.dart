part of 'map_object_type.dart';

// MapObjectType "private" section, not exported.

extension MapObjectTypeImpl on MapObjectType  {
    static int toInt(MapObjectType e) => e.index;

    static MapObjectType fromInt(int val)  {
        if (val < 0 || val >= MapObjectType.values.length) {
          throw StateError('Invalid numeric value $val for MapObjectType enum.');
        }
        return MapObjectType.values[val];
    }

    static MapObjectType? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(MapObjectType? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of MapObjectType "private" section.
