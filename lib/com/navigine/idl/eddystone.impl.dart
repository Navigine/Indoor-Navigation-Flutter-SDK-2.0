part of 'eddystone.dart';

// Eddystone "private" section, not exported.

final _navigine_sdk_flutter_Eddystone_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Eddystone_copy_handle'));

final _navigine_sdk_flutter_Eddystone_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Eddystone_release_handle'));

final _navigine_sdk_flutter_Eddystone_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_Eddystone_free');


class Eddystone$Impl extends __lib.NativeBase implements Eddystone, Finalizable {
    Eddystone$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_Eddystone_free.cast());


    Point get point {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Eddystone_point_get'));

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
          >('navigine_sdk_flutter_Eddystone_locationId_get'));

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
          >('navigine_sdk_flutter_Eddystone_sublocationId_get'));

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
          >('navigine_sdk_flutter_Eddystone_name_get'));

        final _handle = this.handle;
        final _nameHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfi(_nameHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
        return _result;
    }


    String get namespaceId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Eddystone_namespaceId_get'));

        final _handle = this.handle;
        final _namespaceIdHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfi(_namespaceIdHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_namespaceIdHandle);
        return _result;
    }


    String get instanceId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Eddystone_instanceId_get'));

        final _handle = this.handle;
        final _instanceIdHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfi(_instanceIdHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_instanceIdHandle);
        return _result;
    }


    int? get power {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Eddystone_power_get'));

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
          >('navigine_sdk_flutter_Eddystone_status_get'));

        final _handle = this.handle;
        final _statusHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_TransmitterStatus_FromFfi(_statusHandle);
        navigine_sdk_flutter_TransmitterStatus_ReleaseFfiHandle(_statusHandle);
        return _result;
    }




}

Pointer<Void> navigine_sdk_flutter_Eddystone_ToFfi(Eddystone value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_Eddystone_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

Eddystone navigine_sdk_flutter_Eddystone_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_Eddystone_CopyHandle(handle);
    final result = Eddystone$Impl(_copiedHandle);
    Eddystone$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_Eddystone_ToFfiNullable(Eddystone? value) => 
  value != null ? navigine_sdk_flutter_Eddystone_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_Eddystone_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_Eddystone_ReleaseHandle(handle);

void navigine_sdk_flutter_Eddystone_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_Eddystone_ReleaseHandle(handle);

Eddystone? navigine_sdk_flutter_Eddystone_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_Eddystone_FromFfi(handle) : null;

// End of Eddystone "private" section.
