part of 'elevation_graph.dart';

// ElevationGraph "private" section, not exported.

final _navigine_sdk_flutter_ElevationGraph_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_ElevationGraph_check'));

final _navigine_sdk_flutter_ElevationGraph_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_ElevationGraph_free');


class ElevationGraph$Impl implements ElevationGraph, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_ElevationGraph_free.cast());

    ElevationGraph$Impl.fromExternalPtr(this.ptr);

    @internal
    ElevationGraph$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory ElevationGraph$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_ElevationGraph_check(ptr);

    static Pointer<Void> getNativePtr(ElevationGraph? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as ElevationGraph$Impl).ptr;
    }

    static ElevationGraph? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return ElevationGraph$Impl.fromNativePtr(ptr);
    }


    List<GraphEdge> get edges {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_ElevationGraph_edges_get'));

        final _edgesHandle = _getFfi(this.ptr);
        final _result = ListGraphEdgeImpl.fromNativePtr(_edgesHandle);
        exception.checkCallResult();
        return _result;
    }




}

// End of ElevationGraph "private" section.
