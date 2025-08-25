import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/graph_edge.dart';
import 'package:navigine_sdk/com/navigine/idl/graph_vertex.dart';

part 'graph.impl.dart';
/**
 * @file com/navigine/idl/graph.dart
 * @brief @copybrief Graph
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_elements
 *
 * @brief Class is used for storing graph.
 *
 * Referenced from @see Sublocation "Sublocation".
 *
 */
abstract class Graph implements Finalizable {


    /**
     * @brief List of connected vertexes @see GraphVertex "GraphVertex"
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Graph_getVertices
     *
     */
    List<GraphVertex> get vertexes;
    /**
     * @brief List of edges that connected vertexes @see GraphEdge "GraphEdge"
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_Graph_getEdges
     *
     */
    List<GraphEdge> get edges;


}
