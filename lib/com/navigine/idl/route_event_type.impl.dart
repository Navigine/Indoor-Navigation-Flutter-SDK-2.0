part of 'route_event_type.dart';

// RouteEventType "private" section, not exported.

extension RouteEventTypeImpl on RouteEventType  {
    static int toInt(RouteEventType e) => e.index;

    static RouteEventType fromInt(int val)  {
        if (val < 0 || val >= RouteEventType.values.length) {
          throw StateError('Invalid numeric value $val for RouteEventType enum.');
        }
        return RouteEventType.values[val];
    }

    static RouteEventType? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(RouteEventType? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of RouteEventType "private" section.
