import 'dart:ffi';
import 'dart:typed_data';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/navigine/idl/animation_type.dart';
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object_type.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';
import 'package:navigine_sdk/com/weak_interface_wrapper.dart' as weak_interface_wrapper;
import 'package:navigine_sdk/model_provider.dart';

part 'model_map_object.impl.dart';
/// A 3D model map object (Wavefront OBJ) placed on the location view.
/// Geometry and texture come from [ModelProvider]. The mesh is loaded asynchronously in the render pipeline; blocking calls occur only inside provider callbacks.
/// Referenced from [LocationWindow] (addModelMapObject).
abstract class ModelMapObject implements MapObject, Finalizable {

    /// Sets the anchor position of the model in metric coordinates.
    /// [point] Center / placement point [LocationPoint].
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// bool posOk = m.setPosition(LocationPoint(12.0, 34.0));
    /// print("Model setPosition: $posOk");
    /// ```
    bool setPosition(LocationPoint point);

    /// Animates the model anchor to a new position.
    /// [point] Target metrics coordinates [LocationPoint].
    /// [duration] Animation duration in seconds.
    /// [type] Animation easing [AnimationType].
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// bool posAnimOk = m.setPositionAnimated(
    ///  LocationPoint(15.0, 40.0),
    ///  0.5,
    ///  AnimationType.SINE,
    /// );
    /// print("Model setPositionAnimated: $posAnimOk");
    /// ```
    bool setPositionAnimated(LocationPoint point, double duration, AnimationType type);

    /// Sets the 3D asset (OBJ source + texture ImageProvider).
    /// [model] Model provider [ModelProvider].
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// ImageProvider texture = ImageProvider.fromImageProvider(
    ///  const AssetImage('assets/model_texture.png'),
    ///  cacheable: true,
    /// );
    /// ModelProvider modelProvider = ModelProvider(
    ///  texture,
    ///  onModelRequest: () async {
    ///    final bytes = await File('/path/to/model.obj').readAsBytes();
    ///    return ByteData.sublistView(bytes);
    ///  },
    /// );
    /// bool modelOk = m.setModel(modelProvider);
    /// print("Model setModel: $modelOk");
    /// ```
    bool setModel(ModelProvider model);

    /// Sets the on-screen size of the model in pixels (width and height).
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// bool sizeOk = m.setSize(64.0, 64.0);
    /// print("Model setSize: $sizeOk");
    /// ```
    bool setSize(double width, double height);

    /// Enables or disables collision tests for this object.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// bool collOk = m.setCollisionEnabled(true);
    /// print("Model setCollisionEnabled: $collOk");
    /// ```
    bool setCollisionEnabled(bool enabled);

    /// Sets rotation angle in degrees (around the placement axis used by the engine).
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// bool angleOk = m.setAngle(45.0);
    /// print("Model setAngle: $angleOk");
    /// ```
    bool setAngle(double angle);

    /// Animates rotation to the given angle.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// bool angleAnimOk = m.setAngleAnimated(90.0, 0.5, AnimationType.QUINT);
    /// print("Model setAngleAnimated: $angleAnimOk");
    /// ```
    bool setAngleAnimated(double angle, double duration, AnimationType type);

    /// Extra hit-test padding around the model in pixels.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// bool bufOk = m.setBuffer(4.0, 4.0);
    /// print("Model setBuffer: $bufOk");
    /// ```
    bool setBuffer(double width, double height);

    /// Render order priority (higher draws above).
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// bool priOk = m.setPriority(10.0);
    /// print("Model setPriority: $priOk");
    /// ```
    bool setPriority(double priority);

    bool isValid();



}
