part of 'graph.dart';

// Graph "private" section, not exported.

final _navigine_sdk_flutter_Graph_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_Graph_check'));

final _navigine_sdk_flutter_Graph_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_Graph_free');


class Graph$Impl implements Graph, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_Graph_free.cast());

    Graph$Impl.fromExternalPtr(this.ptr);

    @internal
    Graph$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory Graph$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_Graph_check(ptr);

    static Pointer<Void> getNativePtr(Graph? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as Graph$Impl).ptr;
    }

    static Graph? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return Graph$Impl.fromNativePtr(ptr);
    }


    List<GraphVertex> get vertexes {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Graph_vertexes_get'));

        final _vertexesHandle = _getFfi(this.ptr);
        final _result = ListGraphVertexImpl.fromNativePtr(_vertexesHandle);
        exception.checkCallResult();
        return _result;
    }


    List<GraphEdge> get edges {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Graph_edges_get'));

        final _edgesHandle = _getFfi(this.ptr);
        final _result = ListGraphEdgeImpl.fromNativePtr(_edgesHandle);
        exception.checkCallResult();
        return _result;
    }




}

// End of Graph "private" section.
