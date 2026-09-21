part of 'route_view.dart';

// RouteView "private" section, not exported.

final _navigine_sdk_flutter_RouteView_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteView_check'));

final _navigine_sdk_flutter_RouteView_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_RouteView_free');


class RouteView$Impl implements RouteView, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_RouteView_free.cast());

    RouteView$Impl.fromExternalPtr(this.ptr);

    @internal
    RouteView$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory RouteView$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_RouteView_check(ptr);

    static Pointer<Void> getNativePtr(RouteView? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as RouteView$Impl).ptr;
    }

    static RouteView? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return RouteView$Impl.fromNativePtr(ptr);
    }

    @override
    int id() {
        final _idFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int64 Function(Pointer<Void>, ),
            int Function(Pointer<Void>, )
          >('navigine_sdk_flutter_RouteView_id'));
        final __resultHandle = _idFfi(this.ptr, );
        final _result = __resultHandle;
        exception.checkCallResult();
        return _result;
    }

    @override
    List<LocationPolyline> geometry() {
        final _geometryFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_RouteView_geometry'));
        final __resultHandle = _geometryFfi(this.ptr, );
        final _result = ListLocationPolylineImpl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    List<RouteAnnotation> annotations() {
        final _annotationsFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_RouteView_annotations'));
        final __resultHandle = _annotationsFfi(this.ptr, );
        final _result = ListRouteAnnotationImpl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    double length() {
        final _lengthFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>, ),
            double Function(Pointer<Void>, )
          >('navigine_sdk_flutter_RouteView_length'));
        final __resultHandle = _lengthFfi(this.ptr, );
        final _result = __resultHandle;
        exception.checkCallResult();
        return _result;
    }




}

// End of RouteView "private" section.
