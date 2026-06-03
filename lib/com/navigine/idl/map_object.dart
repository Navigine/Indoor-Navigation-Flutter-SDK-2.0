import 'dart:ffi';
import 'dart:typed_data';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/map_object_type.dart';

part 'map_object.impl.dart';
/// Base interface for handling objects on the location view.
/// Used to manage objects in [LocationWindow].
/// Can be handled in the `pickMapObjectAt` method [LocationWindow].
/// Referenced from [CircleMapObject], [IconMapObject], [PolylineMapObject], [PolygonMapObject], [DottedPolylineMapObject], [ModelMapObject].
abstract class MapObject implements Finalizable {

    /// Gets the unique identifier of the map object.
    /// Returns The unique identifier of the map object.
    ///
    /// Example:
    /// ```dart
    /// // Get object ID
    /// int objectId = _circleMapObject!.id;
    /// print("Circle object ID: $objectId");
    /// ```
    int getId();

    /// Gets the type of the map object.
    /// Returns The type of the map object [MapObjectType].
    ///
    /// Example:
    /// ```dart
    /// // Get object type
    /// String objectTypeString = _circleMapObject!.type;
    /// print("Circle object type: $objectTypeString");
    /// ```
    MapObjectType getType();

    /// Gets the user-defined data associated with the map object.
    /// Returns The data stored in the map object.
    ///
    /// Example:
    /// ```dart
    /// // Get custom data
    /// Map<String, dynamic> retrievedData = _circleMapObject!.data;
    /// print("Circle custom data: $retrievedData");
    /// ```
    Uint8List getData();

    /// Method is used to specify the visibility of the map object.
    /// [visible] Specifies whether the object is visible (true) or hidden (false). Default: true.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set visibility
    /// bool visibleSuccess = _circleMapObject!.setVisible(true);
    /// print("Set circle visibility to true: $visibleSuccess");
    /// ```
    bool setVisible(bool visible);

    /// Method is used to specify whether the map object can be interacted with.
    /// [interactive] Specifies whether the object can be picked in the `pickMapObjectAt` method (true) or not (false). Default: false.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set interactive mode
    /// bool interactiveSuccess = _circleMapObject!.setInteractive(true);
    /// print("Set circle interactive to true: $interactiveSuccess");
    /// ```
    bool setInteractive(bool interactive);

    /// Method is used to set user-defined data for the map object.
    /// [data] Data to store in the map object.
    ///
    /// Example:
    /// ```dart
    /// // Set custom data
    /// Map<String, dynamic> customData = {"key": "value", "number": 42};
    /// bool dataSuccess = _circleMapObject!.setData(customData);
    /// print("Set circle custom data: $dataSuccess");
    /// ```
    void setData(Uint8List data);

    /// Method is used to set the title of the map object.
    /// [title] The title to display on the location view.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set title
    /// bool titleSuccess = _circleMapObject!.setTitle("Circle Object");
    /// print("Set circle title to 'Circle Object': $titleSuccess");
    /// ```
    bool setTitle(String title);

    /// Method is used to set the opacity of the map object.
    /// [alpha] Opacity multiplier. Values below 0 will be set to 0. Values above 1 will be set to 1. Default: 1.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Set alpha transparency
    /// bool alphaSuccess = _circleMapObject!.setAlpha(0.7);
    /// print("Set circle alpha to 0.7: $alphaSuccess");
    /// ```
    bool setAlpha(double alpha);



}
