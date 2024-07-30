import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/route_path.dart';

/**
 * Class is used to handle events coming from routing session (@see RouteSession)
 * Methods invoked in UI
 */
abstract class AsyncRouteListener {

    /**
     * @method onRouteChanged - called when new route was built or
     *     old route was rebuilt after missing previouse one.
     *
     * @parameter currentPath - path from current postion to destination point
     */
    void onRouteChanged(RoutePath currentPath);

    /**
     * @method onRouteAdvanced - called when user has progressed along the route
     *     that was built in the method `onRouteChanged`
     *
     * @parameter distance - distance from the beginning or the route (unit meters)
     * @parameter point - current location point on the route
     */
    void onRouteAdvanced(double distance, LocationPoint point);



}

// AsyncRouteListener "private" section, not exported.

final _navigine_sdk_flutter_AsyncRouteListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_AsyncRouteListener_free');

final _navigine_sdk_flutter_AsyncRouteListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer)
  >('navigine_sdk_flutter_AsyncRouteListener_create_proxy'));

final _navigine_sdk_flutter_AsyncRouteListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_AsyncRouteListener_set_ports'));


int _navigine_sdk_flutter_AsyncRouteListener_onRouteChangedStatic(Pointer<Void> _obj, Pointer<Void> currentPath) {
    
    final listener = AsyncRouteListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onRouteChanged(
          navigine_sdk_flutter_RoutePath_FromFfi(currentPath),
        );
        
    }
    catch (e, stack)  {
        // todo print stacktrace
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_RoutePath_ReleaseFfiHandle(currentPath);
    }
    return 0;
}

int _navigine_sdk_flutter_AsyncRouteListener_onRouteAdvancedStatic(Pointer<Void> _obj, double distance, Pointer<Void> point) {
    
    final listener = AsyncRouteListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onRouteAdvanced(
          navigine_sdk_flutter_double_FromFfi(distance),
          navigine_sdk_flutter_LocationPoint_FromFfi(point),
        );
        
    }
    catch (e, stack)  {
        // todo print stacktrace
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_double_ReleaseFfiHandle(distance);
        navigine_sdk_flutter_LocationPoint_ReleaseFfiHandle(point);
    }
    return 0;
}


class _AsyncRouteListenerWrapper extends __lib.NativeBase implements Finalizable {
    _AsyncRouteListenerWrapper(Pointer<Void> handle) : super(handle) {
        _finalizer.attach(this, handle);
    }
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_AsyncRouteListener_free.cast());
}

extension AsyncRouteListenerImpl on AsyncRouteListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<AsyncRouteListener>>{};
    static final _listenerToPointer = WeakMap<AsyncRouteListener, _AsyncRouteListenerWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }
}

Pointer<Void> navigine_sdk_flutter_AsyncRouteListener_ToFfi(AsyncRouteListener value) {
    final result = _navigine_sdk_flutter_AsyncRouteListener_CreateProxy(
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_AsyncRouteListener_onRouteChangedStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Float, Pointer<Void>)>(_navigine_sdk_flutter_AsyncRouteListener_onRouteAdvancedStatic, __lib.unknownError),
    );
    AsyncRouteListenerImpl._pointerToListener[result] = WeakReference(value);
    AsyncRouteListenerImpl._listenerToPointer[value] = _AsyncRouteListenerWrapper(result);
    _navigine_sdk_flutter_AsyncRouteListener_SetPorts(result, __lib.createPortWithCallback(AsyncRouteListenerImpl._destructor), __lib.createExecutePort());

    return result;
}

Pointer<Void> navigine_sdk_flutter_AsyncRouteListener_ToFfiNullable(AsyncRouteListener? value) => 
  value != null ? navigine_sdk_flutter_AsyncRouteListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_AsyncRouteListener_ReleaseFfiHandle(Pointer<Void> handle) => 
{};

void navigine_sdk_flutter_AsyncRouteListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
{};

// End of AsyncRouteListener "private" section.
