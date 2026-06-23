part of 'notification_listener.dart';

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
          Notification$Impl.fromNativePtr(notification),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}

int _navigine_sdk_flutter_NotificationListener_onNotificationFailedStatic(Pointer<Void> _obj, ErrorNative error) {
    
    final listener = NotificationListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onNotificationFailed(
          ErrorImpl.fromNative(error),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    return 0;
}


final class _navigine_sdk_flutter_NotificationListenerNativeWrapper implements Finalizable {
    _navigine_sdk_flutter_NotificationListenerNativeWrapper(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_NotificationListener_free.cast());
    final Pointer<Void> ptr;
}

extension NotificationListenerImpl on NotificationListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<NotificationListener>>{};
    static final _listenerToPointer = weak_map.WeakMap<NotificationListener, _navigine_sdk_flutter_NotificationListenerNativeWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }

    static Pointer<Void> _newNativeObject(NotificationListener obj) {
        final ptr = _navigine_sdk_flutter_NotificationListener_CreateProxy(
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_NotificationListener_onNotificationLoadedStatic, __lib.unknownError),
          Pointer.fromFunction<Uint8 Function(Pointer<Void>, ErrorNative)>(_navigine_sdk_flutter_NotificationListener_onNotificationFailedStatic, __lib.unknownError),
        );
        _pointerToListener[ptr] = WeakReference(obj);
        _listenerToPointer[obj] = _navigine_sdk_flutter_NotificationListenerNativeWrapper(ptr);
        _navigine_sdk_flutter_NotificationListener_SetPorts(ptr, __lib.createPortWithCallback(_destructor), __lib.createExecutePort());
        return ptr;
    }

    static Pointer<Void> getNativePtr(NotificationListener? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        final foundPointer = _listenerToPointer[obj];
        if (foundPointer == null) {
            return _newNativeObject(obj);
        }
        return foundPointer.ptr;
    }
}

// End of NotificationListener "private" section.
