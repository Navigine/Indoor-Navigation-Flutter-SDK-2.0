part of 'wifi.dart';

// Wifi "private" section, not exported.

final _navigine_sdk_flutter_Wifi_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Wifi_copy_handle'));

final _navigine_sdk_flutter_Wifi_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Wifi_release_handle'));

final _navigine_sdk_flutter_Wifi_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_Wifi_free');


class Wifi$Impl extends __lib.NativeBase implements Wifi, Finalizable {
    Wifi$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_Wifi_free.cast());


    Point get point {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Wifi_point_get'));

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
          >('navigine_sdk_flutter_Wifi_locationId_get'));

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
          >('navigine_sdk_flutter_Wifi_sublocationId_get'));

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
          >('navigine_sdk_flutter_Wifi_name_get'));

        final _handle = this.handle;
        final _nameHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfi(_nameHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
        return _result;
    }


    String get mac {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Wifi_mac_get'));

        final _handle = this.handle;
        final _macHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfi(_macHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_macHandle);
        return _result;
    }


    TransmitterStatus get status {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Wifi_status_get'));

        final _handle = this.handle;
        final _statusHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_TransmitterStatus_FromFfi(_statusHandle);
        navigine_sdk_flutter_TransmitterStatus_ReleaseFfiHandle(_statusHandle);
        return _result;
    }




}

Pointer<Void> navigine_sdk_flutter_Wifi_ToFfi(Wifi value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_Wifi_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

Wifi navigine_sdk_flutter_Wifi_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_Wifi_CopyHandle(handle);
    final result = Wifi$Impl(_copiedHandle);
    Wifi$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_Wifi_ToFfiNullable(Wifi? value) => 
  value != null ? navigine_sdk_flutter_Wifi_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_Wifi_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_Wifi_ReleaseHandle(handle);

void navigine_sdk_flutter_Wifi_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_Wifi_ReleaseHandle(handle);

Wifi? navigine_sdk_flutter_Wifi_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_Wifi_FromFfi(handle) : null;

// End of Wifi "private" section.
