import 'dart:ffi';
import 'dart:math' as math;
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/containers__conversion.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/navigine/idl/animation_type.dart';
import 'package:navigine_sdk/com/navigine/idl/bounding_box.dart';
import 'package:navigine_sdk/com/navigine/idl/building_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/camera.dart';
import 'package:navigine_sdk/com/navigine/idl/camera_callback.dart';
import 'package:navigine_sdk/com/navigine/idl/camera_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/circle_map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/cluster_map_object_controller.dart';
import 'package:navigine_sdk/com/navigine/idl/debug_flag.dart';
import 'package:navigine_sdk/com/navigine/idl/dotted_polyline_map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/icon_map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/input_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/map_filter_condition.dart';
import 'package:navigine_sdk/com/navigine/idl/model_map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/pick_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';
import 'package:navigine_sdk/com/navigine/idl/polygon_map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/polyline_map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/sublocation_change_listener.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';
import 'package:navigine_sdk/com/weak_interface_wrapper.dart' as weak_interface_wrapper;
import 'package:navigine_sdk/screen_point.dart';

part 'location_window.impl.dart';
/// Interface for interacting with the location view.
/// Referenced from [LocationView].
abstract class LocationWindow implements Finalizable {

    /// Method is used to switch the location view between sublocations (e.g., floors).
    /// [id] Sublocation unique identifier [Sublocation].
    ///
    /// Example:
    /// ```dart
    /// // Set sublocation ID to switch between floors
    /// _locationWindow!.setSublocationId(1);
    /// print("Set sublocation ID to 1 (first floor)");
    /// ```
    void setSublocationId(int id);

    /// Returns current sublocation ID if set, otherwise null.
    ///
    /// Example:
    /// ```dart
    /// int? currentId = _locationWindow!.getSublocationId();
    /// if (currentId != null) {
    ///  print("Current sublocation id: $currentId");
    /// } else {
    ///  print("Current sublocation id is not set");
    /// }
    /// ```
    int? getSublocationId();

    /// Calculates camera that fits provided bounding box.
    /// [boundingBox] Metrics bounding box to enclose.
    ///
    /// Example:
    /// ```dart
    /// BoundingBox boundingBox = BoundingBox(Point(0.0, 0.0), Point(20.0, 30.0));
    /// Camera camera = _locationWindow!.getEnclosingCamera(boundingBox);
    /// print("Camera that fits bounding box: $camera");
    /// ```
    Camera getEnclosingCamera(BoundingBox boundingBox);

    /// Converts screen coordinates (pixels) to metrics coordinates (meters).
    /// [point] (x,y) coordinates in screen pixels.
    /// Returns (x,y) coordinates in meters [Point].
    ///
    /// Example:
    /// ```dart
    /// // Convert screen position to meters
    /// Point screenPoint = Point(100.0, 200.0);
    /// Point metersPoint = _locationWindow!.screenPositionToMeters(screenPoint);
    /// print("Screen position (${screenPoint.x}, ${screenPoint.y}) converted to meters: (${metersPoint.x}, ${metersPoint.y})");
    /// ```
    Point screenPositionToMeters(math.Point<double> point);

    /// Converts metrics coordinates (meters) to screen coordinates (pixels).
    /// [point] (x,y) coordinates in meters [Point].
    /// [clipToViewport] If true, coordinates outside the viewport are clipped to the viewport edge.
    /// Returns (x,y) coordinates in screen pixels.
    ///
    /// Example:
    /// ```dart
    /// // Convert meters to screen position with clipping
    /// Point metersPoint3 = Point(50.0, 75.0);
    /// Point screenPoint3 = _locationWindow!.metersToScreenPosition(metersPoint3, true);
    /// print("Meters position (${metersPoint3.x}, ${metersPoint3.y}) converted to screen with clipping: (${screenPoint3.x}, ${screenPoint3.y})");
    /// ```
    math.Point<double> metersToScreenPosition(Point point, bool clipToViewport);

