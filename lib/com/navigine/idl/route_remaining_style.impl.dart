part of 'route_remaining_style.dart';

// RouteRemainingStyle "private" section, not exported.

extension RouteRemainingStyleImpl on RouteRemainingStyle  {
    static int toInt(RouteRemainingStyle e) => e.index;

    static RouteRemainingStyle fromInt(int val)  {
        if (val < 0 || val >= RouteRemainingStyle.values.length) {
          throw StateError('Invalid numeric value $val for RouteRemainingStyle enum.');
        }
        return RouteRemainingStyle.values[val];
    }

    static RouteRemainingStyle? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(RouteRemainingStyle? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of RouteRemainingStyle "private" section.
