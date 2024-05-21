import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_token_cache.dart' as __lib;
import 'package:navigine_sdk/com/_type_repository.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/graph_edge.dart';

abstract class ElevationGraph {


    List<GraphEdge> get edges;


}

// ElevationGraph "private" section, not exported.

final _navigine_sdk_flutter_ElevationGraph_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_ElevationGraph_copy_handle'));

final _navigine_sdk_flutter_ElevationGraph_RegisterFinalizer = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Int32, Handle),
    void Function(Pointer<Void>, int, Object)
  >('navigine_sdk_flutter_ElevationGraph_register_finalizer'));

final _navigine_sdk_flutter_ElevationGraph_GetTypeId = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_ElevationGraph_get_type_id'));

final _navigine_sdk_flutter_ElevationGraph_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_ElevationGraph_release_handle'));

final _navigine_sdk_flutter_ElevationGraph_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64, Int32, Int64, Handle, Pointer),
    Pointer<Void> Function(int, int, int, Object, Pointer)
  >('navigine_sdk_flutter_ElevationGraph_create_proxy'));


class ElevationGraph$Impl extends __lib.NativeBase implements ElevationGraph {

    ElevationGraph$Impl(Pointer<Void> handle) : super(handle);


    List<GraphEdge> get edges {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_ElevationGraph_edges_get'));

        final _handle = this.handle;
        final _edgesHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_List_GraphEdge_FromFfi(_edgesHandle);
        }
        finally  {
            navigine_sdk_flutter_List_GraphEdge_ReleaseFfiHandle(_edgesHandle);
        }
    }




}
Pointer<Void> navigine_sdk_flutter_ElevationGraph_ToFfi(ElevationGraph value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_ElevationGraph_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

ElevationGraph navigine_sdk_flutter_ElevationGraph_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final instance = __lib.getCachedInstance(handle);
    if (instance != null && instance is ElevationGraph) return instance;
    final _typeIdHandle = _navigine_sdk_flutter_ElevationGraph_GetTypeId(handle);
    final factoryConstructor = __lib.typeRepository[navigine_sdk_flutter_String_FromFfi(_typeIdHandle)];
    navigine_sdk_flutter_String_ReleaseFfiHandle(_typeIdHandle);
    final _copiedHandle = _navigine_sdk_flutter_ElevationGraph_CopyHandle(handle);
    final result = factoryConstructor != null
      ? factoryConstructor(_copiedHandle)
      : ElevationGraph$Impl(_copiedHandle);
    __lib.cacheInstance(_copiedHandle, result);
    _navigine_sdk_flutter_ElevationGraph_RegisterFinalizer(_copiedHandle, __lib.LibraryContext.isolateId, result);
    return result;
}

Pointer<Void> navigine_sdk_flutter_ElevationGraph_ToFfiNullable(ElevationGraph? value) => 
  value != null ? navigine_sdk_flutter_ElevationGraph_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_ElevationGraph_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_ElevationGraph_ReleaseHandle(handle);

void navigine_sdk_flutter_ElevationGraph_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_ElevationGraph_ReleaseHandle(handle);

ElevationGraph? navigine_sdk_flutter_ElevationGraph_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_ElevationGraph_FromFfi(handle) : null;

// End of ElevationGraph "private" section.

final _navigine_sdk_flutter_List_GraphEdge_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_GraphEdge_create_handle'));

final _navigine_sdk_flutter_List_GraphEdge_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_GraphEdge_release_handle'));

final _navigine_sdk_flutter_List_GraphEdge_Insert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_GraphEdge_insert'));

final _navigine_sdk_flutter_List_GraphEdge_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_GraphEdge_iterator'));

final _navigine_sdk_flutter_List_GraphEdge_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_GraphEdge_iterator_release_handle'));

final _navigine_sdk_flutter_List_GraphEdge_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_GraphEdge_iterator_is_valid'));

final _navigine_sdk_flutter_List_GraphEdge_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_GraphEdge_iterator_increment'));

final _navigine_sdk_flutter_List_GraphEdge_IteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_GraphEdge_iterator_get'));

Pointer<Void> navigine_sdk_flutter_List_GraphEdge_ToFfi(List<GraphEdge> value)  {
    final _result = _navigine_sdk_flutter_List_GraphEdge_CreateHandle();
    for (final element in value)  {
        final _elementHandle = navigine_sdk_flutter_GraphEdge_ToFfi(element);
        _navigine_sdk_flutter_List_GraphEdge_Insert(_result, _elementHandle);
        navigine_sdk_flutter_GraphEdge_ReleaseFfiHandle(_elementHandle);
    }
    return _result;
}

List<GraphEdge> navigine_sdk_flutter_List_GraphEdge_FromFfi(Pointer<Void> handle)  {
    final result = List<GraphEdge>.empty(growable: true);
    final _iteratorHandle = _navigine_sdk_flutter_List_GraphEdge_Iterator(handle);
    while (_navigine_sdk_flutter_List_GraphEdge_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _elementHandle = _navigine_sdk_flutter_List_GraphEdge_IteratorGet(_iteratorHandle);
        try  {
            result.add(navigine_sdk_flutter_GraphEdge_FromFfi(_elementHandle));
        }
        finally  {
            navigine_sdk_flutter_GraphEdge_ReleaseFfiHandle(_elementHandle);
        }
        _navigine_sdk_flutter_List_GraphEdge_IteratorIncrement(_iteratorHandle);
    }
    return result;
}

void navigine_sdk_flutter_List_GraphEdge_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_List_GraphEdge_ReleaseHandle(handle);

final _navigine_sdk_flutter_List_GraphEdge_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_GraphEdge_create_handle_nullable'));

final _navigine_sdk_flutter_List_GraphEdge_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_GraphEdge_release_handle_nullable'));

final _navigine_sdk_flutter_List_GraphEdge_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_GraphEdge_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_List_GraphEdge_ToFfiNullable(List<GraphEdge>? value)  {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_List_GraphEdge_ToFfi(value);
    final result = _navigine_sdk_flutter_List_GraphEdge_CreateHandleNullable(_handle);
    navigine_sdk_flutter_List_GraphEdge_ReleaseFfiHandle(_handle);
    return result;
}

List<GraphEdge>? navigine_sdk_flutter_List_GraphEdge_FromFfiNullable(Pointer<Void> handle)  {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_List_GraphEdge_GetValueNullable(handle);
    final result = navigine_sdk_flutter_List_GraphEdge_FromFfi(_handle);
    navigine_sdk_flutter_List_GraphEdge_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_List_GraphEdge_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_GraphEdge_ReleaseHandleNullable(handle);