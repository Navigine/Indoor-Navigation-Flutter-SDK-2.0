part of 'map_theme.dart';

// MapTheme "private" section, not exported.

extension MapThemeImpl on MapTheme  {
    static int toInt(MapTheme e) => e.index;

    static MapTheme fromInt(int val)  {
        if (val < 0 || val >= MapTheme.values.length) {
          throw StateError('Invalid numeric value $val for MapTheme enum.');
        }
        return MapTheme.values[val];
    }

    static MapTheme? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(MapTheme? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of MapTheme "private" section.
