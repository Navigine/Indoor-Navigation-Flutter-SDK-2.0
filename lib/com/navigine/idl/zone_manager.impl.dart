part of 'zone_manager.dart';

// ZoneManager "private" section, not exported.

final _navigine_sdk_flutter_ZoneManager_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_ZoneManager_free');


class ZoneManager$Impl implements ZoneManager, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_ZoneManager_free.cast());

    ZoneManager$Impl.fromExternalPtr(this.ptr);

    @internal
    ZoneManager$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory ZoneManager$Impl.fromNativePtr(Pointer<Void> ptr) =>
        ZoneManager$Impl.fromNativePtrImpl(ptr);


    static Pointer<Void> getNativePtr(ZoneManager? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as ZoneManager$Impl).ptr;
    }

    static ZoneManager? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return ZoneManager$Impl.fromNativePtr(ptr);
    }

    @override
    void addZoneListener(ZoneListener listener) {
        final _addZoneListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_ZoneManager_addZoneListener__Listener'));
        _addZoneListenerFfi(this.ptr, ZoneListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void removeZoneListener(ZoneListener listener) {
        final _removeZoneListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_ZoneManager_removeZoneListener__Listener'));
        _removeZoneListenerFfi(this.ptr, ZoneListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }




}

// End of ZoneManager "private" section.
