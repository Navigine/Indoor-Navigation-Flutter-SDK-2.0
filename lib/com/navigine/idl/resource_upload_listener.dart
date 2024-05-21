import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_token_cache.dart' as __lib;
import 'package:navigine_sdk/com/_type_repository.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/error.dart';

abstract class ResourceUploadListener {
    factory ResourceUploadListener(
      void Function(String) onUploadedLambda,
      void Function(Error) onFailedLambda,
    ) => ResourceUploadListener$Lambdas(
      onUploadedLambda,
      onFailedLambda,
    );

    void onUploaded(String fileName);
    void onFailed(Error error);



}

// ResourceUploadListener "private" section, not exported.

final _navigine_sdk_flutter_ResourceUploadListener_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_ResourceUploadListener_release_handle'));

final _navigine_sdk_flutter_ResourceUploadListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64, Int32, Int64, Handle, Pointer, Pointer),
    Pointer<Void> Function(int, int, int, Object, Pointer, Pointer)
  >('navigine_sdk_flutter_ResourceUploadListener_create_proxy'));


class ResourceUploadListener$Lambdas implements ResourceUploadListener {
    void Function(String) onUploadedLambda;
    void Function(Error) onFailedLambda;

    ResourceUploadListener$Lambdas(
      this.onUploadedLambda,
      this.onFailedLambda,
    );

    @override
    void onUploaded(String fileName) =>
      onUploadedLambda(fileName);

    @override
    void onFailed(Error error) =>
      onFailedLambda(error);


}
int _navigine_sdk_flutter_ResourceUploadListener_onUploadedStatic(Object _obj, Pointer<Void> fileName) {
    
    try  {
        (_obj as ResourceUploadListener).onUploaded(
          navigine_sdk_flutter_String_FromFfi(fileName),
        );

        
    }
    finally  {
          navigine_sdk_flutter_String_ReleaseFfiHandle(fileName);

    }
    return 0;
}

int _navigine_sdk_flutter_ResourceUploadListener_onFailedStatic(Object _obj, Pointer<Void> error) {
    
    try  {
        (_obj as ResourceUploadListener).onFailed(
          navigine_sdk_flutter_Error_FromFfi(error),
        );

        
    }
    finally  {
          navigine_sdk_flutter_Error_ReleaseFfiHandle(error);

    }
    return 0;
}

Pointer<Void> navigine_sdk_flutter_ResourceUploadListener_ToFfi(ResourceUploadListener value) {
    final result = _navigine_sdk_flutter_ResourceUploadListener_CreateProxy(
      __lib.getObjectToken(value),
      __lib.LibraryContext.isolateId,
      __lib.createExecutePort(),
      value,
      Pointer.fromFunction<Uint8 Function(Handle, Pointer<Void>)>(_navigine_sdk_flutter_ResourceUploadListener_onUploadedStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Handle, Pointer<Void>)>(_navigine_sdk_flutter_ResourceUploadListener_onFailedStatic, __lib.unknownError),
    );

    return result;
}

Pointer<Void> navigine_sdk_flutter_ResourceUploadListener_ToFfiNullable(ResourceUploadListener? value) => 
  value != null ? navigine_sdk_flutter_ResourceUploadListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_ResourceUploadListener_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_ResourceUploadListener_ReleaseHandle(handle);

void navigine_sdk_flutter_ResourceUploadListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_ResourceUploadListener_ReleaseHandle(handle);

// End of ResourceUploadListener "private" section.
