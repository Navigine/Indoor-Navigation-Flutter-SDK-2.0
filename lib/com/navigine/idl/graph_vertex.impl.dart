part of 'graph_vertex.dart';

// GraphVertex "private" section, not exported.

final _navigine_sdk_flutter_GraphVertex_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_GraphVertex_copy_handle'));

final _navigine_sdk_flutter_GraphVertex_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_GraphVertex_release_handle'));

final _navigine_sdk_flutter_GraphVertex_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_GraphVertex_free');


class GraphVertex$Impl extends __lib.NativeBase implements GraphVertex, Finalizable {
    GraphVertex$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_GraphVertex_free.cast());


    int get id {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_GraphVertex_id_get'));

        final _handle = this.handle;
        final _idHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_int_FromFfi(_idHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_idHandle);
        return _result;
    }


    Point get point {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_GraphVertex_point_get'));

        final _handle = this.handle;
        final _pointHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_Point_FromFfi(_pointHandle);
        navigine_sdk_flutter_Point_ReleaseFfiHandle(_pointHandle);
        return _result;
    }


    String get name {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_GraphVertex_name_get'));

        final _handle = this.handle;
        final _nameHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfi(_nameHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
        return _result;
    }


    bool get isExternal {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_GraphVertex_isExternal_get'));

        final _handle = this.handle;
        final _isExternalHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_bool_FromFfi(_isExternalHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(_isExternalHandle);
        return _result;
    }


    bool get isElevation {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_GraphVertex_isElevation_get'));

        final _handle = this.handle;
        final _isElevationHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_bool_FromFfi(_isElevationHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(_isElevationHandle);
        return _result;
    }




}

Pointer<Void> navigine_sdk_flutter_GraphVertex_ToFfi(GraphVertex value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_GraphVertex_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

GraphVertex navigine_sdk_flutter_GraphVertex_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_GraphVertex_CopyHandle(handle);
    final result = GraphVertex$Impl(_copiedHandle);
    GraphVertex$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_GraphVertex_ToFfiNullable(GraphVertex? value) => 
  value != null ? navigine_sdk_flutter_GraphVertex_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_GraphVertex_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_GraphVertex_ReleaseHandle(handle);

void navigine_sdk_flutter_GraphVertex_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_GraphVertex_ReleaseHandle(handle);

GraphVertex? navigine_sdk_flutter_GraphVertex_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_GraphVertex_FromFfi(handle) : null;

// End of GraphVertex "private" section.
