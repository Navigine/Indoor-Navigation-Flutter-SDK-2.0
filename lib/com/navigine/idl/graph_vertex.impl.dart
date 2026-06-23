part of 'graph_vertex.dart';

// GraphVertex "private" section, not exported.

final _navigine_sdk_flutter_GraphVertex_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_GraphVertex_check'));

final _navigine_sdk_flutter_GraphVertex_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_GraphVertex_free');


class GraphVertex$Impl implements GraphVertex, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_GraphVertex_free.cast());

    GraphVertex$Impl.fromExternalPtr(this.ptr);

    @internal
    GraphVertex$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory GraphVertex$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_GraphVertex_check(ptr);

    static Pointer<Void> getNativePtr(GraphVertex? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as GraphVertex$Impl).ptr;
    }

    static GraphVertex? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return GraphVertex$Impl.fromNativePtr(ptr);
    }


    int get id {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_GraphVertex_id_get'));

        final _idHandle = _getFfi(this.ptr);
        final _result = _idHandle;
        exception.checkCallResult();
        return _result;
    }


    Point get point {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            PointNative Function(Pointer<Void>),
            PointNative Function(Pointer<Void>)
          >('navigine_sdk_flutter_GraphVertex_point_get'));

        final _pointHandle = _getFfi(this.ptr);
        final _result = PointImpl.fromNative(_pointHandle);
        exception.checkCallResult();
        return _result;
    }


    String get name {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_GraphVertex_name_get'));

        final _nameHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_nameHandle);
        exception.checkCallResult();
        return _result;
    }


    bool get isExternal {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_GraphVertex_isExternal_get'));

        final _isExternalHandle = _getFfi(this.ptr);
        final _result = (_isExternalHandle != 0);
        exception.checkCallResult();
        return _result;
    }


    bool get isElevation {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_GraphVertex_isElevation_get'));

        final _isElevationHandle = _getFfi(this.ptr);
        final _result = (_isElevationHandle != 0);
        exception.checkCallResult();
        return _result;
    }




}

// End of GraphVertex "private" section.
