import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_token_cache.dart' as __lib;
import 'package:navigine_sdk/com/_type_repository.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/camera_update_reason.dart';

abstract class CameraListener {
    factory CameraListener(
      void Function(CameraUpdateReason, bool) onCameraPositionChangedLambda,
    ) => CameraListener$Lambdas(
      onCameraPositionChangedLambda,
    );

    void onCameraPositionChanged(CameraUpdateReason reason, bool finished);



}

// CameraListener "private" section, not exported.

final _navigine_sdk_flutter_CameraListener_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_CameraListener_release_handle'));

final _navigine_sdk_flutter_CameraListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64, Int32, Int64, Handle, Pointer),
    Pointer<Void> Function(int, int, int, Object, Pointer)
  >('navigine_sdk_flutter_CameraListener_create_proxy'));


class CameraListener$Lambdas implements CameraListener {
    void Function(CameraUpdateReason, bool) onCameraPositionChangedLambda;

    CameraListener$Lambdas(
      this.onCameraPositionChangedLambda,
    );

    @override
    void onCameraPositionChanged(CameraUpdateReason reason, bool finished) =>
      onCameraPositionChangedLambda(reason, finished);


}
int _navigine_sdk_flutter_CameraListener_onCameraPositionChangedStatic(Object _obj, int reason, int finished) {
    
    try  {
        (_obj as CameraListener).onCameraPositionChanged(
          navigine_sdk_flutter_CameraUpdateReason_FromFfi(reason),
          navigine_sdk_flutter_bool_FromFfi(finished),
        );

        
    }
    finally  {
          navigine_sdk_flutter_CameraUpdateReason_ReleaseFfiHandle(reason);
          navigine_sdk_flutter_bool_ReleaseFfiHandle(finished);

    }
    return 0;
}

Pointer<Void> navigine_sdk_flutter_CameraListener_ToFfi(CameraListener value) {
    final result = _navigine_sdk_flutter_CameraListener_CreateProxy(
      __lib.getObjectToken(value),
      __lib.LibraryContext.isolateId,
      __lib.createExecutePort(),
      value,
      Pointer.fromFunction<Uint8 Function(Handle, Uint32, Uint8)>(_navigine_sdk_flutter_CameraListener_onCameraPositionChangedStatic, __lib.unknownError),
    );

    return result;
}

Pointer<Void> navigine_sdk_flutter_CameraListener_ToFfiNullable(CameraListener? value) => 
  value != null ? navigine_sdk_flutter_CameraListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_CameraListener_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_CameraListener_ReleaseHandle(handle);

void navigine_sdk_flutter_CameraListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_CameraListener_ReleaseHandle(handle);

// End of CameraListener "private" section.
