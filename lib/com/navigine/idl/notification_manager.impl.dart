part of 'notification_manager.dart';

// NotificationManager "private" section, not exported.

final _navigine_sdk_flutter_NotificationManager_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_NotificationManager_free');


class NotificationManager$Impl implements NotificationManager, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_NotificationManager_free.cast());

    NotificationManager$Impl.fromExternalPtr(this.ptr);

    @internal
    NotificationManager$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory NotificationManager$Impl.fromNativePtr(Pointer<Void> ptr) =>
        NotificationManager$Impl.fromNativePtrImpl(ptr);


    static Pointer<Void> getNativePtr(NotificationManager? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as NotificationManager$Impl).ptr;
    }

    static NotificationManager? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return NotificationManager$Impl.fromNativePtr(ptr);
    }

    @override
    void addNotificationListener(NotificationListener listener) {
        final _addNotificationListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NotificationManager_addNotificationListener__Listener'));
        _addNotificationListenerFfi(this.ptr, NotificationListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void removeNotificationListener(NotificationListener listener) {
        final _removeNotificationListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_NotificationManager_removeNotificationListener__Listener'));
        _removeNotificationListenerFfi(this.ptr, NotificationListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }




}

// End of NotificationManager "private" section.
