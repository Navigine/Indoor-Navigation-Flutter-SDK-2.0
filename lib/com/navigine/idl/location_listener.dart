import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/location.dart';
import 'package:navigine_sdk/error.dart';

/**
 * Class is used to handle events coming from LocationManager (@see LocationManager).
 * Methods invoked in UI
 */
abstract class LocationListener {

    /**
     *
     * @method onLocationLoaded - called when new location version has been downloaded from CMS
     * @parameter location - downloaded location instance (@see Location).
     *
     */
    void onLocationLoaded(Location location);

    /**
     *
     * @method onLocationFailed - called if unable to download location version from CMS
     * @parameter locationId - location unique identifier in SMC.
     * @parameter error - handled error.
     *
     */
    void onLocationFailed(int locationId, Error error);

    /** @internal */
    void onLocationUploaded(int locationId);



}

// LocationListener "private" section, not exported.

final _navigine_sdk_flutter_LocationListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_LocationListener_free');

final _navigine_sdk_flutter_LocationListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_LocationListener_create_proxy'));

final _navigine_sdk_flutter_LocationListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_LocationListener_set_ports'));


int _navigine_sdk_flutter_LocationListener_onLocationLoadedStatic(Pointer<Void> _obj, Pointer<Void> location) {
    
    final listener = LocationListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onLocationLoaded(
          navigine_sdk_flutter_Location_FromFfi(location),
        );
        
    }
    catch (e, stack)  {
        // todo print stacktrace
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_Location_ReleaseFfiHandle(location);
    }
    return 0;
}

int _navigine_sdk_flutter_LocationListener_onLocationFailedStatic(Pointer<Void> _obj, int locationId, Pointer<Void> error) {
    
    final listener = LocationListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onLocationFailed(
          navigine_sdk_flutter_int_FromFfi(locationId),
          navigine_sdk_flutter_Error_FromFfi(error),
        );
        
    }
    catch (e, stack)  {
        // todo print stacktrace
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_int_ReleaseFfiHandle(locationId);
        navigine_sdk_flutter_Error_ReleaseFfiHandle(error);
    }
    return 0;
}

int _navigine_sdk_flutter_LocationListener_onLocationUploadedStatic(Pointer<Void> _obj, int locationId) {
    
    final listener = LocationListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onLocationUploaded(
          navigine_sdk_flutter_int_FromFfi(locationId),
        );
        
    }
    catch (e, stack)  {
        // todo print stacktrace
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_int_ReleaseFfiHandle(locationId);
    }
    return 0;
}


class _LocationListenerWrapper extends __lib.NativeBase implements Finalizable {
    _LocationListenerWrapper(Pointer<Void> handle) : super(handle) {
        _finalizer.attach(this, handle);
    }
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_LocationListener_free.cast());
}

extension LocationListenerImpl on LocationListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<LocationListener>>{};
    static final _listenerToPointer = WeakMap<LocationListener, _LocationListenerWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }
}

Pointer<Void> navigine_sdk_flutter_LocationListener_ToFfi(LocationListener value) {
    final result = _navigine_sdk_flutter_LocationListener_CreateProxy(
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_LocationListener_onLocationLoadedStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Int32, Pointer<Void>)>(_navigine_sdk_flutter_LocationListener_onLocationFailedStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Int32)>(_navigine_sdk_flutter_LocationListener_onLocationUploadedStatic, __lib.unknownError),
    );
    LocationListenerImpl._pointerToListener[result] = WeakReference(value);
    LocationListenerImpl._listenerToPointer[value] = _LocationListenerWrapper(result);
    _navigine_sdk_flutter_LocationListener_SetPorts(result, __lib.createPortWithCallback(LocationListenerImpl._destructor), __lib.createExecutePort());

    return result;
}

Pointer<Void> navigine_sdk_flutter_LocationListener_ToFfiNullable(LocationListener? value) => 
  value != null ? navigine_sdk_flutter_LocationListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_LocationListener_ReleaseFfiHandle(Pointer<Void> handle) => 
{};

void navigine_sdk_flutter_LocationListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
{};

// End of LocationListener "private" section.
