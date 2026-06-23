part of 'eddystone.dart';

// Eddystone "private" section, not exported.

final _navigine_sdk_flutter_Eddystone_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_Eddystone_check'));

final _navigine_sdk_flutter_Eddystone_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_Eddystone_free');


class Eddystone$Impl implements Eddystone, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_Eddystone_free.cast());

    Eddystone$Impl.fromExternalPtr(this.ptr);

    @internal
    Eddystone$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory Eddystone$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_Eddystone_check(ptr);

    static Pointer<Void> getNativePtr(Eddystone? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as Eddystone$Impl).ptr;
    }

    static Eddystone? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return Eddystone$Impl.fromNativePtr(ptr);
    }


    Point get point {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            PointNative Function(Pointer<Void>),
            PointNative Function(Pointer<Void>)
          >('navigine_sdk_flutter_Eddystone_point_get'));

        final _pointHandle = _getFfi(this.ptr);
        final _result = PointImpl.fromNative(_pointHandle);
        exception.checkCallResult();
        return _result;
    }


    int get locationId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Eddystone_locationId_get'));

        final _locationIdHandle = _getFfi(this.ptr);
        final _result = _locationIdHandle;
        exception.checkCallResult();
        return _result;
    }


    int get sublocationId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Eddystone_sublocationId_get'));

        final _sublocationIdHandle = _getFfi(this.ptr);
        final _result = _sublocationIdHandle;
        exception.checkCallResult();
        return _result;
    }


    String get name {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_Eddystone_name_get'));

        final _nameHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_nameHandle);
        exception.checkCallResult();
        return _result;
    }


    String get namespaceId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_Eddystone_namespaceId_get'));

        final _namespaceIdHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_namespaceIdHandle);
        exception.checkCallResult();
        return _result;
    }


    String get instanceId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_Eddystone_instanceId_get'));

        final _instanceIdHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_instanceIdHandle);
        exception.checkCallResult();
        return _result;
    }


    int? get power {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Eddystone_power_get'));

        final _powerHandle = _getFfi(this.ptr);
        final _result = toPlatformFromPointerInt32(_powerHandle);
        exception.checkCallResult();
        return _result;
    }


    TransmitterStatus get status {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Eddystone_status_get'));

        final _statusHandle = _getFfi(this.ptr);
        final _result = TransmitterStatusImpl.fromInt(_statusHandle);
        exception.checkCallResult();
        return _result;
    }




}

// End of Eddystone "private" section.
