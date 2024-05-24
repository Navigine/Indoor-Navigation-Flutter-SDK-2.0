import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

abstract class Notification implements Finalizable {


    int get id;
    String get title;
    String get content;
    String? get imageUrl;


}

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

final _navigine_sdk_flutter_Notification_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer, Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_Notification_create_proxy'));

final _navigine_sdk_flutter_Notification_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_Notification_set_ports'));


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
        try  {
            return navigine_sdk_flutter_int_FromFfi(_idHandle);
        }
        finally  {
            navigine_sdk_flutter_int_ReleaseFfiHandle(_idHandle);
        }
    }


    String get title {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Notification_title_get'));

        final _handle = this.handle;
        final _titleHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_String_FromFfi(_titleHandle);
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandle(_titleHandle);
        }
    }


    String get content {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Notification_content_get'));

        final _handle = this.handle;
        final _contentHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_String_FromFfi(_contentHandle);
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandle(_contentHandle);
        }
    }


    String? get imageUrl {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Notification_imageUrl_get'));

        final _handle = this.handle;
        final _imageUrlHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_String_FromFfiNullable(_imageUrlHandle);
        }
        finally  {
            navigine_sdk_flutter_String_ReleaseFfiHandleNullable(_imageUrlHandle);
        }
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
