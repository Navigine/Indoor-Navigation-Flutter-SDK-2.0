import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_token_cache.dart' as __lib;
import 'package:navigine_sdk/com/_type_repository.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/route_path.dart';

abstract class AsyncRouteListener {
    factory AsyncRouteListener(
      void Function(RoutePath) onRouteChangedLambda,
      void Function(double, LocationPoint) onRouteAdvancedLambda,
    ) => AsyncRouteListener$Lambdas(
      onRouteChangedLambda,
      onRouteAdvancedLambda,
    );

    void onRouteChanged(RoutePath currentPath);
    void onRouteAdvanced(double distance, LocationPoint point);



}

// AsyncRouteListener "private" section, not exported.

final _navigine_sdk_flutter_AsyncRouteListener_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_AsyncRouteListener_release_handle'));

final _navigine_sdk_flutter_AsyncRouteListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64, Int32, Int64, Handle, Pointer, Pointer),
    Pointer<Void> Function(int, int, int, Object, Pointer, Pointer)
  >('navigine_sdk_flutter_AsyncRouteListener_create_proxy'));


class AsyncRouteListener$Lambdas implements AsyncRouteListener {
    void Function(RoutePath) onRouteChangedLambda;
    void Function(double, LocationPoint) onRouteAdvancedLambda;

    AsyncRouteListener$Lambdas(
      this.onRouteChangedLambda,
      this.onRouteAdvancedLambda,
    );

    @override
    void onRouteChanged(RoutePath currentPath) =>
      onRouteChangedLambda(currentPath);

    @override
    void onRouteAdvanced(double distance, LocationPoint point) =>
      onRouteAdvancedLambda(distance, point);


}
int _navigine_sdk_flutter_AsyncRouteListener_onRouteChangedStatic(Object _obj, Pointer<Void> currentPath) {
    
    try  {
        (_obj as AsyncRouteListener).onRouteChanged(
          navigine_sdk_flutter_RoutePath_FromFfi(currentPath),
        );

        
    }
    finally  {
          navigine_sdk_flutter_RoutePath_ReleaseFfiHandle(currentPath);

    }
    return 0;
}

int _navigine_sdk_flutter_AsyncRouteListener_onRouteAdvancedStatic(Object _obj, double distance, Pointer<Void> point) {
    
    try  {
        (_obj as AsyncRouteListener).onRouteAdvanced(
          navigine_sdk_flutter_double_FromFfi(distance),
          navigine_sdk_flutter_LocationPoint_FromFfi(point),
        );

        
    }
    finally  {
          navigine_sdk_flutter_double_ReleaseFfiHandle(distance);
          navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(point);

    }
    return 0;
}

Pointer<Void> navigine_sdk_flutter_AsyncRouteListener_ToFfi(AsyncRouteListener value) {
    final result = _navigine_sdk_flutter_AsyncRouteListener_CreateProxy(
      __lib.getObjectToken(value),
      __lib.LibraryContext.isolateId,
      __lib.createExecutePort(),
      value,
      Pointer.fromFunction<Uint8 Function(Handle, Pointer<Void>)>(_navigine_sdk_flutter_AsyncRouteListener_onRouteChangedStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Handle, Float, Pointer<Void>)>(_navigine_sdk_flutter_AsyncRouteListener_onRouteAdvancedStatic, __lib.unknownError),
    );

    return result;
}

Pointer<Void> navigine_sdk_flutter_AsyncRouteListener_ToFfiNullable(AsyncRouteListener? value) => 
  value != null ? navigine_sdk_flutter_AsyncRouteListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_AsyncRouteListener_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_AsyncRouteListener_ReleaseHandle(handle);

void navigine_sdk_flutter_AsyncRouteListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_AsyncRouteListener_ReleaseHandle(handle);

// End of AsyncRouteListener "private" section.
