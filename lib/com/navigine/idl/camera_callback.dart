import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

/** Called when the move if finished. */
abstract class CameraCallback {
    factory CameraCallback({required void Function(bool completed) onMoveFinished})  {
        return CameraCallbackImpl(onMoveFinished: onMoveFinished);
    }

    void onMoveFinished(bool completed);
}

// CameraCallback "private" section, not exported.

final _navigine_sdk_flutter_CameraCallback_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_CameraCallback_release_handle'));

final _navigine_sdk_flutter_CameraCallback_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer),
    Pointer<Void> Function(Pointer)
  >('navigine_sdk_flutter_CameraCallback_create_proxy'));


final _navigine_sdk_flutter_CameraCallback_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_CameraCallback_set_ports'));

int _navigine_sdk_flutter_CameraCallback_call_SetStatic(Pointer<Void> handle, int completed) {
    final listener = CameraCallbackImpl._pointerToListener[handle]!;
    try  {
          listener.onMoveFinished(navigine_sdk_flutter_bool_FromFfi(completed));
    }
    catch (e, stack) {
        // todo print stacktrace
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_bool_ReleaseFfiHandle(completed);
    }
    return 0;
}

class CameraCallbackImpl implements CameraCallback
{
    static final _pointerToListener = <Pointer<Void>, CameraCallback>{};

    CameraCallbackImpl({required void Function(bool completed) onMoveFinished}):
      _handle = _navigine_sdk_flutter_CameraCallback_CreateProxy(
        Pointer.fromFunction<Int64 Function(Pointer<Void>, Uint8)>(_navigine_sdk_flutter_CameraCallback_call_SetStatic, __lib.unknownError)),
      _onMoveFinished = onMoveFinished {
      _pointerToListener[_handle] = this;
      _navigine_sdk_flutter_CameraCallback_SetPorts(_handle, __lib.createPortWithCallback(_destructor), __lib.createExecutePort());
    }

    @override
    void onMoveFinished(bool completed) =>
      _onMoveFinished(completed);

    final Pointer<Void> _handle;

    final void Function(bool) _onMoveFinished;

    static void _destructor(dynamic data) {
        final int address = data;
        final handle = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(handle);
    }
}

Pointer<Void> navigine_sdk_flutter_CameraCallback_ToFfi(CameraCallback value) =>
  (value as CameraCallbackImpl)._handle;

void navigine_sdk_flutter_CameraCallback_ReleaseFfiHandle(Pointer<Void> handle) =>
{};

// Nullable ${dartClass}

final _navigine_sdk_flutter_CameraCallback_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_CameraCallback_create_handle_nullable'));

final _navigine_sdk_flutter_CameraCallback_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_CameraCallback_release_handle_nullable'));

Pointer<Void> navigine_sdk_flutter_CameraCallback_ToFfiNullable(CameraCallback? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_CameraCallback_ToFfi(value);
    final result = _navigine_sdk_flutter_CameraCallback_CreateHandleNullable(_handle);
    _navigine_sdk_flutter_CameraCallback_ReleaseHandle(_handle);
    return result;
}

void navigine_sdk_flutter_CameraCallback_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_CameraCallback_ReleaseHandleNullable(handle);

// End of CameraCallback "private" section.