    /// Creates and adds a circle map object to the location view.
    /// Returns A CircleMapObject instance [CircleMapObject] if successful, null otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Add circle map object
    /// _circleMapObject = _locationWindow!.addCircleMapObject();
    /// print("Added circle map object");
    /// ```
    CircleMapObject addCircleMapObject();

    /// Removes a circle map object from the location view.
    /// [circleMapObject] The circle map object instance [CircleMapObject].
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Remove circle map object
    /// if (_circleMapObject != null) {
    ///  bool removed = _locationWindow!.removeCircleMapObject(_circleMapObject!);
    ///  print("Removed circle map object: $removed");
    ///  _circleMapObject = null;
    /// }
    /// ```
    bool removeCircleMapObject(CircleMapObject circleMapObject);

    /// Creates and adds an icon map object to the location view.
    /// Returns An IconMapObject instance [IconMapObject] if successful, null otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Add icon map object
    /// _iconMapObject = _locationWindow!.addIconMapObject();
    /// print("Added icon map object");
    /// ```
    IconMapObject addIconMapObject();

    /// Removes an icon map object from the location view.
    /// [iconMapObject] The icon map object instance [IconMapObject].
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Remove icon map object
    /// if (_iconMapObject != null) {
    ///  bool removed = _locationWindow!.removeIconMapObject(_iconMapObject!);
    ///  print("Removed icon map object: $removed");
    ///  _iconMapObject = null;
    /// }
    /// ```
    bool removeIconMapObject(IconMapObject iconMapObject);

    /// Creates an icon map object controller for the location view.
    /// Returns Cluster controller instance [ClusterMapObjectController].
    ///
    /// Example:
    /// ```dart
    /// _clusterMapObjectController = _locationWindow!.addClusterMapObjectController();
    /// print("Added cluster map object controller");
    /// ```
    ClusterMapObjectController addClusterMapObjectController();

    /// Removes an icon map object controller from the location view.
    /// [controller] The controller instance to remove.
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// final controllerRemoved =
    ///    _locationWindow!.removeClusterMapObjectController(controller);
    /// print("Removed cluster map object controller: $controllerRemoved");
    /// ```
    bool removeClusterMapObjectController(ClusterMapObjectController controller);

    /// Creates and adds a polygon map object to the location view.
    /// Returns A PolygonMapObject instance [PolygonMapObject] if successful, null otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Add polygon map object
    /// _polygonMapObject = _locationWindow!.addPolygonMapObject();
    /// print("Added polygon map object");
    /// ```
    PolygonMapObject addPolygonMapObject();

    /// Removes a polygon map object from the location view.
    /// [polygonMapObject] The polygon map object instance [PolygonMapObject].
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Remove polygon map object
    /// if (_polygonMapObject != null) {
    ///  bool removed = _locationWindow!.removePolygonMapObject(
    ///    _polygonMapObject!,
    ///  );
    ///  print("Removed polygon map object: $removed");
    ///  _polygonMapObject = null;
    /// }
    /// ```
    bool removePolygonMapObject(PolygonMapObject polygonMapObject);

    /// Creates and adds a polyline map object to the location view.
    /// Returns A PolylineMapObject instance [PolylineMapObject] if successful, null otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Add polyline map object
    /// _polylineMapObject = _locationWindow!.addPolylineMapObject();
    /// print("Added polyline map object");
    /// ```
    PolylineMapObject addPolylineMapObject();

    /// Removes a polyline map object from the location view.
    /// [polylineMapObject] The polyline map object instance [PolylineMapObject].
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Remove polyline map object
    /// if (_polylineMapObject != null) {
    ///  bool removed = _locationWindow!.removePolylineMapObject(
    ///    _polylineMapObject!,
    ///  );
    ///  print("Removed polyline map object: $removed");
    ///  _polylineMapObject = null;
    /// }
    /// ```
    bool removePolylineMapObject(PolylineMapObject polylineMapObject);

