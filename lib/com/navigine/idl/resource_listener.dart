import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_token_cache.dart' as __lib;
import 'package:navigine_sdk/com/_type_repository.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/image.dart';
import 'package:navigine_sdk/error.dart';

abstract class ResourceListener {
    factory ResourceListener(
      void Function(String, Image) onLoadedLambda,
      void Function(String, Error) onFailedLambda,
    ) => ResourceListener$Lambdas(
      onLoadedLambda,
      onFailedLambda,
    );

    void onLoaded(String imageUrl, Image image);
    void onFailed(String imageUrl, Error error);



}

// ResourceListener "private" section, not exported.

final _navigine_sdk_flutter_ResourceListener_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_ResourceListener_release_handle'));

final _navigine_sdk_flutter_ResourceListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64, Int32, Int64, Handle, Pointer, Pointer),
    Pointer<Void> Function(int, int, int, Object, Pointer, Pointer)
  >('navigine_sdk_flutter_ResourceListener_create_proxy'));


class ResourceListener$Lambdas implements ResourceListener {
    void Function(String, Image) onLoadedLambda;
    void Function(String, Error) onFailedLambda;

    ResourceListener$Lambdas(
      this.onLoadedLambda,
      this.onFailedLambda,
    );

    @override
    void onLoaded(String imageUrl, Image image) =>
      onLoadedLambda(imageUrl, image);

    @override
    void onFailed(String imageUrl, Error error) =>
      onFailedLambda(imageUrl, error);


}
int _navigine_sdk_flutter_ResourceListener_onLoadedStatic(Object _obj, Pointer<Void> imageUrl, Pointer<Void> image) {
    
    try  {
        (_obj as ResourceListener).onLoaded(
          navigine_sdk_flutter_String_FromFfi(imageUrl),
          navigine_sdk_flutter_Image_FromFfi(image),
        );

        
    }
    finally  {
          navigine_sdk_flutter_String_ReleaseFfiHandle(imageUrl);
          navigine_sdk_flutter_Image_ReleaseFfiHandle(image);

    }
    return 0;
}

int _navigine_sdk_flutter_ResourceListener_onFailedStatic(Object _obj, Pointer<Void> imageUrl, Pointer<Void> error) {
    
    try  {
        (_obj as ResourceListener).onFailed(
          navigine_sdk_flutter_String_FromFfi(imageUrl),
          navigine_sdk_flutter_Error_FromFfi(error),
        );

        
    }
    finally  {
          navigine_sdk_flutter_String_ReleaseFfiHandle(imageUrl);
          navigine_sdk_flutter_Error_ReleaseFfiHandle(error);

    }
    return 0;
}

Pointer<Void> navigine_sdk_flutter_ResourceListener_ToFfi(ResourceListener value) {
    final result = _navigine_sdk_flutter_ResourceListener_CreateProxy(
      __lib.getObjectToken(value),
      __lib.LibraryContext.isolateId,
      __lib.createExecutePort(),
      value,
      Pointer.fromFunction<Uint8 Function(Handle, Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_ResourceListener_onLoadedStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Handle, Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_ResourceListener_onFailedStatic, __lib.unknownError),
    );

    return result;
}

Pointer<Void> navigine_sdk_flutter_ResourceListener_ToFfiNullable(ResourceListener? value) => 
  value != null ? navigine_sdk_flutter_ResourceListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_ResourceListener_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_ResourceListener_ReleaseHandle(handle);

void navigine_sdk_flutter_ResourceListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_ResourceListener_ReleaseHandle(handle);

// End of ResourceListener "private" section.
