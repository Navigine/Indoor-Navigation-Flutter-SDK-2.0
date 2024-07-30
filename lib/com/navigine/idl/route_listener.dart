import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/route_path.dart';

/**
 * Class is used to handle events coming from RouteManager (@see RouteManager).
 * Methods invoked in UI
 */
abstract class RouteListener {

    /**
     *
     * @method onPathsUpdated - called when new route has been calculated
     * @parameter paths - calculated list of paths to added targets (@see RoutePath).
     *
     */
    void onPathsUpdated(List<RoutePath> paths);



}

// RouteListener "private" section, not exported.

final _navigine_sdk_flutter_RouteListener_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_RouteListener_free');

final _navigine_sdk_flutter_RouteListener_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer),
    Pointer<Void> Function(Pointer)
  >('navigine_sdk_flutter_RouteListener_create_proxy'));

final _navigine_sdk_flutter_RouteListener_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_RouteListener_set_ports'));


int _navigine_sdk_flutter_RouteListener_onPathsUpdatedStatic(Pointer<Void> _obj, Pointer<Void> paths) {
    
    final listener = RouteListenerImpl._pointerToListener[_obj]?.target;
    if (listener == null) {
        throw Exception();
    }
    try  {
        listener.onPathsUpdated(
          navigine_sdk_flutter_List_RoutePath_FromFfi(paths),
        );
        
    }
    catch (e, stack)  {
        // todo print stacktrace
        rethrow;
    }
    finally  {
        navigine_sdk_flutter_List_RoutePath_ReleaseFfiHandle(paths);
    }
    return 0;
}


class _RouteListenerWrapper extends __lib.NativeBase implements Finalizable {
    _RouteListenerWrapper(Pointer<Void> handle) : super(handle) {
        _finalizer.attach(this, handle);
    }
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_RouteListener_free.cast());
}

extension RouteListenerImpl on RouteListener  {
    static final _pointerToListener = <Pointer<Void>, WeakReference<RouteListener>>{};
    static final _listenerToPointer = WeakMap<RouteListener, _RouteListenerWrapper?>();

    static void _destructor(dynamic data) {
        final int address = data;
        final ptr = Pointer<Void>.fromAddress(address);
        _pointerToListener.remove(ptr);
    }
}

Pointer<Void> navigine_sdk_flutter_RouteListener_ToFfi(RouteListener value) {
    final result = _navigine_sdk_flutter_RouteListener_CreateProxy(
      Pointer.fromFunction<Uint8 Function(Pointer<Void>, Pointer<Void>)>(_navigine_sdk_flutter_RouteListener_onPathsUpdatedStatic, __lib.unknownError),
    );
    RouteListenerImpl._pointerToListener[result] = WeakReference(value);
    RouteListenerImpl._listenerToPointer[value] = _RouteListenerWrapper(result);
    _navigine_sdk_flutter_RouteListener_SetPorts(result, __lib.createPortWithCallback(RouteListenerImpl._destructor), __lib.createExecutePort());

    return result;
}

Pointer<Void> navigine_sdk_flutter_RouteListener_ToFfiNullable(RouteListener? value) => 
  value != null ? navigine_sdk_flutter_RouteListener_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_RouteListener_ReleaseFfiHandle(Pointer<Void> handle) => 
{};

void navigine_sdk_flutter_RouteListener_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
{};

// End of RouteListener "private" section.

final _navigine_sdk_flutter_List_RoutePath_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_RoutePath_create_handle'));

final _navigine_sdk_flutter_List_RoutePath_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_release_handle'));

final _navigine_sdk_flutter_List_RoutePath_Insert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_insert'));

final _navigine_sdk_flutter_List_RoutePath_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_iterator'));

final _navigine_sdk_flutter_List_RoutePath_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_iterator_release_handle'));

final _navigine_sdk_flutter_List_RoutePath_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_iterator_is_valid'));

final _navigine_sdk_flutter_List_RoutePath_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_iterator_increment'));

final _navigine_sdk_flutter_List_RoutePath_IteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_iterator_get'));

Pointer<Void> navigine_sdk_flutter_List_RoutePath_ToFfi(List<RoutePath> value)  {
    final _result = _navigine_sdk_flutter_List_RoutePath_CreateHandle();
    for (final element in value)  {
        final _elementHandle = navigine_sdk_flutter_RoutePath_ToFfi(element);
        _navigine_sdk_flutter_List_RoutePath_Insert(_result, _elementHandle);
        navigine_sdk_flutter_RoutePath_ReleaseFfiHandle(_elementHandle);
    }
    return _result;
}

List<RoutePath> navigine_sdk_flutter_List_RoutePath_FromFfi(Pointer<Void> handle)  {
    final result = List<RoutePath>.empty(growable: true);
    final _iteratorHandle = _navigine_sdk_flutter_List_RoutePath_Iterator(handle);
    while (_navigine_sdk_flutter_List_RoutePath_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _elementHandle = _navigine_sdk_flutter_List_RoutePath_IteratorGet(_iteratorHandle);
        try  {
            result.add(navigine_sdk_flutter_RoutePath_FromFfi(_elementHandle));
        }
        finally  {
            navigine_sdk_flutter_RoutePath_ReleaseFfiHandle(_elementHandle);
        }
        _navigine_sdk_flutter_List_RoutePath_IteratorIncrement(_iteratorHandle);
    }
    return result;
}

void navigine_sdk_flutter_List_RoutePath_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_List_RoutePath_ReleaseHandle(handle);

final _navigine_sdk_flutter_List_RoutePath_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_create_handle_nullable'));

final _navigine_sdk_flutter_List_RoutePath_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_release_handle_nullable'));

final _navigine_sdk_flutter_List_RoutePath_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_RoutePath_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_List_RoutePath_ToFfiNullable(List<RoutePath>? value)  {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_List_RoutePath_ToFfi(value);
    final result = _navigine_sdk_flutter_List_RoutePath_CreateHandleNullable(_handle);
    navigine_sdk_flutter_List_RoutePath_ReleaseFfiHandle(_handle);
    return result;
}

List<RoutePath>? navigine_sdk_flutter_List_RoutePath_FromFfiNullable(Pointer<Void> handle)  {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_List_RoutePath_GetValueNullable(handle);
    final result = navigine_sdk_flutter_List_RoutePath_FromFfi(_handle);
    navigine_sdk_flutter_List_RoutePath_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_List_RoutePath_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_RoutePath_ReleaseHandleNullable(handle);
