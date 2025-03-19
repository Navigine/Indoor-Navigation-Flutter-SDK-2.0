part of 'graph_edge.dart';

// GraphEdge "private" section, not exported.

final _navigine_sdk_flutter_GraphEdge_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_GraphEdge_copy_handle'));

final _navigine_sdk_flutter_GraphEdge_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_GraphEdge_release_handle'));

final _navigine_sdk_flutter_GraphEdge_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_GraphEdge_free');


class GraphEdge$Impl extends __lib.NativeBase implements GraphEdge, Finalizable {
    GraphEdge$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_GraphEdge_free.cast());


    double get weight {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>),
            double Function(Pointer<Void>)
          >('navigine_sdk_flutter_GraphEdge_weight_get'));

        final _handle = this.handle;
        final _weightHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_double_FromFfi(_weightHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_weightHandle);
        return _result;
    }


    int get dst {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_GraphEdge_dst_get'));

        final _handle = this.handle;
        final _dstHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_int_FromFfi(_dstHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_dstHandle);
        return _result;
    }


    int get src {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_GraphEdge_src_get'));

        final _handle = this.handle;
        final _srcHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_int_FromFfi(_srcHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_srcHandle);
        return _result;
    }


    int get weightCoef {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_GraphEdge_weightCoef_get'));

        final _handle = this.handle;
        final _weightCoefHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_int_FromFfi(_weightCoefHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_weightCoefHandle);
        return _result;
    }




}

Pointer<Void> navigine_sdk_flutter_GraphEdge_ToFfi(GraphEdge value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_GraphEdge_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

GraphEdge navigine_sdk_flutter_GraphEdge_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_GraphEdge_CopyHandle(handle);
    final result = GraphEdge$Impl(_copiedHandle);
    GraphEdge$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_GraphEdge_ToFfiNullable(GraphEdge? value) => 
  value != null ? navigine_sdk_flutter_GraphEdge_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_GraphEdge_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_GraphEdge_ReleaseHandle(handle);

void navigine_sdk_flutter_GraphEdge_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_GraphEdge_ReleaseHandle(handle);

GraphEdge? navigine_sdk_flutter_GraphEdge_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_GraphEdge_FromFfi(handle) : null;

// End of GraphEdge "private" section.
