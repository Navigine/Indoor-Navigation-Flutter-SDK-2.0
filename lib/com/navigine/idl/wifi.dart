import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_token_cache.dart' as __lib;
import 'package:navigine_sdk/com/_type_repository.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';
import 'package:navigine_sdk/com/navigine/idl/transmitter_status.dart';

abstract class Wifi {


    Point get point;
    int get locationId;
    int get sublocationId;
    String get name;
    String get mac;
    TransmitterStatus get status;


}

// Wifi "private" section, not exported.

final _navigine_sdk_flutter_Wifi_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Wifi_copy_handle'));

final _navigine_sdk_flutter_Wifi_RegisterFinalizer = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Int32, Handle),
    void Function(Pointer<Void>, int, Object)
  >('navigine_sdk_flutter_Wifi_register_finalizer'));

final _navigine_sdk_flutter_Wifi_GetTypeId = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Wifi_get_type_id'));

final _navigine_sdk_flutter_Wifi_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Wifi_release_handle'));

final _navigine_sdk_flutter_Wifi_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64, Int32, Int64, Handle, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer),
    Pointer<Void> Function(int, int, int, Object, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_Wifi_create_proxy'));


class Wifi$Impl extends __lib.NativeBase implements Wifi {

    Wifi$Impl(Pointer<Void> handle) : super(handle);


    Point get point {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Wifi_point_get'));

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
          >('navigine_sdk_flutter_Wifi_locationId_get'));

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
          >('navigine_sdk_flutter_Wifi_sublocationId_get'));

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
          >('navigine_sdk_flutter_Wifi_name_get'));

        final _handle = this.handle;
        final _nameHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_String_FromFfi(_nameHandle);
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandle(_nameHandle);
        }
    }


    String get mac {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Wifi_mac_get'));

        final _handle = this.handle;
        final _macHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_String_FromFfi(_macHandle);
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandle(_macHandle);
        }
    }


    TransmitterStatus get status {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Wifi_status_get'));

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
    final instance = __lib.getCachedInstance(handle);
    if (instance != null && instance is Wifi) return instance;
    final _typeIdHandle = _navigine_sdk_flutter_Wifi_GetTypeId(handle);
    final factoryConstructor = __lib.typeRepository[navigine_sdk_flutter_String_FromFfi(_typeIdHandle)];
    navigine_sdk_flutter_String_ReleaseFfiHandle(_typeIdHandle);
    final _copiedHandle = _navigine_sdk_flutter_Wifi_CopyHandle(handle);
    final result = factoryConstructor != null
      ? factoryConstructor(_copiedHandle)
      : Wifi$Impl(_copiedHandle);
    __lib.cacheInstance(_copiedHandle, result);
    _navigine_sdk_flutter_Wifi_RegisterFinalizer(_copiedHandle, __lib.LibraryContext.isolateId, result);
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
