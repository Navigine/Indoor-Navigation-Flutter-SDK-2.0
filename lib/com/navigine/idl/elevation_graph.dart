import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/containers__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/navigine/idl/graph_edge.dart';
import 'package:navigine_sdk/com/weak_interface_wrapper.dart' as weak_interface_wrapper;

part 'elevation_graph.impl.dart';
/// Class describing a graph that connects the sublocations.
/// Referenced from [Location]
abstract class ElevationGraph implements Finalizable {


    bool isValid();

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
