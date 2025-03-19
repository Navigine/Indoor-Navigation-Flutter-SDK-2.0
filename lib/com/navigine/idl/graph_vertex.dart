import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';

part 'graph_vertex.impl.dart';
/**
 * @file com/navigine/idl/graph_vertex.dart
 * @brief @copybrief GraphVertex
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_elements
 *
 * @brief Class is used for storing graph vertex.
 *
 */
abstract class GraphVertex implements Finalizable {


    /**
     * @brief graph vertex unique identifier.
     */
    int get id;
    /**
     * @brief graph vertex position in meters @see Point "Point".
     */
    Point get point;
    /**
     * @brief graph vertex name.
     */
    String get name;
    /**
     * @brief graph vertex can be used to communicate with external graphs or not.
     */
    bool get isExternal;
    /**
     * @brief graph vertex used in elevation graph @see ElevationGraph "ElevationGraph" or not.
     */
    bool get isElevation;


}
