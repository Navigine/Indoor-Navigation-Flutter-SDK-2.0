import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/graph_edge.dart';
import 'package:navigine_sdk/com/navigine/idl/graph_vertex.dart';

part 'graph.impl.dart';
/// Class is used for storing graph.
/// Referenced from [Sublocation].
abstract class Graph implements Finalizable {


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
