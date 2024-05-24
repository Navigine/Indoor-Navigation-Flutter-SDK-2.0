import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/error.dart';

abstract class ResourceUploadListener {

    void onUploaded(String fileName);
    void onFailed(Error error);



}

// ResourceUploadListener "private" section, not exported.

final _navigine_sdk_flutter_ResourceUploadListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_ResourceUploadListener_free');

final _navigine_sdk_flutter_ResourceUploadListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer)
  >('navigine_sdk_flutter_ResourceUploadListener_create_proxy'));

final _navigine_sdk_flutter_ResourceUploadListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_ResourceUploadListener_set_ports'));


int _navigine_sdk_flutter_ResourceUploadListener_onUploadedStatic(Pointer<Void> _obj, Pointer<Void> fileName) {
    
    final listener = ResourceUploadListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onUploaded(
          navigine_sdk_flutter_String_FromFfi(fileName),
        );
        
    }
    catch (e, stack)  {
        // todo print stacktrace
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_String_ReleaseFfiHandle(fileName);
    }
    return 0;
}

int _navigine_sdk_flutter_ResourceUploadListener_onFailedStatic(Pointer<Void> _obj, Pointer<Void> error) {
    
    final listener = ResourceUploadListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onFailed(
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


class _ResourceUploadListenerWrapper extends __lib.NativeBase implements Finalizable {
    _ResourceUploadListenerWrapper(Pointer<Void> handle) : super(handle) {
        _finalizer.attach(this, handle);
    }
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_ResourceUploadListener_free.cast());
}

extension ResourceUploadListenerImpl on ResourceUploadListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<ResourceUploadListener>>{};
    static final _listenerToPointer = WeakMap<ResourceUploadListener, _ResourceUploadListenerWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }
}

Pointer<Void> navigine_sdk_flutter_ResourceUploadListener_ToFfi(ResourceUploadListener value) {
    final result = _navigine_sdk_flutter_ResourceUploadListener_CreateProxy(
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_ResourceUploadListener_onUploadedStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_ResourceUploadListener_onFailedStatic, __lib.unknownError),
    );
    ResourceUploadListenerImpl._pointerToListener[result] = WeakReference(value);
    ResourceUploadListenerImpl._listenerToPointer[value] = _ResourceUploadListenerWrapper(result);
    _navigine_sdk_flutter_ResourceUploadListener_SetPorts(result, __lib.createPortWithCallback(ResourceUploadListenerImpl._destructor), __lib.createExecutePort());

    return result;
}

Pointer<Void> navigine_sdk_flutter_ResourceUploadListener_ToFfiNullable(ResourceUploadListener? value) => 
  value != null ? navigine_sdk_flutter_ResourceUploadListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_ResourceUploadListener_ReleaseFfiHandle(Pointer<Void> handle) => 
{};

void navigine_sdk_flutter_ResourceUploadListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
{};

// End of ResourceUploadListener "private" section.
