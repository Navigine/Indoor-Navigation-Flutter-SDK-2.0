part of 'route_layer_status.dart';

// RouteLayerStatus "private" section, not exported.

extension RouteLayerStatusImpl on RouteLayerStatus  {
    static int toInt(RouteLayerStatus e) => e.index;

    static RouteLayerStatus fromInt(int val)  {
        if (val < 0 || val >= RouteLayerStatus.values.length) {
          throw StateError('Invalid numeric value $val for RouteLayerStatus enum.');
        }
        return RouteLayerStatus.values[val];
    }

    static RouteLayerStatus? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(RouteLayerStatus? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of RouteLayerStatus "private" section.
