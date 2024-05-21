import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_token_cache.dart' as __lib;
import 'package:navigine_sdk/com/_type_repository.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/notification.dart';
import 'package:navigine_sdk/error.dart';

abstract class NotificationListener {
    factory NotificationListener(
      void Function(Notification) onNotificationLoadedLambda,
      void Function(Error) onNotificationFailedLambda,
    ) => NotificationListener$Lambdas(
      onNotificationLoadedLambda,
      onNotificationFailedLambda,
    );

    void onNotificationLoaded(Notification notification);
    void onNotificationFailed(Error error);



}

// NotificationListener "private" section, not exported.

final _navigine_sdk_flutter_NotificationListener_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_NotificationListener_release_handle'));

final _navigine_sdk_flutter_NotificationListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64, Int32, Int64, Handle, Pointer, Pointer),
    Pointer<Void> Function(int, int, int, Object, Pointer, Pointer)
  >('navigine_sdk_flutter_NotificationListener_create_proxy'));


class NotificationListener$Lambdas implements NotificationListener {
    void Function(Notification) onNotificationLoadedLambda;
    void Function(Error) onNotificationFailedLambda;

    NotificationListener$Lambdas(
      this.onNotificationLoadedLambda,
      this.onNotificationFailedLambda,
    );

    @override
    void onNotificationLoaded(Notification notification) =>
      onNotificationLoadedLambda(notification);

    @override
    void onNotificationFailed(Error error) =>
      onNotificationFailedLambda(error);


}
int _navigine_sdk_flutter_NotificationListener_onNotificationLoadedStatic(Object _obj, Pointer<Void> notification) {
    
    try  {
        (_obj as NotificationListener).onNotificationLoaded(
          navigine_sdk_flutter_Notification_FromFfi(notification),
        );

        
    }
    finally  {
          navigine_sdk_flutter_Notification_ReleaseFfiHandle(notification);

    }
    return 0;
}

int _navigine_sdk_flutter_NotificationListener_onNotificationFailedStatic(Object _obj, Pointer<Void> error) {
    
    try  {
        (_obj as NotificationListener).onNotificationFailed(
          navigine_sdk_flutter_Error_FromFfi(error),
        );

        
    }
    finally  {
          navigine_sdk_flutter_Error_ReleaseFfiHandle(error);

    }
    return 0;
}

Pointer<Void> navigine_sdk_flutter_NotificationListener_ToFfi(NotificationListener value) {
    final result = _navigine_sdk_flutter_NotificationListener_CreateProxy(
      __lib.getObjectToken(value),
      __lib.LibraryContext.isolateId,
      __lib.createExecutePort(),
      value,
      Pointer.fromFunction<Uint8 Function(Handle, Pointer<Void>)>(_navigine_sdk_flutter_NotificationListener_onNotificationLoadedStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Handle, Pointer<Void>)>(_navigine_sdk_flutter_NotificationListener_onNotificationFailedStatic, __lib.unknownError),
    );

    return result;
}

Pointer<Void> navigine_sdk_flutter_NotificationListener_ToFfiNullable(NotificationListener? value) => 
  value != null ? navigine_sdk_flutter_NotificationListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_NotificationListener_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_NotificationListener_ReleaseHandle(handle);

void navigine_sdk_flutter_NotificationListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_NotificationListener_ReleaseHandle(handle);

// End of NotificationListener "private" section.
