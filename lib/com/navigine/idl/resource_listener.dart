import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_token_cache.dart' as __lib;
import 'package:navigine_sdk/com/_type_repository.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/image.dart';
import 'package:navigine_sdk/error.dart';

abstract class ResourceListener {

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
Pointer<Void> navigine_sdk_flutter_ResourceListener_ToFfi(ResourceListener value) {
    return Pointer<Void>.fromAddress(0);
}

Pointer<Void> navigine_sdk_flutter_ResourceListener_ToFfiNullable(ResourceListener? value) => 
  value != null ? navigine_sdk_flutter_ResourceListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_ResourceListener_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_ResourceListener_ReleaseHandle(handle);

void navigine_sdk_flutter_ResourceListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_ResourceListener_ReleaseHandle(handle);

// End of ResourceListener "private" section.
