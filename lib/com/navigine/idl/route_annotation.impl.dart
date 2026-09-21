part of 'route_annotation.dart';

// RouteAnnotation "private" section, not exported.

final class RouteAnnotationNative extends Struct {
    @Uint32()
    external int type;
    external GlobalPointNative point;
    external Pointer<Void> sublocationId;
    @Float()
    external double advance;
    external Pointer<Void> title;
}

final RouteAnnotationNative Function(int, GlobalPointNative, Pointer<Void>, double, Pointer<Void>) _RouteAnnotationNativeInit = __lib.catchArgumentError(() => __lib.nativeLibrary
  .lookup<NativeFunction<RouteAnnotationNative Function(Uint32, GlobalPointNative, Pointer<Void>, Float, Pointer<Void>)>>('navigine_sdk_flutter_RouteAnnotation_init')
  .asFunction<RouteAnnotationNative Function(int, GlobalPointNative, Pointer<Void>, double, Pointer<Void>)>(isLeaf: true));

extension RouteAnnotationImpl on RouteAnnotation  {
    static RouteAnnotation fromNative(RouteAnnotationNative native, {bool takeOwnership = true})  {
        return RouteAnnotation(
          RouteAnnotationTypeImpl.fromInt(native.type),
          GlobalPointImpl.fromNative(native.point, takeOwnership: takeOwnership),
          toPlatformFromPointerInt32(native.sublocationId),
          native.advance,
          toPlatformFromPointerString(native.title),
        );
    }

    static RouteAnnotationNative toNative(RouteAnnotation obj)  {
        return _RouteAnnotationNativeInit(
          RouteAnnotationTypeImpl.toInt(obj.type),
          GlobalPointImpl.toNative(obj.point),
          toNativePtrInt32(obj.sublocationId),
          obj.advance,
          toNativePtrString(obj.title),
        );
    }

    static RouteAnnotation? fromPointer(Pointer<Void> ptr, {bool needFree = true, bool takeOwnership = true})  {
        if (ptr == nullptr) {
          return null;
        }
        final result = RouteAnnotationImpl.fromNative(ptr.cast<RouteAnnotationNative>().ref, takeOwnership: takeOwnership);
        if (needFree) {
          malloc.free(ptr);
        }
        return result;
    }

    static Pointer<Void> toPointer(RouteAnnotation? val)  {
        if (val == null) {
          return nullptr;
        }
        final result = malloc<RouteAnnotationNative>();
        result.ref = toNative(val);
        return result.cast();
    }
}

// End of RouteAnnotation "private" section.
