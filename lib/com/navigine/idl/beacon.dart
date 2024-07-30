import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';
import 'package:navigine_sdk/com/navigine/idl/transmitter_status.dart';

/**
 *
 * Object describing iBeacon transmitter.
 *
 */
abstract class Beacon implements Finalizable {


    /** Metrics coordinate of iBeacon position (@see Point). */
    Point get point;
    /** Unique location identifier of iBeacon position. */
    int get locationId;
    /** Unique sublocation identifier of iBeacon position. */
    int get sublocationId;
    /** iBeacon name. */
    String get name;
    /** iBeacon major. Values [1-65535] */
    int get major;
    /** iBeacon minor. Values [1-65535] */
    int get minor;
    /** iBeacon uuid. Format [XXXXXXXX-XXXX-XXXX-XXXX-XXXXXXXXXXXX] */
    String get uuid;
    /** iBeacon power. If exsists. */
    int? get power;
    /** iBeacon status. (@see TransmitterStatus) */
    TransmitterStatus get status;


}

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

final _navigine_sdk_flutter_Beacon_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_Beacon_create_proxy'));

final _navigine_sdk_flutter_Beacon_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_Beacon_set_ports'));


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
        try  {
            return navigine_sdk_flutter_Point_FromFfi(_pointHandle);
        }
        finally  {
            navigine_sdk_flutter_Point_ReleaseFfiHandle(_pointHandle);
        }
    }


    int get locationId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Beacon_locationId_get'));

        final _handle = this.handle;
        final _locationIdHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_int_FromFfi(_locationIdHandle);
        }
        finally  {
            navigine_sdk_flutter_int_ReleaseFfiHandle(_locationIdHandle);
        }
    }


    int get sublocationId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Beacon_sublocationId_get'));

        final _handle = this.handle;
        final _sublocationIdHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_int_FromFfi(_sublocationIdHandle);
        }
        finally  {
            navigine_sdk_flutter_int_ReleaseFfiHandle(_sublocationIdHandle);
        }
    }


    String get name {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Beacon_name_get'));

        final _handle = this.handle;
        final _nameHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_String_FromFfi(_nameHandle);
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
        }
    }


    int get major {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Beacon_major_get'));

        final _handle = this.handle;
        final _majorHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_int_FromFfi(_majorHandle);
        }
        finally  {
            navigine_sdk_flutter_int_ReleaseFfiHandle(_majorHandle);
        }
    }


    int get minor {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Beacon_minor_get'));

        final _handle = this.handle;
        final _minorHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_int_FromFfi(_minorHandle);
        }
        finally  {
            navigine_sdk_flutter_int_ReleaseFfiHandle(_minorHandle);
        }
    }


    String get uuid {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Beacon_uuid_get'));

        final _handle = this.handle;
        final _uuidHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_String_FromFfi(_uuidHandle);
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandle(_uuidHandle);
        }
    }


    int? get power {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Beacon_power_get'));

        final _handle = this.handle;
        final _powerHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_int_FromFfiNullable(_powerHandle);
        }
        finally  {
            navigine_sdk_flutter_int_ReleaseFfiHandleNullable(_powerHandle);
        }
    }


    TransmitterStatus get status {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Beacon_status_get'));

        final _handle = this.handle;
        final _statusHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_TransmitterStatus_FromFfi(_statusHandle);
        }
        finally  {
            navigine_sdk_flutter_TransmitterStatus_ReleaseFfiHandle(_statusHandle);
        }
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
