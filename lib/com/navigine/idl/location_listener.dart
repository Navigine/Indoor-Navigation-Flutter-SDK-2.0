import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_token_cache.dart' as __lib;
import 'package:navigine_sdk/com/_type_repository.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/location.dart';
import 'package:navigine_sdk/error.dart';

abstract class LocationListener {
    factory LocationListener(
      void Function(Location) onLocationLoadedLambda,
      void Function(int, Error) onLocationFailedLambda,
      void Function(int) onLocationUploadedLambda,
    ) => LocationListener$Lambdas(
      onLocationLoadedLambda,
      onLocationFailedLambda,
      onLocationUploadedLambda,
    );

    void onLocationLoaded(Location location);
    void onLocationFailed(int locationId, Error error);
    void onLocationUploaded(int locationId);



}

// LocationListener "private" section, not exported.

final _navigine_sdk_flutter_LocationListener_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationListener_release_handle'));

final _navigine_sdk_flutter_LocationListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64, Int32, Int64, Handle, Pointer, Pointer, Pointer),
    Pointer<Void> Function(int, int, int, Object, Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_LocationListener_create_proxy'));


class LocationListener$Lambdas implements LocationListener {
    void Function(Location) onLocationLoadedLambda;
    void Function(int, Error) onLocationFailedLambda;
    void Function(int) onLocationUploadedLambda;

    LocationListener$Lambdas(
      this.onLocationLoadedLambda,
      this.onLocationFailedLambda,
      this.onLocationUploadedLambda,
    );

    @override
    void onLocationLoaded(Location location) =>
      onLocationLoadedLambda(location);

    @override
    void onLocationFailed(int locationId, Error error) =>
      onLocationFailedLambda(locationId, error);

    @override
    void onLocationUploaded(int locationId) =>
      onLocationUploadedLambda(locationId);


}
int _navigine_sdk_flutter_LocationListener_onLocationLoadedStatic(Object _obj, Pointer<Void> location) {
    
    try  {
        (_obj as LocationListener).onLocationLoaded(
          navigine_sdk_flutter_Location_FromFfi(location),
        );

        
    }
    finally  {
          navigine_sdk_flutter_Location_ReleaseFfiHandle(location);

    }
    return 0;
}

int _navigine_sdk_flutter_LocationListener_onLocationFailedStatic(Object _obj, int locationId, Pointer<Void> error) {
    
    try  {
        (_obj as LocationListener).onLocationFailed(
          navigine_sdk_flutter_int_FromFfi(locationId),
          navigine_sdk_flutter_Error_FromFfi(error),
        );

        
    }
    finally  {
          navigine_sdk_flutter_int_ReleaseFfiHandle(locationId);
          navigine_sdk_flutter_Error_ReleaseFfiHandle(error);

    }
    return 0;
}

int _navigine_sdk_flutter_LocationListener_onLocationUploadedStatic(Object _obj, int locationId) {
    
    try  {
        (_obj as LocationListener).onLocationUploaded(
          navigine_sdk_flutter_int_FromFfi(locationId),
        );

        
    }
    finally  {
          navigine_sdk_flutter_int_ReleaseFfiHandle(locationId);

    }
    return 0;
}

Pointer<Void> navigine_sdk_flutter_LocationListener_ToFfi(LocationListener value) {
    final result = _navigine_sdk_flutter_LocationListener_CreateProxy(
      __lib.getObjectToken(value),
      __lib.LibraryContext.isolateId,
      __lib.createExecutePort(),
      value,
      Pointer.fromFunction<Uint8 Function(Handle, Pointer<Void>)>(_navigine_sdk_flutter_LocationListener_onLocationLoadedStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Handle, Int32, Pointer<Void>)>(_navigine_sdk_flutter_LocationListener_onLocationFailedStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Handle, Int32)>(_navigine_sdk_flutter_LocationListener_onLocationUploadedStatic, __lib.unknownError),
    );

    return result;
}

Pointer<Void> navigine_sdk_flutter_LocationListener_ToFfiNullable(LocationListener? value) => 
  value != null ? navigine_sdk_flutter_LocationListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_LocationListener_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_LocationListener_ReleaseHandle(handle);

void navigine_sdk_flutter_LocationListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_LocationListener_ReleaseHandle(handle);

// End of LocationListener "private" section.