    /// Creates and adds a polyline points map object to the location view.
    /// Returns A DottedPolylineMapObject instance [DottedPolylineMapObject] if successful, null otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Add dotted polyline map object
    /// _dottedPolylineMapObject = _locationWindow!.addDottedPolylineMapObject();
    /// print("Added dotted polyline map object");
    /// ```
    DottedPolylineMapObject addDottedPolylineMapObject();

    /// Removes a polyline points map object from the location view.
    /// [dottedPolylineMapObject] The polyline points map object instance [DottedPolylineMapObject].
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Remove dotted polyline map object
    /// if (_dottedPolylineMapObject != null) {
    ///  bool removed = _locationWindow!.removeDottedPolylineMapObject(
    ///    _dottedPolylineMapObject!,
    ///  );
    ///  print("Removed dotted polyline map object: $removed");
    ///  _dottedPolylineMapObject = null;
    /// }
    /// ```
    bool removeDottedPolylineMapObject(DottedPolylineMapObject dottedPolylineMapObject);

    /// Creates and adds a 3D model map object (Wavefront OBJ + texture via ModelProvider).
    /// Returns A ModelMapObject instance [ModelMapObject] if successful, null otherwise.
    ///
    /// Example:
    /// ```dart
    /// _modelMapObject = _locationWindow!.addModelMapObject();
    /// print("Added model map object: ${_modelMapObject != null}");
    /// ```
    ModelMapObject addModelMapObject();

    /// Removes a model map object from the location view.
    /// [modelMapObject] The model instance to remove [ModelMapObject].
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// bool removed = _locationWindow!.removeModelMapObject(m);
    /// print("Removed model map object: $removed");
    /// _modelMapObject = null;
    /// ```
    bool removeModelMapObject(ModelMapObject modelMapObject);

    /// Removes all map objects from the location view.
    ///
    /// Example:
    /// ```dart
    /// // Remove all map objects
    /// _locationWindow!.removeAllMapObjects();
    /// print("Removed all map objects");
    /// ```
    void removeAllMapObjects();

    /// Selects a visible, interactive map object at the specified screen position.
    /// Results are delivered to the PickListener via onMapObjectPickComplete [PickListener].
    /// [point] Position in screen pixels to pick from.
    ///
    /// Example:
    /// ```dart
    /// // Pick map object at screen position
    /// math.Point<double> screenPoint = math.Point<double>(100.0, 200.0);
    /// _locationWindow!.pickMapObjectAt(screenPoint);
    /// print("Picked map object at screen position (${screenPoint.x}, ${screenPoint.y})");
    /// ```
    void pickMapObjectAt(math.Point<double> point);

    /// Selects visible map features (e.g., venues) at the specified screen position.
    /// Results are delivered to the PickListener via onMapFeaturePickComplete [PickListener].
    /// [point] Position in screen pixels to pick from.
    ///
    /// Example:
    /// ```dart
    /// // Pick map feature at screen position
    /// math.Point<double> featurePoint = math.Point<double>(150.0, 250.0);
    /// _locationWindow!.pickMapFeatureAt(featurePoint);
    /// print("Picked map feature at screen position (${featurePoint.x}, ${featurePoint.y})");
    /// ```
    void pickMapFeatureAt(math.Point<double> point);

    /// Adds a PickListener to receive picking result events.
    /// **Note:** Remove the listener when no longer needed.
    /// [listener] The PickListener instance [PickListener].
    ///
    /// Example:
    /// ```dart
    /// // Add pick listener
    /// _pickListener = PickListenerImpl();
    /// _locationWindow!.addPickListener(_pickListener!);
    /// print("Added pick listener");
    /// ```
    void addPickListener(PickListener listener);

    /// Removes a previously added PickListener.
    /// [listener] The PickListener instance to remove [PickListener].
    ///
    /// Example:
    /// ```dart
    /// _locationWindow!.removePickListener(listeners[i]);
    /// print("Removed pick listener $i");
    /// ```
    void removePickListener(PickListener listener);

    /// Adds an InputListener to receive input events.
    /// **Note:** Remove the listener when no longer needed.
    /// [listener] The InputListener instance [InputListener].
    ///
    /// Example:
    /// ```dart
    /// // Add input listener
    /// _inputListener = InputListenerImpl();
    /// _locationWindow!.addInputListener(_inputListener!);
    /// print("Added input listener");
    /// ```
    void addInputListener(InputListener listener);

