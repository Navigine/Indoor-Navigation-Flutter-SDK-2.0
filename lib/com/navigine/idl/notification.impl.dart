part of 'notification.dart';

// Notification "private" section, not exported.

final _navigine_sdk_flutter_Notification_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_Notification_check'));

final _navigine_sdk_flutter_Notification_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_Notification_free');


class Notification$Impl implements Notification, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_Notification_free.cast());

    Notification$Impl.fromExternalPtr(this.ptr);

    @internal
    Notification$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory Notification$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_Notification_check(ptr);

    static Pointer<Void> getNativePtr(Notification? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as Notification$Impl).ptr;
    }

    static Notification? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return Notification$Impl.fromNativePtr(ptr);
    }


    int get id {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Notification_id_get'));

        final _idHandle = _getFfi(this.ptr);
        final _result = _idHandle;
        exception.checkCallResult();
        return _result;
    }


    String get title {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_Notification_title_get'));

        final _titleHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_titleHandle);
        exception.checkCallResult();
        return _result;
    }


    String get content {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            NativeString Function(Pointer<Void>),
            NativeString Function(Pointer<Void>)
          >('navigine_sdk_flutter_Notification_content_get'));

        final _contentHandle = _getFfi(this.ptr);
        final _result = toPlatformString(_contentHandle);
        exception.checkCallResult();
        return _result;
    }


    String? get imageUrl {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Notification_imageUrl_get'));

        final _imageUrlHandle = _getFfi(this.ptr);
        final _result = toPlatformFromPointerString(_imageUrlHandle);
        exception.checkCallResult();
        return _result;
    }




}

// End of Notification "private" section.
