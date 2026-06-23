part of 'graph_edge.dart';

// GraphEdge "private" section, not exported.

final _navigine_sdk_flutter_GraphEdge_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_GraphEdge_check'));

final _navigine_sdk_flutter_GraphEdge_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_GraphEdge_free');


class GraphEdge$Impl implements GraphEdge, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_GraphEdge_free.cast());

    GraphEdge$Impl.fromExternalPtr(this.ptr);

    @internal
    GraphEdge$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory GraphEdge$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_GraphEdge_check(ptr);

    static Pointer<Void> getNativePtr(GraphEdge? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as GraphEdge$Impl).ptr;
    }

    static GraphEdge? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return GraphEdge$Impl.fromNativePtr(ptr);
    }


    double? get weight {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_GraphEdge_weight_get'));

        final _weightHandle = _getFfi(this.ptr);
        final _result = toPlatformFromPointerFloat(_weightHandle);
        exception.checkCallResult();
        return _result;
    }


    int get dst {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_GraphEdge_dst_get'));

        final _dstHandle = _getFfi(this.ptr);
        final _result = _dstHandle;
        exception.checkCallResult();
        return _result;
    }


    int get src {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_GraphEdge_src_get'));

        final _srcHandle = _getFfi(this.ptr);
        final _result = _srcHandle;
        exception.checkCallResult();
        return _result;
    }


    double? get weightCoef {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_GraphEdge_weightCoef_get'));

        final _weightCoefHandle = _getFfi(this.ptr);
        final _result = toPlatformFromPointerFloat(_weightCoefHandle);
        exception.checkCallResult();
        return _result;
    }




}

// End of GraphEdge "private" section.
