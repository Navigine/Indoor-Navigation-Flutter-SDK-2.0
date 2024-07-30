import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/notification.dart';
import 'package:navigine_sdk/error.dart';

/**
 * Class is used to handle events coming from NotificationManager (@see NotificationManager).
 * Methods invoked in UI
 */
abstract class NotificationListener {

    /**
     *
     * @method onNotificationLoaded - called when iBeacon signal mathed all parameters in notification
     * @parameter notification - notification instance created in CMS (@see Notification).
     *
     */
    void onNotificationLoaded(Notification notification);

    /**
     *
     * @method onNotificationFailed - called if unable to calculate notification or network errors.
     * @parameter error - handled error.
     *
     */
    void onNotificationFailed(Error error);



}

// NotificationListener "private" section, not exported.

final _navigine_sdk_flutter_NotificationListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_NotificationListener_free');

final _navigine_sdk_flutter_NotificationListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer)
  >('navigine_sdk_flutter_NotificationListener_create_proxy'));

final _navigine_sdk_flutter_NotificationListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_NotificationListener_set_ports'));


int _navigine_sdk_flutter_NotificationListener_onNotificationLoadedStatic(Pointer<Void> _obj, Pointer<Void> notification) {
    
    final listener = NotificationListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onNotificationLoaded(
          navigine_sdk_flutter_Notification_FromFfi(notification),
        );
        
    }
    catch (e, stack)  {
        // todo print stacktrace
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_Notification_ReleaseFfiHandle(notification);
    }
    return 0;
}

int _navigine_sdk_flutter_NotificationListener_onNotificationFailedStatic(Pointer<Void> _obj, Pointer<Void> error) {
    
    final listener = NotificationListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onNotificationFailed(
          navigine_sdk_flutter_Error_FromFfi(error),
        );
        
    }
    catch (e, stack)  {
        // todo print stacktrace
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_Error_ReleaseFfiHandle(error);
    }
    return 0;
}


class _NotificationListenerWrapper extends __lib.NativeBase implements Finalizable {
    _NotificationListenerWrapper(Pointer<Void> handle) : super(handle) {
        _finalizer.attach(this, handle);
    }
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_NotificationListener_free.cast());
}

extension NotificationListenerImpl on NotificationListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<NotificationListener>>{};
    static final _listenerToPointer = WeakMap<NotificationListener, _NotificationListenerWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }
}

Pointer<Void> navigine_sdk_flutter_NotificationListener_ToFfi(NotificationListener value) {
    final result = _navigine_sdk_flutter_NotificationListener_CreateProxy(
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_NotificationListener_onNotificationLoadedStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_NotificationListener_onNotificationFailedStatic, __lib.unknownError),
    );
    NotificationListenerImpl._pointerToListener[result] = WeakReference(value);
    NotificationListenerImpl._listenerToPointer[value] = _NotificationListenerWrapper(result);
    _navigine_sdk_flutter_NotificationListener_SetPorts(result, __lib.createPortWithCallback(NotificationListenerImpl._destructor), __lib.createExecutePort());

    return result;
}

Pointer<Void> navigine_sdk_flutter_NotificationListener_ToFfiNullable(NotificationListener? value) => 
  value != null ? navigine_sdk_flutter_NotificationListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_NotificationListener_ReleaseFfiHandle(Pointer<Void> handle) => 
{};

void navigine_sdk_flutter_NotificationListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
{};

// End of NotificationListener "private" section.
