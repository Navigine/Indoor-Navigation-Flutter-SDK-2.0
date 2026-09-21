part of 'tile_schema.dart';

// TileSchema "private" section, not exported.

extension TileSchemaImpl on TileSchema  {
    static int toInt(TileSchema e) => e.index;

    static TileSchema fromInt(int val)  {
        if (val < 0 || val >= TileSchema.values.length) {
          throw StateError('Invalid numeric value $val for TileSchema enum.');
        }
        return TileSchema.values[val];
    }

    static TileSchema? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(TileSchema? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of TileSchema "private" section.
