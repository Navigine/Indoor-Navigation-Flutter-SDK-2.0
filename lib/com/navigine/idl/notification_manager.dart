import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_token_cache.dart' as __lib;
import 'package:navigine_sdk/com/_type_repository.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/notification_listener.dart';

abstract class NotificationManager {

    void addNotificationListener(NotificationListener listener);
    void removeNotificationListener(NotificationListener listener);



}

// NotificationManager "private" section, not exported.

final _navigine_sdk_flutter_NotificationManager_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_NotificationManager_copy_handle'));

final _navigine_sdk_flutter_NotificationManager_RegisterFinalizer = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Int32, Handle),
    void Function(Pointer<Void>, int, Object)
  >('navigine_sdk_flutter_NotificationManager_register_finalizer'));

final _navigine_sdk_flutter_NotificationManager_GetTypeId = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_NotificationManager_get_type_id'));

final _navigine_sdk_flutter_NotificationManager_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_NotificationManager_release_handle'));

final _navigine_sdk_flutter_NotificationManager_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64, Int32, Int64, Handle, Pointer, Pointer),
    Pointer<Void> Function(int, int, int, Object, Pointer, Pointer)
  >('navigine_sdk_flutter_NotificationManager_create_proxy'));


class NotificationManager$Impl extends __lib.NativeBase implements NotificationManager {

    NotificationManager$Impl(Pointer<Void> handle) : super(handle);

    @override
    void addNotificationListener(NotificationListener listener) {
        final _addNotificationListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NotificationManager_addNotificationListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_NotificationListener_ToFfi(listener);
        final _handle = this.handle;
        _addNotificationListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_NotificationListener_ReleaseFfiHandle(_listenerHandle);
    }

    @override
    void removeNotificationListener(NotificationListener listener) {
        final _removeNotificationListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NotificationManager_removeNotificationListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_NotificationListener_ToFfi(listener);
        final _handle = this.handle;
        _removeNotificationListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_NotificationListener_ReleaseFfiHandle(_listenerHandle);
    }




}
Pointer<Void> navigine_sdk_flutter_NotificationManager_ToFfi(NotificationManager value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_NotificationManager_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

NotificationManager navigine_sdk_flutter_NotificationManager_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final instance = __lib.getCachedInstance(handle);
    if (instance != null && instance is NotificationManager) return instance;
    final _typeIdHandle = _navigine_sdk_flutter_NotificationManager_GetTypeId(handle);
    final factoryConstructor = __lib.typeRepository[navigine_sdk_flutter_String_FromFfi(_typeIdHandle)];
    navigine_sdk_flutter_String_ReleaseFfiHandle(_typeIdHandle);
    final _copiedHandle = _navigine_sdk_flutter_NotificationManager_CopyHandle(handle);
    final result = factoryConstructor != null
      ? factoryConstructor(_copiedHandle)
      : NotificationManager$Impl(_copiedHandle);
    __lib.cacheInstance(_copiedHandle, result);
    _navigine_sdk_flutter_NotificationManager_RegisterFinalizer(_copiedHandle, __lib.LibraryContext.isolateId, result);
    return result;
}

Pointer<Void> navigine_sdk_flutter_NotificationManager_ToFfiNullable(NotificationManager? value) => 
  value != null ? navigine_sdk_flutter_NotificationManager_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_NotificationManager_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_NotificationManager_ReleaseHandle(handle);

void navigine_sdk_flutter_NotificationManager_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_NotificationManager_ReleaseHandle(handle);

NotificationManager? navigine_sdk_flutter_NotificationManager_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_NotificationManager_FromFfi(handle) : null;

// End of NotificationManager "private" section.
