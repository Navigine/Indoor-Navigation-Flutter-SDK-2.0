import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

part 'graph_edge.impl.dart';
/**
 * @file com/navigine/idl/graph_edge.dart
 * @brief @copybrief GraphEdge
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_elements
 *
 * @brief Class is used for storing graph edge.
 *
 */
abstract class GraphEdge implements Finalizable {


    /**
     * @brief Edge weight.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_GraphEdge_getWeight
     *
     */
    double get weight;
    /**
     * @brief Destination vertex id @see GraphVertex "GraphVertex"
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_GraphEdge_getDst
     *
     */
    int get dst;
    /**
     * @brief Source vertex id @see GraphVertex "GraphVertex"
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_GraphEdge_getSrc
     *
     */
    int get src;
    /**
     * @brief Edge weight coefficient.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_manager_example.dart dart_GraphEdge_getWeightCoef
     *
     */
    int get weightCoef;


}
