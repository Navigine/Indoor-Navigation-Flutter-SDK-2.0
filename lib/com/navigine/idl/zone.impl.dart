part of 'zone.dart';

// Zone "private" section, not exported.

final _navigine_sdk_flutter_Zone_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_Zone_check'));

final _navigine_sdk_flutter_Zone_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_Zone_free');


class Zone$Impl implements Zone, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_Zone_free.cast());

    Zone$Impl.fromExternalPtr(this.ptr);

    @internal
    Zone$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory Zone$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_Zone_check(ptr);

    static Pointer<Void> getNativePtr(Zone? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as Zone$Impl).ptr;
    }

    static Zone? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return Zone$Impl.fromNativePtr(ptr);
    }


    Polygon get polygon {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            PolygonNative Function(Pointer<Void>),
            PolygonNative Function(Pointer<Void>)
          >('navigine_sdk_flutter_Zone_polygon_get'));

        final _polygonHandle = _getFfi(this.ptr);
        final _result = PolygonImpl.fromNative(_polygonHandle);
        exception.checkCallResult();
        return _result;
    }


    int get locationId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Zone_locationId_get'));

        final _locationIdHandle = _getFfi(this.ptr);
        final _result = _locationIdHandle;
        exception.checkCallResult();
        return _result;
    }


    int get sublocationId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Zone_sublocationId_get'));

        final _sublocationIdHandle = _getFfi(this.ptr);
        final _result = _sublocationIdHandle;
        exception.checkCallResult();
        return _result;
    }


    int get id {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Zone_id_get'));

        final _idHandle = _getFfi(this.ptr);
        final _result = _idHandle;
        exception.checkCallResult();
        return _result;
    }


    String get name {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_Zone_name_get'));

        final _nameHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_nameHandle);
        exception.checkCallResult();
        return _result;
    }


    String get color {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_Zone_color_get'));

        final _colorHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_colorHandle);
        exception.checkCallResult();
        return _result;
    }


    String get alias {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_Zone_alias_get'));

        final _aliasHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_aliasHandle);
        exception.checkCallResult();
        return _result;
    }




}

// End of Zone "private" section.
