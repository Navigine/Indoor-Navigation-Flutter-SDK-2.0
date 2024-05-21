import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_token_cache.dart' as __lib;
import 'package:navigine_sdk/com/_type_repository.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';
import 'package:navigine_sdk/com/navigine/idl/transmitter_status.dart';

abstract class Eddystone {


    Point get point;
    int get locationId;
    int get sublocationId;
    String get name;
    String get namespaceId;
    String get instanceId;
    int? get power;
    TransmitterStatus get status;


}

// Eddystone "private" section, not exported.

final _navigine_sdk_flutter_Eddystone_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Eddystone_copy_handle'));

final _navigine_sdk_flutter_Eddystone_RegisterFinalizer = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Int32, Handle),
    void Function(Pointer<Void>, int, Object)
  >('navigine_sdk_flutter_Eddystone_register_finalizer'));

final _navigine_sdk_flutter_Eddystone_GetTypeId = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Eddystone_get_type_id'));

final _navigine_sdk_flutter_Eddystone_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Eddystone_release_handle'));

final _navigine_sdk_flutter_Eddystone_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64, Int32, Int64, Handle, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer),
    Pointer<Void> Function(int, int, int, Object, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_Eddystone_create_proxy'));


class Eddystone$Impl extends __lib.NativeBase implements Eddystone {

    Eddystone$Impl(Pointer<Void> handle) : super(handle);


    Point get point {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Eddystone_point_get'));

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
          >('navigine_sdk_flutter_Eddystone_locationId_get'));

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
          >('navigine_sdk_flutter_Eddystone_sublocationId_get'));

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
          >('navigine_sdk_flutter_Eddystone_name_get'));

        final _handle = this.handle;
        final _nameHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_String_FromFfi(_nameHandle);
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
        }
    }


    String get namespaceId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Eddystone_namespaceId_get'));

        final _handle = this.handle;
        final _namespaceIdHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_String_FromFfi(_namespaceIdHandle);
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandle(_namespaceIdHandle);
        }
    }


    String get instanceId {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Eddystone_instanceId_get'));

        final _handle = this.handle;
        final _instanceIdHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_String_FromFfi(_instanceIdHandle);
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandle(_instanceIdHandle);
        }
    }


    int? get power {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Eddystone_power_get'));

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
          >('navigine_sdk_flutter_Eddystone_status_get'));

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
    final instance = __lib.getCachedInstance(handle);
    if (instance != null && instance is Eddystone) return instance;
    final _typeIdHandle = _navigine_sdk_flutter_Eddystone_GetTypeId(handle);
    final factoryConstructor = __lib.typeRepository[navigine_sdk_flutter_String_FromFfi(_typeIdHandle)];
    navigine_sdk_flutter_String_ReleaseFfiHandle(_typeIdHandle);
    final _copiedHandle = _navigine_sdk_flutter_Eddystone_CopyHandle(handle);
    final result = factoryConstructor != null
      ? factoryConstructor(_copiedHandle)
      : Eddystone$Impl(_copiedHandle);
    __lib.cacheInstance(_copiedHandle, result);
    _navigine_sdk_flutter_Eddystone_RegisterFinalizer(_copiedHandle, __lib.LibraryContext.isolateId, result);
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
