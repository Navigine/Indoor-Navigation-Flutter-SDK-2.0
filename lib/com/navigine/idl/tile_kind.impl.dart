part of 'tile_kind.dart';

// TileKind "private" section, not exported.

extension TileKindImpl on TileKind  {
    static int toInt(TileKind e) => e.index;

    static TileKind fromInt(int val)  {
        if (val < 0 || val >= TileKind.values.length) {
          throw StateError('Invalid numeric value $val for TileKind enum.');
        }
        return TileKind.values[val];
    }

    static TileKind? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(TileKind? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of TileKind "private" section.
