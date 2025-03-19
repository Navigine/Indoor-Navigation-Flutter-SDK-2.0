part of 'beacon.dart';

// Beacon "private" section, not exported.

final _navigine_sdk_flutter_Beacon_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Beacon_copy_handle'));

final _navigine_sdk_flutter_Beacon_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Beacon_release_handle'));

final _navigine_sdk_flutter_Beacon_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_Beacon_free');


class Beacon$Impl extends __lib.NativeBase implements Beacon, Finalizable {
    Beacon$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_Beacon_free.cast());


    Point get point {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Beacon_point_get'));

        final _handle = this.handle;
        final _pointHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_Point_FromFfi(_pointHandle);
        navigine_sdk_flutter_Point_ReleaseFfiHandle(_pointHandle);
        return _result;
    }


    int get locationId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Beacon_locationId_get'));

        final _handle = this.handle;
        final _locationIdHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_int_FromFfi(_locationIdHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_locationIdHandle);
        return _result;
    }


    int get sublocationId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Beacon_sublocationId_get'));

        final _handle = this.handle;
        final _sublocationIdHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_int_FromFfi(_sublocationIdHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_sublocationIdHandle);
        return _result;
    }


    String get name {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Beacon_name_get'));

        final _handle = this.handle;
        final _nameHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfi(_nameHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
        return _result;
    }


    int get major {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Beacon_major_get'));

        final _handle = this.handle;
        final _majorHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_int_FromFfi(_majorHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_majorHandle);
        return _result;
    }


    int get minor {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Beacon_minor_get'));

        final _handle = this.handle;
        final _minorHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_int_FromFfi(_minorHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_minorHandle);
        return _result;
    }


    String get uuid {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Beacon_uuid_get'));

        final _handle = this.handle;
        final _uuidHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfi(_uuidHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_uuidHandle);
        return _result;
    }


    int? get power {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Beacon_power_get'));

        final _handle = this.handle;
        final _powerHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_int_FromFfiNullable(_powerHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandleNullable(_powerHandle);
        return _result;
    }


    TransmitterStatus get status {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Beacon_status_get'));

        final _handle = this.handle;
        final _statusHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_TransmitterStatus_FromFfi(_statusHandle);
        navigine_sdk_flutter_TransmitterStatus_ReleaseFfiHandle(_statusHandle);
        return _result;
    }




}

Pointer<Void> navigine_sdk_flutter_Beacon_ToFfi(Beacon value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_Beacon_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

Beacon navigine_sdk_flutter_Beacon_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_Beacon_CopyHandle(handle);
    final result = Beacon$Impl(_copiedHandle);
    Beacon$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_Beacon_ToFfiNullable(Beacon? value) => 
  value != null ? navigine_sdk_flutter_Beacon_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_Beacon_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_Beacon_ReleaseHandle(handle);

void navigine_sdk_flutter_Beacon_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_Beacon_ReleaseHandle(handle);

Beacon? navigine_sdk_flutter_Beacon_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_Beacon_FromFfi(handle) : null;

// End of Beacon "private" section.
