import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';
import 'package:navigine_sdk/com/weak_interface_wrapper.dart' as weak_interface_wrapper;

part 'graph_vertex.impl.dart';
/// Class is used for storing graph vertex.
abstract class GraphVertex implements Finalizable {


    bool isValid();

    /// graph vertex unique identifier.
    ///
    /// Example:
    /// ```dart
    /// // Get vertex ID
    /// int vertexId = vertex.getId();
    /// print('Vertex ID: $vertexId');
    /// ```
    int get id;
    /// graph vertex position in meters [Point].
    ///
    /// Example:
    /// ```dart
    /// // Get vertex point
    /// Point? point = vertex.getPoint();
    /// if (point != null) {
    ///  demonstratePointUsage(point);
    /// }
    /// ```
    Point get point;
    /// graph vertex name.
    ///
    /// Example:
    /// ```dart
    /// // Get vertex name
    /// String? name = vertex.getName();
    /// print('Vertex name: $name');
    /// ```
    String get name;
    /// graph vertex can be used to communicate with external graphs or not.
    ///
    /// Example:
    /// ```dart
    /// // Get vertex external flag
    /// bool isExternal = vertex.getIsExternal();
    /// print('Vertex is external: $isExternal');
    /// ```
    bool get isExternal;
    /// graph vertex used in elevation graph [ElevationGraph] or not.
    ///
    /// Example:
    /// ```dart
    /// // Get vertex elevation flag
    /// bool isElevation = vertex.getIsElevation();
    /// print('Vertex is elevation: $isElevation');
    /// ```
    bool get isElevation;


}
