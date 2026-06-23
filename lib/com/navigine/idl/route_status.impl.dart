part of 'route_status.dart';

// RouteStatus "private" section, not exported.

extension RouteStatusImpl on RouteStatus  {
    static int toInt(RouteStatus e) => e.index;

    static RouteStatus fromInt(int val)  {
        if (val < 0 || val >= RouteStatus.values.length) {
          throw StateError('Invalid numeric value $val for RouteStatus enum.');
        }
        return RouteStatus.values[val];
    }

    static RouteStatus? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(RouteStatus? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of RouteStatus "private" section.
