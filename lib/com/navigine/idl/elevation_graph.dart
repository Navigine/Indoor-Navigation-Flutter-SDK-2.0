import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/graph_edge.dart';

part 'elevation_graph.impl.dart';
/**
 * @file com/navigine/idl/elevation_graph.dart
 * @brief @copybrief ElevationGraph
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_elements
 *
 * @brief Сlass describing a graph that connects the sublocations.
 *
 * Referenced from @see Location "Location"
 */
abstract class ElevationGraph implements Finalizable {


    /**
     * @brief List of edges that connect two sublocations @see GraphEdge "GraphEdge".
     */
    List<GraphEdge> get edges;


}
