import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/route_options.dart';
import 'package:navigine_sdk/com/navigine/idl/route_session.dart';

/** Class is used to manage routing sessions */
abstract class AsyncRouteManager implements Finalizable {

    /**
     * Method is used to create routing session
     * @param wayPoint - destination point
     * @param routeOptions - params of routing session (@see RouteSession class)
     */
    RouteSession createRouteSession(LocationPoint wayPoint, RouteOptions routeOptions);

    /** Method is used to cancel routing session */
    void cancelRouteSession(RouteSession session);



}

// AsyncRouteManager "private" section, not exported.

final _navigine_sdk_flutter_AsyncRouteManager_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_AsyncRouteManager_copy_handle'));

final _navigine_sdk_flutter_AsyncRouteManager_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_AsyncRouteManager_release_handle'));

final _navigine_sdk_flutter_AsyncRouteManager_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_AsyncRouteManager_free');

final _navigine_sdk_flutter_AsyncRouteManager_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer)
  >('navigine_sdk_flutter_AsyncRouteManager_create_proxy'));

final _navigine_sdk_flutter_AsyncRouteManager_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_AsyncRouteManager_set_ports'));


class AsyncRouteManager$Impl extends __lib.NativeBase implements AsyncRouteManager, Finalizable {
    AsyncRouteManager$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_AsyncRouteManager_free.cast());

    @override
    RouteSession createRouteSession(LocationPoint wayPoint, RouteOptions routeOptions) {
        final _createRouteSessionFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_AsyncRouteManager_createRouteSession__WayPoint_RouteOptions'));
        final _wayPointHandle = navigine_sdk_flutter_LocationPoint_ToFfi(wayPoint);
        final _routeOptionsHandle = navigine_sdk_flutter_RouteOptions_ToFfi(routeOptions);
        final _handle = this.handle;
        final __resultHandle = _createRouteSessionFfi(_handle, _wayPointHandle, _routeOptionsHandle);
        navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(_wayPointHandle);
        navigine_sdk_flutter_RouteOptions_ReleaseFfiHandle(_routeOptionsHandle);
        try  {
            return navigine_sdk_flutter_RouteSession_FromFfi(__resultHandle);
        }
        catch (e, stack)  {
            // todo print stacktrace
            rethrow;
        }
        finally  {
            navigine_sdk_flutter_RouteSession_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    void cancelRouteSession(RouteSession session) {
        final _cancelRouteSessionFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_AsyncRouteManager_cancelRouteSession__Session'));
        final _sessionHandle = navigine_sdk_flutter_RouteSession_ToFfi(session);
        final _handle = this.handle;
        _cancelRouteSessionFfi(_handle, _sessionHandle);
        navigine_sdk_flutter_RouteSession_ReleaseFfiHandle(_sessionHandle);
    }




}

Pointer<Void> navigine_sdk_flutter_AsyncRouteManager_ToFfi(AsyncRouteManager value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_AsyncRouteManager_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

AsyncRouteManager navigine_sdk_flutter_AsyncRouteManager_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_AsyncRouteManager_CopyHandle(handle);
    final result = AsyncRouteManager$Impl(_copiedHandle);
    AsyncRouteManager$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_AsyncRouteManager_ToFfiNullable(AsyncRouteManager? value) => 
  value != null ? navigine_sdk_flutter_AsyncRouteManager_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_AsyncRouteManager_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_AsyncRouteManager_ReleaseHandle(handle);

void navigine_sdk_flutter_AsyncRouteManager_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_AsyncRouteManager_ReleaseHandle(handle);

AsyncRouteManager? navigine_sdk_flutter_AsyncRouteManager_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_AsyncRouteManager_FromFfi(handle) : null;

// End of AsyncRouteManager "private" section.
