import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/image.dart';
import 'package:navigine_sdk/error.dart';

abstract class ResourceListener {

    void onLoaded(String imageUrl, Image image);

    void onFailed(String imageUrl, Error error);



}

// ResourceListener "private" section, not exported.

final _navigine_sdk_flutter_ResourceListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_ResourceListener_free');

final _navigine_sdk_flutter_ResourceListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer)
  >('navigine_sdk_flutter_ResourceListener_create_proxy'));

final _navigine_sdk_flutter_ResourceListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_ResourceListener_set_ports'));


int _navigine_sdk_flutter_ResourceListener_onLoadedStatic(Pointer<Void> _obj, Pointer<Void> imageUrl, Pointer<Void> image) {
    
    final listener = ResourceListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onLoaded(
          navigine_sdk_flutter_String_FromFfi(imageUrl),
          navigine_sdk_flutter_Image_FromFfi(image),
        );
        
    }
    catch (e, stack)  {
        // todo print stacktrace
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_String_ReleaseFfiHandle(imageUrl);
        navigine_sdk_flutter_Image_ReleaseFfiHandle(image);
    }
    return 0;
}

int _navigine_sdk_flutter_ResourceListener_onFailedStatic(Pointer<Void> _obj, Pointer<Void> imageUrl, Pointer<Void> error) {
    
    final listener = ResourceListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onFailed(
          navigine_sdk_flutter_String_FromFfi(imageUrl),
          navigine_sdk_flutter_Error_FromFfi(error),
        );
        
    }
    catch (e, stack)  {
        // todo print stacktrace
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_String_ReleaseFfiHandle(imageUrl);
        navigine_sdk_flutter_Error_ReleaseFfiHandle(error);
    }
    return 0;
}


class _ResourceListenerWrapper extends __lib.NativeBase implements Finalizable {
    _ResourceListenerWrapper(Pointer<Void> handle) : super(handle) {
        _finalizer.attach(this, handle);
    }
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_ResourceListener_free.cast());
}

extension ResourceListenerImpl on ResourceListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<ResourceListener>>{};
    static final _listenerToPointer = WeakMap<ResourceListener, _ResourceListenerWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }
}

Pointer<Void> navigine_sdk_flutter_ResourceListener_ToFfi(ResourceListener value) {
    final result = _navigine_sdk_flutter_ResourceListener_CreateProxy(
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_ResourceListener_onLoadedStatic, __lib.unknownError),
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_ResourceListener_onFailedStatic, __lib.unknownError),
    );
    ResourceListenerImpl._pointerToListener[result] = WeakReference(value);
    ResourceListenerImpl._listenerToPointer[value] = _ResourceListenerWrapper(result);
    _navigine_sdk_flutter_ResourceListener_SetPorts(result, __lib.createPortWithCallback(ResourceListenerImpl._destructor), __lib.createExecutePort());

    return result;
}

Pointer<Void> navigine_sdk_flutter_ResourceListener_ToFfiNullable(ResourceListener? value) => 
  value != null ? navigine_sdk_flutter_ResourceListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_ResourceListener_ReleaseFfiHandle(Pointer<Void> handle) => 
{};

void navigine_sdk_flutter_ResourceListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
{};

// End of ResourceListener "private" section.
