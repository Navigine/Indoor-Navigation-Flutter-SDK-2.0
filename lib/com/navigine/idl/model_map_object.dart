import 'dart:ffi';
import 'dart:typed_data';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/animation_type.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object_type.dart';
import 'package:navigine_sdk/model_provider.dart';

part 'model_map_object.impl.dart';
/**
 * @file com/navigine/idl/model_map_object.dart
 * @brief @copybrief ModelMapObject
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 *
 * @brief A 3D model map object (Wavefront OBJ) placed on the location view.
 *
 * Geometry and texture come from @see ModelProvider "ModelProvider". The mesh is loaded asynchronously in the render pipeline; blocking calls occur only inside provider callbacks.
 *
 * Referenced from @see LocationWindow "LocationWindow" (addModelMapObject).
 *
 */
abstract class ModelMapObject implements MapObject, Finalizable {

    /**
     * @brief Sets the anchor position of the model in metric coordinates.
     * @param point Center / placement point @see LocationPoint "LocationPoint".
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet location_window_map_objects_example.dart dart_ModelMapObject_setPosition
     *
     */
    bool setPosition(LocationPoint point);

    /**
     * @brief Animates the model anchor to a new position.
     * @param point Target metrics coordinates @see LocationPoint "LocationPoint".
     * @param duration Animation duration in seconds.
     * @param type Animation easing @see AnimationType "AnimationType".
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet location_window_map_objects_example.dart dart_ModelMapObject_setPositionAnimated
     *
     */
    bool setPositionAnimated(LocationPoint point, double duration, AnimationType type);

    /**
     * @brief Sets the 3D asset (OBJ source + texture ImageProvider).
     * @param model Model provider @see ModelProvider "ModelProvider".
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet location_window_map_objects_example.dart dart_ModelMapObject_setModel
     *
     */
    bool setModel(ModelProvider model);

    /**
     * @brief Sets the on-screen size of the model in pixels (width and height).
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet location_window_map_objects_example.dart dart_ModelMapObject_setSize
     *
     */
    bool setSize(double width, double height);

    /**
     * @brief Enables or disables collision tests for this object.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet location_window_map_objects_example.dart dart_ModelMapObject_setCollisionEnabled
     *
     */
    bool setCollisionEnabled(bool enabled);

    /**
     * @brief Sets rotation angle in degrees (around the placement axis used by the engine).
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet location_window_map_objects_example.dart dart_ModelMapObject_setAngle
     *
     */
    bool setAngle(double angle);

    /**
     * @brief Animates rotation to the given angle.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet location_window_map_objects_example.dart dart_ModelMapObject_setAngleAnimated
     *
     */
    bool setAngleAnimated(double angle, double duration, AnimationType type);

    /**
     * @brief Extra hit-test padding around the model in pixels.
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet location_window_map_objects_example.dart dart_ModelMapObject_setBuffer
     *
     */
    bool setBuffer(double width, double height);

    /**
     * @brief Render order priority (higher draws above).
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     *
     *Dart code snippet:
     *@snippet location_window_map_objects_example.dart dart_ModelMapObject_setPriority
     *
     */
    bool setPriority(double priority);



}
