import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/notification_listener.dart';

/**
 *
 * Class is used to manage local notifications
 * Notification should be created in CMS. Notification handle iBeacon signals,
 * detect proximity and notify user about event.
 *
 */
abstract class NotificationManager implements Finalizable {

    /**
     *
     * Method is used to add listener to handle new notification events (@see NotificationListener).
     * Do not forget to remove listener if it is no longer needed!
     *
     */
    void addNotificationListener(NotificationListener listener);

    /**
     *
     * Method is used to remove listener.
     *
     */
    void removeNotificationListener(NotificationListener listener);



}

// NotificationManager "private" section, not exported.

final _navigine_sdk_flutter_NotificationManager_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_NotificationManager_copy_handle'));

final _navigine_sdk_flutter_NotificationManager_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_NotificationManager_release_handle'));

final _navigine_sdk_flutter_NotificationManager_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_NotificationManager_free');

final _navigine_sdk_flutter_NotificationManager_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer)
  >('navigine_sdk_flutter_NotificationManager_create_proxy'));

final _navigine_sdk_flutter_NotificationManager_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_NotificationManager_set_ports'));


class NotificationManager$Impl extends __lib.NativeBase implements NotificationManager, Finalizable {
    NotificationManager$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_NotificationManager_free.cast());

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
    final _copiedHandle = _navigine_sdk_flutter_NotificationManager_CopyHandle(handle);
    final result = NotificationManager$Impl(_copiedHandle);
    NotificationManager$Impl._finalizer.attach(result, _copiedHandle);
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
