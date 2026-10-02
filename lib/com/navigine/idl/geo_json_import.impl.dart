part of 'geo_json_import.dart';

// GeoJsonImport "private" section, not exported.

final _navigine_sdk_flutter_GeoJsonImport_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_GeoJsonImport_check'));

final _navigine_sdk_flutter_GeoJsonImport_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_GeoJsonImport_free');


class GeoJsonImport$Impl implements GeoJsonImport, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_GeoJsonImport_free.cast());

    GeoJsonImport$Impl.fromExternalPtr(this.ptr);

    @internal
    GeoJsonImport$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory GeoJsonImport$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_GeoJsonImport_check(ptr);

    static Pointer<Void> getNativePtr(GeoJsonImport? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as GeoJsonImport$Impl).ptr;
    }

    static GeoJsonImport? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return GeoJsonImport$Impl.fromNativePtr(ptr);
    }

    @override
    List<PolygonMapObject> polygons() {
        final _polygonsFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_GeoJsonImport_polygons'));
        final __resultHandle = _polygonsFfi(this.ptr, );
        final _result = ListPolygonMapObjectImpl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    List<PolylineMapObject> polylines() {
        final _polylinesFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_GeoJsonImport_polylines'));
        final __resultHandle = _polylinesFfi(this.ptr, );
        final _result = ListPolylineMapObjectImpl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }




}

// End of GeoJsonImport "private" section.
