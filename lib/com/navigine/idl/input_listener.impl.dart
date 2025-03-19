part of 'input_listener.dart';

// InputListener "private" section, not exported.

final _navigine_sdk_flutter_InputListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_InputListener_free');

final _navigine_sdk_flutter_InputListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_InputListener_create_proxy'));

final _navigine_sdk_flutter_InputListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_InputListener_set_ports'));

int _navigine_sdk_flutter_InputListener_onViewTapStatic(Pointer<Void> _obj, Pointer<Void> screenPoint) {
    
    final listener = InputListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onViewTap(
          navigine_sdk_flutter_math_Point_double_FromFfi(screenPoint),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_math_Point_double_ReleaseFfiHandle(screenPoint);
    }
    return 0;
}

int _navigine_sdk_flutter_InputListener_onViewDoubleTapStatic(Pointer<Void> _obj, Pointer<Void> screenPoint) {
    
    final listener = InputListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onViewDoubleTap(
          navigine_sdk_flutter_math_Point_double_FromFfi(screenPoint),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_math_Point_double_ReleaseFfiHandle(screenPoint);
    }
    return 0;
}

int _navigine_sdk_flutter_InputListener_onViewLongTapStatic(Pointer<Void> _obj, Pointer<Void> screenPoint) {
    
    final listener = InputListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onViewLongTap(
          navigine_sdk_flutter_math_Point_double_FromFfi(screenPoint),
        );
        
    }
    catch (e, stack)  {
        exception.nativeAssert('Unhandled exception $e from native call listener\n$stack');
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_math_Point_double_ReleaseFfiHandle(screenPoint);
    }
    return 0;
}


class _InputListenerWrapper extends __lib.NativeBase implements Finalizable {
    _InputListenerWrapper(Pointer<Void> handle) : super(handle) {
        _finalizer.attach(this, handle);
    }
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_InputListener_free.cast());
}

extension InputListenerImpl on InputListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<InputListener>>{};
    static final _listenerToPointer = WeakMap<InputListener, _InputListenerWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }
}

Pointer<Void> navigine_sdk_flutter_InputListener_ToFfi(InputListener value) {
    final result = _navigine_sdk_flutter_InputListener_CreateProxy(
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_InputListener_onViewTapStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_InputListener_onViewDoubleTapStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_InputListener_onViewLongTapStatic, __lib.unknownError),
    );
    InputListenerImpl._pointerToListener[result] = WeakReference(value);
    InputListenerImpl._listenerToPointer[value] = _InputListenerWrapper(result);
    _navigine_sdk_flutter_InputListener_SetPorts(result, __lib.createPortWithCallback(InputListenerImpl._destructor), __lib.createExecutePort());

    return result;
}

Pointer<Void> navigine_sdk_flutter_InputListener_ToFfiNullable(InputListener? value) => 
  value != null ? navigine_sdk_flutter_InputListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_InputListener_ReleaseFfiHandle(Pointer<Void> handle) => 
{};

void navigine_sdk_flutter_InputListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
{};

// End of InputListener "private" section.