    /// Removes a previously added InputListener.
    /// [listener] The InputListener instance to remove [InputListener].
    ///
    /// Example:
    /// ```dart
    /// // Remove input listener
    /// _locationWindow!.removeInputListener(_inputListener!);
    /// _inputListener = null;
    /// print("Removed input listener");
    /// ```
    void removeInputListener(InputListener listener);

    /// Adds a CameraListener to receive camera movement events.
    /// **Note:** Remove the listener when no longer needed.
    /// [listener] The CameraListener instance [CameraListener].
    ///
    /// Example:
    /// ```dart
    /// // Add camera listener
    /// _cameraListener = CameraListenerImpl();
    /// _locationWindow!.addCameraListener(_cameraListener!);
    /// print("Added camera listener");
    /// ```
    void addCameraListener(CameraListener listener);

    /// Removes a previously added CameraListener.
    /// [listener] The CameraListener instance to remove [CameraListener].
    ///
    /// Example:
    /// ```dart
    /// // Remove camera listener
    /// _locationWindow!.removeCameraListener(_cameraListener!);
    /// _cameraListener = null;
    /// print("Removed camera listener");
    /// ```
    void removeCameraListener(CameraListener listener);

    /// Adds listener for sublocation change events.
    /// [listener] Sublocation change listener [SublocationChangeListener].
    ///
    /// Example:
    /// ```dart
    /// _locationWindow!.addSublocationChangeListener(listener);
    /// print("Added sublocation change listener");
    /// ```
    void addSublocationChangeListener(SublocationChangeListener listener);

    /// Removes previously added sublocation change listener.
    /// [listener] Listener instance to remove [SublocationChangeListener].
    ///
    /// Example:
    /// ```dart
    /// _locationWindow!.removeSublocationChangeListener(listener);
    /// print("Removed sublocation change listener");
    /// ```
    void removeSublocationChangeListener(SublocationChangeListener listener);

    /// Adds listener for outdoor scenario: when camera focuses on a building or leaves it.
    /// [listener] Indoor building listener [BuildingListener].
    ///
    /// Example:
    /// ```dart
    /// _locationWindow!.addBuildingListener(_buildingListener!);
    /// print('Added building listener');
    /// ```
    void addBuildingListener(BuildingListener listener);

    /// Removes previously added indoor building listener.
    /// [listener] Listener instance to remove [BuildingListener].
    ///
    /// Example:
    /// ```dart
    /// _locationWindow!.removeBuildingListener(_buildingListener!);
    /// print('Removed building listener');
    /// ```
    void removeBuildingListener(BuildingListener listener);

    /// Moves the map camera to a new position with an easing animation.
    /// [camera] The new camera position [Camera].
    /// [duration] Animation duration in milliseconds.
    /// [callback] Callback to execute when the animation completes [CameraCallback].
    ///
    /// Example:
    /// ```dart
    /// // Fly to position with smooth animation
    /// Point targetPoint = Point(150.0, 250.0);
    /// Camera targetCamera = Camera(targetPoint, 75.0, 45.0, 30.0);
    /// CameraCallback callback = CameraCallback(
    ///  onMoveFinished: (completed) {
    ///    if (completed) {
    ///      print("Fly to animation completed successfully");
    ///    } else {
    ///      print("Fly to animation was cancelled");
    ///    }
    ///  },
    /// );
    /// _locationWindow!.flyTo(targetCamera, 2000, callback);
    /// print("Started fly to animation to point (${targetPoint.x}, ${targetPoint.y})");
    /// ```
    void flyTo(Camera camera, int duration, CameraCallback callback);

