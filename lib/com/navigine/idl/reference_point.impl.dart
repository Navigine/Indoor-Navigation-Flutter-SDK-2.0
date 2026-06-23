part of 'reference_point.dart';

// ReferencePoint "private" section, not exported.

final _navigine_sdk_flutter_ReferencePoint_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_ReferencePoint_check'));

final _navigine_sdk_flutter_ReferencePoint_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_ReferencePoint_free');


class ReferencePoint$Impl implements ReferencePoint, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_ReferencePoint_free.cast());

    ReferencePoint$Impl.fromExternalPtr(this.ptr);

    @internal
    ReferencePoint$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory ReferencePoint$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_ReferencePoint_check(ptr);

    static Pointer<Void> getNativePtr(ReferencePoint? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as ReferencePoint$Impl).ptr;
    }

    static ReferencePoint? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return ReferencePoint$Impl.fromNativePtr(ptr);
    }


    int get locationId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_locationId_get'));

        final _locationIdHandle = _getFfi(this.ptr);
        final _result = _locationIdHandle;
        exception.checkCallResult();
        return _result;
    }


    int get sublocationId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_sublocationId_get'));

        final _sublocationIdHandle = _getFfi(this.ptr);
        final _result = _sublocationIdHandle;
        exception.checkCallResult();
        return _result;
    }


    String get name {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_name_get'));

        final _nameHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_nameHandle);
        exception.checkCallResult();
        return _result;
    }


    String get uuid {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_uuid_get'));

        final _uuidHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_uuidHandle);
        exception.checkCallResult();
        return _result;
    }


    Point get point {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            PointNative Function(Pointer<Void>),
            PointNative Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_point_get'));

        final _pointHandle = _getFfi(this.ptr);
        final _result = PointImpl.fromNative(_pointHandle);
        exception.checkCallResult();
        return _result;
    }


    int get quality {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_quality_get'));

        final _qualityHandle = _getFfi(this.ptr);
        final _result = _qualityHandle;
        exception.checkCallResult();
        return _result;
    }


    int get duration {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int64 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_duration_get'));

        final _durationHandle = _getFfi(this.ptr);
        final _result = _durationHandle;
        exception.checkCallResult();
        return _result;
    }


    String get deviceId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_deviceId_get'));

        final _deviceIdHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_deviceIdHandle);
        exception.checkCallResult();
        return _result;
    }


    String get deviceModel {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_deviceModel_get'));

        final _deviceModelHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_deviceModelHandle);
        exception.checkCallResult();
        return _result;
    }


    String get timeLabel {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_timeLabel_get'));

        final _timeLabelHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_timeLabelHandle);
        exception.checkCallResult();
        return _result;
    }


    List<ReferenceEntry> get entries {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_entries_get'));

        final _entriesHandle = _getFfi(this.ptr);
        final _result = ListReferenceEntryImpl.fromNativePtr(_entriesHandle);
        exception.checkCallResult();
        return _result;
    }


    TransmitterStatus get status {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_ReferencePoint_status_get'));

        final _statusHandle = _getFfi(this.ptr);
        final _result = TransmitterStatusImpl.fromInt(_statusHandle);
        exception.checkCallResult();
        return _result;
    }




}

// End of ReferencePoint "private" section.
