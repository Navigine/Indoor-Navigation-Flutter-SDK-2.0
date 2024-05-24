import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/camera_update_reason.dart';

abstract class CameraListener {

    void onCameraPositionChanged(CameraUpdateReason reason, bool finished);



}

// CameraListener "private" section, not exported.

final _navigine_sdk_flutter_CameraListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_CameraListener_free');

final _navigine_sdk_flutter_CameraListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer),
    Pointer<Void> Function(Pointer)
  >('navigine_sdk_flutter_CameraListener_create_proxy'));

final _navigine_sdk_flutter_CameraListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_CameraListener_set_ports'));


int _navigine_sdk_flutter_CameraListener_onCameraPositionChangedStatic(Pointer<Void> _obj, int reason, int finished) {
    
    final listener = CameraListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onCameraPositionChanged(
          navigine_sdk_flutter_CameraUpdateReason_FromFfi(reason),
          navigine_sdk_flutter_bool_FromFfi(finished),
        );
        
    }
    catch (e, stack)  {
        // todo print stacktrace
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_CameraUpdateReason_ReleaseFfiHandle(reason);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(finished);
    }
    return 0;
}


class _CameraListenerWrapper extends __lib.NativeBase implements Finalizable {
    _CameraListenerWrapper(Pointer<Void> handle) : super(handle) {
        _finalizer.attach(this, handle);
    }
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_CameraListener_free.cast());
}

extension CameraListenerImpl on CameraListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<CameraListener>>{};
    static final _listenerToPointer = WeakMap<CameraListener, _CameraListenerWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }
}

Pointer<Void> navigine_sdk_flutter_CameraListener_ToFfi(CameraListener value) {
    final result = _navigine_sdk_flutter_CameraListener_CreateProxy(
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Uint32, Uint8)>(_navigine_sdk_flutter_CameraListener_onCameraPositionChangedStatic, __lib.unknownError),
    );
    CameraListenerImpl._pointerToListener[result] = WeakReference(value);
    CameraListenerImpl._listenerToPointer[value] = _CameraListenerWrapper(result);
    _navigine_sdk_flutter_CameraListener_SetPorts(result, __lib.createPortWithCallback(CameraListenerImpl._destructor), __lib.createExecutePort());

    return result;
}

Pointer<Void> navigine_sdk_flutter_CameraListener_ToFfiNullable(CameraListener? value) => 
  value != null ? navigine_sdk_flutter_CameraListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_CameraListener_ReleaseFfiHandle(Pointer<Void> handle) => 
{};

void navigine_sdk_flutter_CameraListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
{};

// End of CameraListener "private" section.
