part of 'wifi.dart';

// Wifi "private" section, not exported.

final _navigine_sdk_flutter_Wifi_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_Wifi_check'));

final _navigine_sdk_flutter_Wifi_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_Wifi_free');


class Wifi$Impl implements Wifi, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_Wifi_free.cast());

    Wifi$Impl.fromExternalPtr(this.ptr);

    @internal
    Wifi$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory Wifi$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_Wifi_check(ptr);

    static Pointer<Void> getNativePtr(Wifi? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as Wifi$Impl).ptr;
    }

    static Wifi? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return Wifi$Impl.fromNativePtr(ptr);
    }


    Point get point {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            PointNative Function(Pointer<Void>),
            PointNative Function(Pointer<Void>)
          >('navigine_sdk_flutter_Wifi_point_get'));

        final _pointHandle = _getFfi(this.ptr);
        final _result = PointImpl.fromNative(_pointHandle);
        exception.checkCallResult();
        return _result;
    }


    int get locationId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Wifi_locationId_get'));

        final _locationIdHandle = _getFfi(this.ptr);
        final _result = _locationIdHandle;
        exception.checkCallResult();
        return _result;
    }


    int get sublocationId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Wifi_sublocationId_get'));

        final _sublocationIdHandle = _getFfi(this.ptr);
        final _result = _sublocationIdHandle;
        exception.checkCallResult();
        return _result;
    }


    String get name {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_Wifi_name_get'));

        final _nameHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_nameHandle);
        exception.checkCallResult();
        return _result;
    }


    String get mac {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_Wifi_mac_get'));

        final _macHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_macHandle);
        exception.checkCallResult();
        return _result;
    }


    TransmitterStatus get status {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Wifi_status_get'));

        final _statusHandle = _getFfi(this.ptr);
        final _result = TransmitterStatusImpl.fromInt(_statusHandle);
        exception.checkCallResult();
        return _result;
    }




}

// End of Wifi "private" section.
