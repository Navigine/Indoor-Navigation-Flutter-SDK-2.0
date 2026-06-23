part of 'beacon.dart';

// Beacon "private" section, not exported.

final _navigine_sdk_flutter_Beacon_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_Beacon_check'));

final _navigine_sdk_flutter_Beacon_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_Beacon_free');


class Beacon$Impl implements Beacon, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_Beacon_free.cast());

    Beacon$Impl.fromExternalPtr(this.ptr);

    @internal
    Beacon$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory Beacon$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_Beacon_check(ptr);

    static Pointer<Void> getNativePtr(Beacon? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as Beacon$Impl).ptr;
    }

    static Beacon? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return Beacon$Impl.fromNativePtr(ptr);
    }


    Point get point {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            PointNative Function(Pointer<Void>),
            PointNative Function(Pointer<Void>)
          >('navigine_sdk_flutter_Beacon_point_get'));

        final _pointHandle = _getFfi(this.ptr);
        final _result = PointImpl.fromNative(_pointHandle);
        exception.checkCallResult();
        return _result;
    }


    int get locationId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Beacon_locationId_get'));

        final _locationIdHandle = _getFfi(this.ptr);
        final _result = _locationIdHandle;
        exception.checkCallResult();
        return _result;
    }


    int get sublocationId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Beacon_sublocationId_get'));

        final _sublocationIdHandle = _getFfi(this.ptr);
        final _result = _sublocationIdHandle;
        exception.checkCallResult();
        return _result;
    }


    String get name {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_Beacon_name_get'));

        final _nameHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_nameHandle);
        exception.checkCallResult();
        return _result;
    }


    int get major {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Beacon_major_get'));

        final _majorHandle = _getFfi(this.ptr);
        final _result = _majorHandle;
        exception.checkCallResult();
        return _result;
    }


    int get minor {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Beacon_minor_get'));

        final _minorHandle = _getFfi(this.ptr);
        final _result = _minorHandle;
        exception.checkCallResult();
        return _result;
    }


    String get uuid {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_Beacon_uuid_get'));

        final _uuidHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_uuidHandle);
        exception.checkCallResult();
        return _result;
    }


    int? get power {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Beacon_power_get'));

        final _powerHandle = _getFfi(this.ptr);
        final _result = toPlatformFromPointerInt32(_powerHandle);
        exception.checkCallResult();
        return _result;
    }


    TransmitterStatus get status {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Beacon_status_get'));

        final _statusHandle = _getFfi(this.ptr);
        final _result = TransmitterStatusImpl.fromInt(_statusHandle);
        exception.checkCallResult();
        return _result;
    }




}

// End of Beacon "private" section.