    /// Moves the map camera to a new position with a smooth pan-and-zoom animation.
    /// [camera] The new camera position [Camera].
    /// [duration] Animation duration in milliseconds (-1 for default duration).
    /// [animationType] The type of easing animation [AnimationType].
    /// [callback] Callback to execute when the animation completes [CameraCallback].
    ///
    /// Example:
    /// ```dart
    /// // Move to position with linear animation
    /// Point targetPoint = Point(200.0, 300.0);
    /// Camera targetCamera = Camera(targetPoint, 100.0, 90.0, 0.0);
    /// CameraCallback callback = CameraCallback(
    ///  onMoveFinished: (completed) {
    ///    print("Move to with linear animation ${completed ? 'completed' : 'cancelled'}");
    ///  },
    /// );
    /// _locationWindow!.moveTo(targetCamera, 1500, AnimationType.LINEAR, callback);
    /// print("Started move to with linear animation");
    /// ```
    void moveTo(Camera camera, int duration, AnimationType animationType, CameraCallback callback);

    /// Selects a map feature by its feature ID.
    /// [featureId] The feature ID from the mapFeaturePickResult [PickListener].
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Select map feature by ID
    /// String featureId = "room_101";
    /// bool selected = _locationWindow!.selectMapFeature(featureId);
    /// print("Selected map feature $featureId: $selected");
    /// ```
    bool selectMapFeature(String featureId);

    /// Deselects a map feature by its feature ID.
    /// [featureId] The feature ID from the mapFeaturePickResult [PickListener].
    /// Returns true if the operation is successful, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// // Deselect specific map feature
    /// bool deselected = _locationWindow!.deselectMapFeature(featureId);
    /// print("Deselected map feature $featureId: $deselected");
    /// ```
    bool deselectMapFeature(String featureId);

    /// Deselects all currently selected map features.
    ///
    /// Example:
    /// ```dart
    /// // Deselect all map features
    /// _locationWindow!.deselectAllMapFeatures();
    /// print("Deselected all map features");
    /// ```
    void deselectAllMapFeatures();

    /// Applies a typed filter to a specific map layer.
    /// [layer] The map layer to apply the filter to.
    /// [conditions] List of conditions (property + allowed values). Empty list resets the filter (show all).
    ///
    /// Example:
    /// ```dart
    /// // Apply filter to venues layer
    /// final conditions = [MapFilterCondition(property: "category", values: ["Toilet", "Cafe"])];
    /// _locationWindow!.applyLayerFilter("venues", conditions);
    /// print("Applied layer filter: show venues with category Toilet or Cafe");
    /// ```
    void applyLayerFilter(String layer, List<MapFilterCondition> conditions);

    /// Sets the state of a debug flag.
    /// [flag] The debug flag to set [DebugFlag].
    /// [on] Specifies whether the debug flag is enabled (true) or disabled (false).
    ///
    /// Example:
    /// ```dart
    /// LocationWindow.setDebugFlag(DebugFlag.INFOS, true);
    /// LocationWindow.setDebugFlag(DebugFlag.STATS, false);
    /// print("Updated debug flags on LocationWindow");
    /// ```
    static void setDebugFlag(DebugFlag flag, bool on) => $prototype.setDebugFlag(flag, on);

    /// Gets the state of a debug flag.
    /// [flag] The debug flag to query [DebugFlag].
    /// Returns true if the debug flag is enabled, false otherwise.
    ///
    /// Example:
    /// ```dart
    /// bool infosOn = LocationWindow.getDebugFlag(DebugFlag.INFOS);
    /// print("Debug flag INFOS enabled: $infosOn");
    /// ```
    static bool getDebugFlag(DebugFlag flag) => $prototype.getDebugFlag(flag);

    bool isValid();

