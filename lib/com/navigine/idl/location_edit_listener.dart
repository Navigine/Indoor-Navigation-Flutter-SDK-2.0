import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_token_cache.dart' as __lib;
import 'package:navigine_sdk/com/_type_repository.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/location.dart';
import 'package:navigine_sdk/error.dart';

abstract class LocationEditListener {
    factory LocationEditListener(
      void Function(Location) onLocationEditSuccessLambda,
      void Function(Error) onLocationEditErrorLambda,
    ) => LocationEditListener$Lambdas(
      onLocationEditSuccessLambda,
      onLocationEditErrorLambda,
    );

    void onLocationEditSuccess(Location location);
    void onLocationEditError(Error error);



}

// LocationEditListener "private" section, not exported.

final _navigine_sdk_flutter_LocationEditListener_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationEditListener_release_handle'));

final _navigine_sdk_flutter_LocationEditListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64, Int32, Int64, Handle, Pointer, Pointer),
    Pointer<Void> Function(int, int, int, Object, Pointer, Pointer)
  >('navigine_sdk_flutter_LocationEditListener_create_proxy'));


class LocationEditListener$Lambdas implements LocationEditListener {
    void Function(Location) onLocationEditSuccessLambda;
    void Function(Error) onLocationEditErrorLambda;

    LocationEditListener$Lambdas(
      this.onLocationEditSuccessLambda,
      this.onLocationEditErrorLambda,
    );

    @override
    void onLocationEditSuccess(Location location) =>
      onLocationEditSuccessLambda(location);

    @override
    void onLocationEditError(Error error) =>
      onLocationEditErrorLambda(error);


}
int _navigine_sdk_flutter_LocationEditListener_onLocationEditSuccessStatic(Object _obj, Pointer<Void> location) {
    
    try  {
        (_obj as LocationEditListener).onLocationEditSuccess(
          navigine_sdk_flutter_Location_FromFfi(location),
        );

        
    }
    finally  {
          navigine_sdk_flutter_Location_ReleaseFfiHandle(location);

    }
    return 0;
}

int _navigine_sdk_flutter_LocationEditListener_onLocationEditErrorStatic(Object _obj, Pointer<Void> error) {
    
    try  {
        (_obj as LocationEditListener).onLocationEditError(
          navigine_sdk_flutter_Error_FromFfi(error),
        );

        
    }
    finally  {
          navigine_sdk_flutter_Error_ReleaseFfiHandle(error);

    }
    return 0;
}

Pointer<Void> navigine_sdk_flutter_LocationEditListener_ToFfi(LocationEditListener value) {
    final result = _navigine_sdk_flutter_LocationEditListener_CreateProxy(
      __lib.getObjectToken(value),
      __lib.LibraryContext.isolateId,
      __lib.createExecutePort(),
      value,
      Pointer.fromFunction<Uint8 Function(Handle, Pointer<Void>)>(_navigine_sdk_flutter_LocationEditListener_onLocationEditSuccessStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Handle, Pointer<Void>)>(_navigine_sdk_flutter_LocationEditListener_onLocationEditErrorStatic, __lib.unknownError),
    );

    return result;
}

Pointer<Void> navigine_sdk_flutter_LocationEditListener_ToFfiNullable(LocationEditListener? value) => 
  value != null ? navigine_sdk_flutter_LocationEditListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_LocationEditListener_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_LocationEditListener_ReleaseHandle(handle);

void navigine_sdk_flutter_LocationEditListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_LocationEditListener_ReleaseHandle(handle);

// End of LocationEditListener "private" section.
