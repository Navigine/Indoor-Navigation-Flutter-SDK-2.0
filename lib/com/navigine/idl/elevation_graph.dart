import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/graph_edge.dart';

part 'elevation_graph.impl.dart';
/// Class describing a graph that connects the sublocations.
/// Referenced from [Location]
abstract class ElevationGraph implements Finalizable {


    /// List of edges that connect two sublocations [GraphEdge].
    ///
    /// Example:
    /// ```dart
    /// // Get elevation graph edges
    /// List<GraphEdge> edges = elevationGraph.getEdges();
    /// print('Number of elevation graph edges: ${edges.length}');
    /// // Demonstrate each edge
    /// for (int i = 0; i < edges.length; i++) {
    ///  GraphEdge edge = edges[i];
    ///  print('Elevation graph edge ${i + 1}:');
    ///  demonstrateGraphEdgeUsage(edge);
    /// }
    /// ```
    List<GraphEdge> get edges;


}