    /// Specifies the zoom level of the location view, in pixels per meter.
    /// Default: approximately 100 meters across the screen width.
    ///
    /// Example:
    /// ```dart
    /// // Set zoom factor
    /// _locationWindow!.zoomFactor = 150.0;
    /// print("Set zoom factor to 150.0");
    /// ```
    double get zoomFactor;
    void set zoomFactor(double zoomFactor);
    /// Minimum zoom level for the location view (pixels per meter).
    ///
    /// Example:
    /// ```dart
    /// // Set minimum zoom factor
    /// _locationWindow!.minZoomFactor = 50.0;
    /// print("Set minimum zoom factor to 50.0");
    /// ```
    double get minZoomFactor;
    void set minZoomFactor(double minZoomFactor);
    /// Maximum zoom level for the location view (pixels per meter).
    ///
    /// Example:
    /// ```dart
    /// // Set maximum zoom factor
    /// _locationWindow!.maxZoomFactor = 300.0;
    /// print("Set maximum zoom factor to 300.0");
    /// ```
    double get maxZoomFactor;
    void set maxZoomFactor(double maxZoomFactor);
    /// Specifies whether sublocation content sticks to screen borders.
    /// If true, content sticks to screen bounds; if false, content is centered. Default: true.
    ///
    /// Example:
    /// ```dart
    /// // Set stick to border property
    /// _locationWindow!.stickToBorder = true;
    /// print("Set stick to border to true");
    /// ```
    bool get stickToBorder;
    void set stickToBorder(bool stickToBorder);
    /// Current camera position in meters.
    /// [Camera].
    ///
    /// Example:
    /// ```dart
    /// // Set camera position without animation
    /// _locationWindow!.camera = newCamera;
    /// print("Set camera position to (${newPoint.x}, ${newPoint.y}) with zoom 50.0, rotation 0°, tilt 0°");
    /// ```
    Camera get camera;
    void set camera(Camera camera);
    /// Specifies whether rotation gestures (e.g., two-finger rotation) are enabled.
    ///
    /// Example:
    /// ```dart
    /// // Set rotate gesture enabled
    /// _locationWindow!.rotateGestureEnabled = true;
    /// print("Set rotate gesture enabled to true");
    /// ```
    bool get rotateGestureEnabled;
    void set rotateGestureEnabled(bool rotateGestureEnabled);
    /// Specifies whether tilt gestures (e.g., two-finger parallel pan) are enabled.
    ///
    /// Example:
    /// ```dart
    /// // Set tilt gestures enabled
    /// _locationWindow!.tiltGesturesEnabled = true;
    /// print("Set tilt gestures enabled to true");
    /// ```
    bool get tiltGesturesEnabled;
    void set tiltGesturesEnabled(bool tiltGesturesEnabled);
    /// Specifies whether scroll gestures (e.g., pan gesture) are enabled.
    ///
    /// Example:
    /// ```dart
    /// // Set scroll gestures enabled
    /// _locationWindow!.scrollGesturesEnabled = true;
    /// print("Set scroll gestures enabled to true");
    /// ```
    bool get scrollGesturesEnabled;
    void set scrollGesturesEnabled(bool scrollGesturesEnabled);
    /// Specifies whether zoom gestures (e.g., two-finger pinch) are enabled.
    ///
    /// Example:
    /// ```dart
    /// // Set zoom gestures enabled
    /// _locationWindow!.zoomGesturesEnabled = true;
    /// print("Set zoom gestures enabled to true");
    /// ```
    bool get zoomGesturesEnabled;
    void set zoomGesturesEnabled(bool zoomGesturesEnabled);
    /// Radius for picking features on the map, in density-independent pixels.
    /// Default: 0.5 dp.
    ///
    /// Example:
    /// ```dart
    /// // Set pick radius
    /// _locationWindow!.pickRadius = 10.0;
    /// print("Set pick radius to 10.0 pixels");
    /// ```
    double get pickRadius;
    void set pickRadius(double pickRadius);
    /// List of currently selected map feature IDs.
    ///
    /// Example:
    /// ```dart
    /// // Get list of selected map features
    /// List<String> selectedFeatures = _locationWindow!.selectedMapFeatures;
    /// print("Currently selected map features: ${selectedFeatures.length} features");
    /// for (String feature in selectedFeatures) {
    ///  print("  - $feature");
    /// }
    /// ```
    List<String> get selectedMapFeatures;


    /// @nodoc
    @visibleForTesting
    static dynamic $prototype = LocationWindow$Impl.fromExternalPtr(Pointer<Void>.fromAddress(0));
}
