part of 'camera_callback.dart';

// CameraCallback "private" section, not exported.

final _navigine_sdk_flutter_CameraCallback_new = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<NativeFunction<Void Function(Pointer<Void>, Uint8)>>),
    Pointer<Void> Function(Pointer<NativeFunction<Void Function(Pointer<Void>, Uint8)>>)
  >('navigine_sdk_flutter_CameraCallback_new'));

final _navigine_sdk_flutter_CameraCallback_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Int64, Int64),
    void Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_CameraCallback_set_ports'));

void _navigine_sdk_flutter_CameraCallback_onMoveFinished(Pointer<Void> _ptr, int completed) {
    final listener = CameraCallbackImpl._pointerToListener[_ptr];
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onMoveFinished((completed != 0));
    }
    catch (e, stack) {
        exception.nativeAssert('Unhandled exception $e\n$stack');
        rethrow;
    }
}

class CameraCallbackImpl implements CameraCallback
{
    static final _pointerToListener = <Pointer<Void>, CameraCallback>{};

    CameraCallbackImpl({required void Function(bool) onMoveFinished})
        : _ptr = _navigine_sdk_flutter_CameraCallback_new(Pointer.fromFunction<Void Function(Pointer<Void>, Uint8)>(_navigine_sdk_flutter_CameraCallback_onMoveFinished)),
          _onMoveFinished = onMoveFinished {
        _pointerToListener[_ptr] = this;
        _navigine_sdk_flutter_CameraCallback_SetPorts(_ptr, __lib.createPortWithCallback(_destructor), __lib.createExecutePort());
      }

    @override
    void onMoveFinished(bool completed) =>
        _onMoveFinished(completed);

    final void Function(bool) _onMoveFinished;

    final Pointer<Void> _ptr;

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }

    static Pointer<Void> getNativePtr(CameraCallback? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as CameraCallbackImpl)._ptr;
    }

    static CameraCallback fromNativePtr(Pointer<Void> ptr) {
        final listener = _pointerToListener[ptr];
        if (listener == null) {
            throw Exception();
        }
        return listener;
    }

    static CameraCallback? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return CameraCallbackImpl.fromNativePtr(ptr);
    }
}

// End of CameraCallback "private" section.
