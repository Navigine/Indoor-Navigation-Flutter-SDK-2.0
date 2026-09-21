part of 'route_annotation_type.dart';

// RouteAnnotationType "private" section, not exported.

extension RouteAnnotationTypeImpl on RouteAnnotationType  {
    static int toInt(RouteAnnotationType e) => e.index;

    static RouteAnnotationType fromInt(int val)  {
        if (val < 0 || val >= RouteAnnotationType.values.length) {
          throw StateError('Invalid numeric value $val for RouteAnnotationType enum.');
        }
        return RouteAnnotationType.values[val];
    }

    static RouteAnnotationType? fromPointer(Pointer<Void> ptr, {bool needFree = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = fromInt(ptr.cast<Int32>().value);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(RouteAnnotationType? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<Int32>();
        result.value = toInt(val);
        return result.cast();
    }
}

// End of RouteAnnotationType "private" section.
