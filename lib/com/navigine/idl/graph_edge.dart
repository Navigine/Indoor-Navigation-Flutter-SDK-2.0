import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

part 'graph_edge.impl.dart';
/// Class is used for storing graph edge.
abstract class GraphEdge implements Finalizable {


    /// Edge weight.
    ///
    /// Example:
    /// ```dart
    /// // Get edge weight
    /// double weight = edge.getWeight();
    /// print('Edge weight: $weight');
    /// ```
    double? get weight;
    /// Destination vertex id [GraphVertex]
    ///
    /// Example:
    /// ```dart
    /// // Get destination vertex ID
    /// int dst = edge.getDst();
    /// print('Edge destination ID: $dst');
    /// ```
    int get dst;
    /// Source vertex id [GraphVertex]
    ///
    /// Example:
    /// ```dart
    /// // Get source vertex ID
    /// int src = edge.getSrc();
    /// print('Edge source ID: $src');
    /// ```
    int get src;
    /// Edge weight coefficient.
    ///
    /// Example:
    /// ```dart
    /// // Get edge weight coefficient
    /// int weightCoef = edge.getWeightCoef();
    /// print('Edge weight coefficient: $weightCoef');
    /// ```
    double? get weightCoef;


}
