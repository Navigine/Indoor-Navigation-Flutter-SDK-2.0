import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/containers__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/graph_edge.dart';
import 'package:navigine_sdk/com/navigine/idl/graph_vertex.dart';
import 'package:navigine_sdk/com/weak_interface_wrapper.dart' as weak_interface_wrapper;

part 'graph.impl.dart';
/// Class is used for storing graph.
/// Referenced from [Sublocation].
abstract class Graph implements Finalizable {


    bool isValid();

    /// List of connected vertexes [GraphVertex]
    ///
    /// Example:
    /// ```dart
    /// // Get graph vertices
    /// List<GraphVertex> vertices = graph.getVertices();
    /// print('Number of graph vertices: ${vertices.length}');
    /// ```
    List<GraphVertex> get vertexes;
    /// List of edges that connected vertexes [GraphEdge]
    ///
    /// Example:
    /// ```dart
    /// // Get graph edges
    /// List<GraphEdge> edges = graph.getEdges();
    /// print('Number of graph edges: ${edges.length}');
    /// ```
    List<GraphEdge> get edges;


}
