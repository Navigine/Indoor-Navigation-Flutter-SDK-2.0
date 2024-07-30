import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/graph_edge.dart';
import 'package:navigine_sdk/com/navigine/idl/graph_vertex.dart';

/**
 *
 * Object describing graph in CMS.
 *
 */
abstract class Graph implements Finalizable {


    /** List of connected vertexes (@see GraphVertex) */
    List<GraphVertex> get vertexes;
    /** List of edges that connected vertexes (@see GraphEdge) */
    List<GraphEdge> get edges;


}

// Graph "private" section, not exported.

final _navigine_sdk_flutter_Graph_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Graph_copy_handle'));

final _navigine_sdk_flutter_Graph_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Graph_release_handle'));

final _navigine_sdk_flutter_Graph_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_Graph_free');

final _navigine_sdk_flutter_Graph_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer, Pointer),
    Pointer<Void> Function(Pointer, Pointer)
  >('navigine_sdk_flutter_Graph_create_proxy'));

final _navigine_sdk_flutter_Graph_SetPorts = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>, Int64, Int64),
    Pointer<Void> Function(Pointer<Void>, int, int)
  >('navigine_sdk_flutter_Graph_set_ports'));


class Graph$Impl extends __lib.NativeBase implements Graph, Finalizable {
    Graph$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_Graph_free.cast());


    List<GraphVertex> get vertexes {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Graph_vertexes_get'));

        final _handle = this.handle;
        final _vertexesHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_List_GraphVertex_FromFfi(_vertexesHandle);
        }
        finally  {
            navigine_sdk_flutter_List_GraphVertex_ReleaseFfiHandle(_vertexesHandle);
        }
    }


    List<GraphEdge> get edges {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_Graph_edges_get'));

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

Pointer<Void> navigine_sdk_flutter_Graph_ToFfi(Graph value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_Graph_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

Graph navigine_sdk_flutter_Graph_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final _copiedHandle = _navigine_sdk_flutter_Graph_CopyHandle(handle);
    final result = Graph$Impl(_copiedHandle);
    Graph$Impl._finalizer.attach(result, _copiedHandle);
    return result;
}

Pointer<Void> navigine_sdk_flutter_Graph_ToFfiNullable(Graph? value) => 
  value != null ? navigine_sdk_flutter_Graph_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_Graph_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_Graph_ReleaseHandle(handle);

void navigine_sdk_flutter_Graph_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_Graph_ReleaseHandle(handle);

Graph? navigine_sdk_flutter_Graph_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_Graph_FromFfi(handle) : null;

// End of Graph "private" section.

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

final _navigine_sdk_flutter_List_GraphVertex_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_GraphVertex_create_handle'));

final _navigine_sdk_flutter_List_GraphVertex_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_GraphVertex_release_handle'));

final _navigine_sdk_flutter_List_GraphVertex_Insert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_GraphVertex_insert'));

final _navigine_sdk_flutter_List_GraphVertex_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_GraphVertex_iterator'));

final _navigine_sdk_flutter_List_GraphVertex_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_GraphVertex_iterator_release_handle'));

final _navigine_sdk_flutter_List_GraphVertex_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_GraphVertex_iterator_is_valid'));

final _navigine_sdk_flutter_List_GraphVertex_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_GraphVertex_iterator_increment'));

final _navigine_sdk_flutter_List_GraphVertex_IteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_GraphVertex_iterator_get'));

Pointer<Void> navigine_sdk_flutter_List_GraphVertex_ToFfi(List<GraphVertex> value)  {
    final _result = _navigine_sdk_flutter_List_GraphVertex_CreateHandle();
    for (final element in value)  {
        final _elementHandle = navigine_sdk_flutter_GraphVertex_ToFfi(element);
        _navigine_sdk_flutter_List_GraphVertex_Insert(_result, _elementHandle);
        navigine_sdk_flutter_GraphVertex_ReleaseFfiHandle(_elementHandle);
    }
    return _result;
}

List<GraphVertex> navigine_sdk_flutter_List_GraphVertex_FromFfi(Pointer<Void> handle)  {
    final result = List<GraphVertex>.empty(growable: true);
    final _iteratorHandle = _navigine_sdk_flutter_List_GraphVertex_Iterator(handle);
    while (_navigine_sdk_flutter_List_GraphVertex_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _elementHandle = _navigine_sdk_flutter_List_GraphVertex_IteratorGet(_iteratorHandle);
        try  {
            result.add(navigine_sdk_flutter_GraphVertex_FromFfi(_elementHandle));
        }
        finally  {
            navigine_sdk_flutter_GraphVertex_ReleaseFfiHandle(_elementHandle);
        }
        _navigine_sdk_flutter_List_GraphVertex_IteratorIncrement(_iteratorHandle);
    }
    return result;
}

void navigine_sdk_flutter_List_GraphVertex_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_List_GraphVertex_ReleaseHandle(handle);

final _navigine_sdk_flutter_List_GraphVertex_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_GraphVertex_create_handle_nullable'));

final _navigine_sdk_flutter_List_GraphVertex_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_GraphVertex_release_handle_nullable'));

final _navigine_sdk_flutter_List_GraphVertex_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_GraphVertex_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_List_GraphVertex_ToFfiNullable(List<GraphVertex>? value)  {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_List_GraphVertex_ToFfi(value);
    final result = _navigine_sdk_flutter_List_GraphVertex_CreateHandleNullable(_handle);
    navigine_sdk_flutter_List_GraphVertex_ReleaseFfiHandle(_handle);
    return result;
}

List<GraphVertex>? navigine_sdk_flutter_List_GraphVertex_FromFfiNullable(Pointer<Void> handle)  {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_List_GraphVertex_GetValueNullable(handle);
    final result = navigine_sdk_flutter_List_GraphVertex_FromFfi(_handle);
    navigine_sdk_flutter_List_GraphVertex_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_List_GraphVertex_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_GraphVertex_ReleaseHandleNullable(handle);
