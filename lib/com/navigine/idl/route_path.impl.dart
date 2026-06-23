part of 'route_path.dart';

// RoutePath "private" section, not exported.

final _navigine_sdk_flutter_RoutePath_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_RoutePath_free');


class RoutePath$Impl implements RoutePath, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_RoutePath_free.cast());

    RoutePath$Impl.fromExternalPtr(this.ptr);

    @internal
    RoutePath$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory RoutePath$Impl.fromNativePtr(Pointer<Void> ptr) =>
        RoutePath$Impl.fromNativePtrImpl(ptr);


    static Pointer<Void> getNativePtr(RoutePath? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as RoutePath$Impl).ptr;
    }

    static RoutePath? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return RoutePath$Impl.fromNativePtr(ptr);
    }

    @override
    RoutePath head(double advance) {
        final _headFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Float),
            Pointer<Void> Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_RoutePath_head__Advance'));
        final __resultHandle = _headFfi(this.ptr, advance);
        final _result = RoutePath$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    RoutePath tail(double advance) {
        final _tailFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Float),
            Pointer<Void> Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_RoutePath_tail__Advance'));
        final __resultHandle = _tailFfi(this.ptr, advance);
        final _result = RoutePath$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    List<RouteNode> nodes() {
        final _nodesFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_RoutePath_nodes'));
        final __resultHandle = _nodesFfi(this.ptr, );
        final _result = ListRouteNodeImpl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }


    double get length {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>),
            double Function(Pointer<Void>)
          >('navigine_sdk_flutter_RoutePath_length_get'));

        final _lengthHandle = _getFfi(this.ptr);
        final _result = _lengthHandle;
        exception.checkCallResult();
        return _result;
    }


    double get weight {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>),
            double Function(Pointer<Void>)
          >('navigine_sdk_flutter_RoutePath_weight_get'));

        final _weightHandle = _getFfi(this.ptr);
        final _result = _weightHandle;
        exception.checkCallResult();
        return _result;
    }




}

// End of RoutePath "private" section.
