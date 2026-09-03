part of 'title_anchor.dart';

// TitleAnchor "private" section, not exported.

extension TitleAnchorImpl on TitleAnchor  {
    static int toInt(TitleAnchor e) => e.index;

    static TitleAnchor fromInt(int val)  {
        if (val < 0 || val >= TitleAnchor.values.length) {
          throw StateError('Invalid numeric value $val for TitleAnchor enum.');
        }
        return TitleAnchor.values[val];
    }

    static TitleAnchor? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(TitleAnchor? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of TitleAnchor "private" section.
