import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_token_cache.dart' as __lib;
import 'package:navigine_sdk/com/_type_repository.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/position.dart';
import 'package:navigine_sdk/error.dart';

abstract class PositionListener {
    factory PositionListener(
      void Function(Position) onPositionUpdatedLambda,
      void Function(Error) onPositionErrorLambda,
    ) => PositionListener$Lambdas(
      onPositionUpdatedLambda,
      onPositionErrorLambda,
    );

    void onPositionUpdated(Position position);
    void onPositionError(Error error);



}

// PositionListener "private" section, not exported.

final _navigine_sdk_flutter_PositionListener_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_PositionListener_release_handle'));

final _navigine_sdk_flutter_PositionListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64, Int32, Int64, Handle, Pointer, Pointer),
    Pointer<Void> Function(int, int, int, Object, Pointer, Pointer)
  >('navigine_sdk_flutter_PositionListener_create_proxy'));


class PositionListener$Lambdas implements PositionListener {
    void Function(Position) onPositionUpdatedLambda;
    void Function(Error) onPositionErrorLambda;

    PositionListener$Lambdas(
      this.onPositionUpdatedLambda,
      this.onPositionErrorLambda,
    );

    @override
    void onPositionUpdated(Position position) =>
      onPositionUpdatedLambda(position);

    @override
    void onPositionError(Error error) =>
      onPositionErrorLambda(error);


}
int _navigine_sdk_flutter_PositionListener_onPositionUpdatedStatic(Object _obj, Pointer<Void> position) {
    
    try  {
        (_obj as PositionListener).onPositionUpdated(
          navigine_sdk_flutter_Position_FromFfi(position),
        );

        
    }
    finally  {
          navigine_sdk_flutter_Position_ReleaseFfiHandle(position);

    }
    return 0;
}

int _navigine_sdk_flutter_PositionListener_onPositionErrorStatic(Object _obj, Pointer<Void> error) {
    
    try  {
        (_obj as PositionListener).onPositionError(
          navigine_sdk_flutter_Error_FromFfi(error),
        );

        
    }
    finally  {
          navigine_sdk_flutter_Error_ReleaseFfiHandle(error);

    }
    return 0;
}

Pointer<Void> navigine_sdk_flutter_PositionListener_ToFfi(PositionListener value) {
    final result = _navigine_sdk_flutter_PositionListener_CreateProxy(
      __lib.getObjectToken(value),
      __lib.LibraryContext.isolateId,
      __lib.createExecutePort(),
      value,
      Pointer.fromFunction<Uint8 Function(Handle, Pointer<Void>)>(_navigine_sdk_flutter_PositionListener_onPositionUpdatedStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Handle, Pointer<Void>)>(_navigine_sdk_flutter_PositionListener_onPositionErrorStatic, __lib.unknownError),
    );

    return result;
}

Pointer<Void> navigine_sdk_flutter_PositionListener_ToFfiNullable(PositionListener? value) => 
  value != null ? navigine_sdk_flutter_PositionListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_PositionListener_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_PositionListener_ReleaseHandle(handle);

void navigine_sdk_flutter_PositionListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_PositionListener_ReleaseHandle(handle);

// End of PositionListener "private" section.
