import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_token_cache.dart' as __lib;
import 'package:navigine_sdk/com/_type_repository.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/async_route_listener.dart';

abstract class RouteSession {

    void addRouteListener(AsyncRouteListener listener);
    void removeRouteListener(AsyncRouteListener listener);



}

// RouteSession "private" section, not exported.

final _navigine_sdk_flutter_RouteSession_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteSession_copy_handle'));

final _navigine_sdk_flutter_RouteSession_RegisterFinalizer = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Int32, Handle),
    void Function(Pointer<Void>, int, Object)
  >('navigine_sdk_flutter_RouteSession_register_finalizer'));

final _navigine_sdk_flutter_RouteSession_GetTypeId = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteSession_get_type_id'));

final _navigine_sdk_flutter_RouteSession_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteSession_release_handle'));

final _navigine_sdk_flutter_RouteSession_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64, Int32, Int64, Handle, Pointer, Pointer),
    Pointer<Void> Function(int, int, int, Object, Pointer, Pointer)
  >('navigine_sdk_flutter_RouteSession_create_proxy'));


class RouteSession$Impl extends __lib.NativeBase implements RouteSession {

    RouteSession$Impl(Pointer<Void> handle) : super(handle);

    @override
    void addRouteListener(AsyncRouteListener listener) {
        final _addRouteListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_RouteSession_addRouteListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_AsyncRouteListener_ToFfi(listener);
        final _handle = this.handle;
        _addRouteListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_AsyncRouteListener_ReleaseFfiHandle(_listenerHandle);
    }

    @override
    void removeRouteListener(AsyncRouteListener listener) {
        final _removeRouteListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_RouteSession_removeRouteListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_AsyncRouteListener_ToFfi(listener);
        final _handle = this.handle;
        _removeRouteListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_AsyncRouteListener_ReleaseFfiHandle(_listenerHandle);
    }




}
Pointer<Void> navigine_sdk_flutter_RouteSession_ToFfi(RouteSession value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_RouteSession_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

RouteSession navigine_sdk_flutter_RouteSession_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final instance = __lib.getCachedInstance(handle);
    if (instance != null && instance is RouteSession) return instance;
    final _typeIdHandle = _navigine_sdk_flutter_RouteSession_GetTypeId(handle);
    final factoryConstructor = __lib.typeRepository[navigine_sdk_flutter_String_FromFfi(_typeIdHandle)];
    navigine_sdk_flutter_String_ReleaseFfiHandle(_typeIdHandle);
    final _copiedHandle = _navigine_sdk_flutter_RouteSession_CopyHandle(handle);
    final result = factoryConstructor != null
      ? factoryConstructor(_copiedHandle)
      : RouteSession$Impl(_copiedHandle);
    __lib.cacheInstance(_copiedHandle, result);
    _navigine_sdk_flutter_RouteSession_RegisterFinalizer(_copiedHandle, __lib.LibraryContext.isolateId, result);
    return result;
}

Pointer<Void> navigine_sdk_flutter_RouteSession_ToFfiNullable(RouteSession? value) => 
  value != null ? navigine_sdk_flutter_RouteSession_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_RouteSession_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_RouteSession_ReleaseHandle(handle);

void navigine_sdk_flutter_RouteSession_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_RouteSession_ReleaseHandle(handle);

RouteSession? navigine_sdk_flutter_RouteSession_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_RouteSession_FromFfi(handle) : null;

// End of RouteSession "private" section.
