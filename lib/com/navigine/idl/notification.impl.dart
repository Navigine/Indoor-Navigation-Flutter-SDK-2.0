part of 'notification.dart';

// Notification "private" section, not exported.

final _navigine_sdk_flutter_Notification_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Notification_copy_handle'));

final _navigine_sdk_flutter_Notification_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Notification_release_handle'));

final _navigine_sdk_flutter_Notification_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_Notification_free');


class Notification$Impl extends __lib.NativeBase implements Notification, Finalizable {
    Notification$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_Notification_free.cast());


    int get id {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Int32 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_Notification_id_get'));

        final _handle = this.handle;
        final _idHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_int_FromFfi(_idHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_idHandle);
        return _result;
    }


    String get title {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Notification_title_get'));

        final _handle = this.handle;
        final _titleHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfi(_titleHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_titleHandle);
        return _result;
    }


    String get content {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Notification_content_get'));

        final _handle = this.handle;
        final _contentHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfi(_contentHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_contentHandle);
        return _result;
    }


    String? get imageUrl {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Notification_imageUrl_get'));

        final _handle = this.handle;
        final _imageUrlHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_String_FromFfiNullable(_imageUrlHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandleNullable(_imageUrlHandle);
        return _result;
    }




}

Pointer<Void> navigine_sdk_flutter_Notification_ToFfi(Notification value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_Notification_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

Notification navigine_sdk_flutter_Notification_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_Notification_CopyHandle(handle);
    final result = Notification$Impl(_copiedHandle);
    Notification$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_Notification_ToFfiNullable(Notification? value) => 
  value != null ? navigine_sdk_flutter_Notification_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_Notification_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_Notification_ReleaseHandle(handle);

void navigine_sdk_flutter_Notification_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_Notification_ReleaseHandle(handle);

Notification? navigine_sdk_flutter_Notification_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_Notification_FromFfi(handle) : null;

// End of Notification "private" section.
