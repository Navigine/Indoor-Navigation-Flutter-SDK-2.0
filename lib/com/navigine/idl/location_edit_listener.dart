import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/location.dart';
import 'package:navigine_sdk/error.dart';

abstract class LocationEditListener {

    void onLocationEditSuccess(Location location);
    void onLocationEditError(Error error);



}

// LocationEditListener "private" section, not exported.

final _navigine_sdk_flutter_LocationEditListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_LocationEditListener_free');

final _navigine_sdk_flutter_LocationEditListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer)
  >('navigine_sdk_flutter_LocationEditListener_create_proxy'));

final _navigine_sdk_flutter_LocationEditListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_LocationEditListener_set_ports'));


int _navigine_sdk_flutter_LocationEditListener_onLocationEditSuccessStatic(Pointer<Void> _obj, Pointer<Void> location) {
    
    final listener = LocationEditListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onLocationEditSuccess(
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

int _navigine_sdk_flutter_LocationEditListener_onLocationEditErrorStatic(Pointer<Void> _obj, Pointer<Void> error) {
    
    final listener = LocationEditListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onLocationEditError(
          navigine_sdk_flutter_Error_FromFfi(error),
        );
        
    }
    catch (e, stack)  {
        // todo print stacktrace
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_Error_ReleaseFfiHandle(error);
    }
    return 0;
}


class _LocationEditListenerWrapper extends __lib.NativeBase implements Finalizable {
    _LocationEditListenerWrapper(Pointer<Void> handle) : super(handle) {
        _finalizer.attach(this, handle);
    }
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_LocationEditListener_free.cast());
}

extension LocationEditListenerImpl on LocationEditListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<LocationEditListener>>{};
    static final _listenerToPointer = WeakMap<LocationEditListener, _LocationEditListenerWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }
}

Pointer<Void> navigine_sdk_flutter_LocationEditListener_ToFfi(LocationEditListener value) {
    final result = _navigine_sdk_flutter_LocationEditListener_CreateProxy(
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_LocationEditListener_onLocationEditSuccessStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_LocationEditListener_onLocationEditErrorStatic, __lib.unknownError),
    );
    LocationEditListenerImpl._pointerToListener[result] = WeakReference(value);
    LocationEditListenerImpl._listenerToPointer[value] = _LocationEditListenerWrapper(result);
    _navigine_sdk_flutter_LocationEditListener_SetPorts(result, __lib.createPortWithCallback(LocationEditListenerImpl._destructor), __lib.createExecutePort());

    return result;
}

Pointer<Void> navigine_sdk_flutter_LocationEditListener_ToFfiNullable(LocationEditListener? value) => 
  value != null ? navigine_sdk_flutter_LocationEditListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_LocationEditListener_ReleaseFfiHandle(Pointer<Void> handle) => 
{};

void navigine_sdk_flutter_LocationEditListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
{};

// End of LocationEditListener "private" section.
