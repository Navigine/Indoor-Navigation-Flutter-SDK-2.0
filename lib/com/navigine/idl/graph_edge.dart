import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';
import 'package:navigine_sdk/com/weak_interface_wrapper.dart' as weak_interface_wrapper;

part 'graph_edge.impl.dart';
/// Class is used for storing graph edge.
abstract class GraphEdge implements Finalizable {


    bool isValid();

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
