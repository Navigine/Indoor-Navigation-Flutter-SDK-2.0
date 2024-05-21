import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_token_cache.dart' as __lib;
import 'package:navigine_sdk/com/_type_repository.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/zone_listener.dart';

abstract class ZoneManager {

    void addZoneListener(ZoneListener listener);
    void removeZoneListener(ZoneListener listener);



}

// ZoneManager "private" section, not exported.

final _navigine_sdk_flutter_ZoneManager_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_ZoneManager_copy_handle'));

final _navigine_sdk_flutter_ZoneManager_RegisterFinalizer = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Int32, Handle),
    void Function(Pointer<Void>, int, Object)
  >('navigine_sdk_flutter_ZoneManager_register_finalizer'));

final _navigine_sdk_flutter_ZoneManager_GetTypeId = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_ZoneManager_get_type_id'));

final _navigine_sdk_flutter_ZoneManager_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_ZoneManager_release_handle'));

final _navigine_sdk_flutter_ZoneManager_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64, Int32, Int64, Handle, Pointer, Pointer),
    Pointer<Void> Function(int, int, int, Object, Pointer, Pointer)
  >('navigine_sdk_flutter_ZoneManager_create_proxy'));


class ZoneManager$Impl extends __lib.NativeBase implements ZoneManager {

    ZoneManager$Impl(Pointer<Void> handle) : super(handle);

    @override
    void addZoneListener(ZoneListener listener) {
        final _addZoneListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_ZoneManager_addZoneListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_ZoneListener_ToFfi(listener);
        final _handle = this.handle;
        _addZoneListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_ZoneListener_ReleaseFfiHandle(_listenerHandle);
    }

    @override
    void removeZoneListener(ZoneListener listener) {
        final _removeZoneListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_ZoneManager_removeZoneListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_ZoneListener_ToFfi(listener);
        final _handle = this.handle;
        _removeZoneListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_ZoneListener_ReleaseFfiHandle(_listenerHandle);
    }




}
Pointer<Void> navigine_sdk_flutter_ZoneManager_ToFfi(ZoneManager value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_ZoneManager_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

ZoneManager navigine_sdk_flutter_ZoneManager_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final instance = __lib.getCachedInstance(handle);
    if (instance != null && instance is ZoneManager) return instance;
    final _typeIdHandle = _navigine_sdk_flutter_ZoneManager_GetTypeId(handle);
    final factoryConstructor = __lib.typeRepository[navigine_sdk_flutter_String_FromFfi(_typeIdHandle)];
    navigine_sdk_flutter_String_ReleaseFfiHandle(_typeIdHandle);
    final _copiedHandle = _navigine_sdk_flutter_ZoneManager_CopyHandle(handle);
    final result = factoryConstructor != null
      ? factoryConstructor(_copiedHandle)
      : ZoneManager$Impl(_copiedHandle);
    __lib.cacheInstance(_copiedHandle, result);
    _navigine_sdk_flutter_ZoneManager_RegisterFinalizer(_copiedHandle, __lib.LibraryContext.isolateId, result);
    return result;
}

Pointer<Void> navigine_sdk_flutter_ZoneManager_ToFfiNullable(ZoneManager? value) => 
  value != null ? navigine_sdk_flutter_ZoneManager_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_ZoneManager_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_ZoneManager_ReleaseHandle(handle);

void navigine_sdk_flutter_ZoneManager_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_ZoneManager_ReleaseHandle(handle);

ZoneManager? navigine_sdk_flutter_ZoneManager_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_ZoneManager_FromFfi(handle) : null;

// End of ZoneManager "private" section.
