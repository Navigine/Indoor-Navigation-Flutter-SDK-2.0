import 'dart:ffi';
import 'dart:math' as math;
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';
import 'package:navigine_sdk/com/navigine/idl/animation_type.dart';
import 'package:navigine_sdk/com/navigine/idl/camera.dart';
import 'package:navigine_sdk/com/navigine/idl/camera_callback.dart';
import 'package:navigine_sdk/com/navigine/idl/camera_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/circle_map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/debug_flag.dart';
import 'package:navigine_sdk/com/navigine/idl/dotted_polyline_map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/icon_map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/input_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/pick_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';
import 'package:navigine_sdk/com/navigine/idl/polygon_map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/polyline_map_object.dart';
import 'package:navigine_sdk/screen_point.dart';

part 'location_window.impl.dart';
/**
 * @file com/navigine/idl/location_window.dart
 * @brief @copybrief LocationWindow
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 *
 * @brief Interface for interacting with the location view.
 *
 * Referenced from @see LocationView "LocationView".
 *
 */
abstract class LocationWindow implements Finalizable {

    /**
     *
     * @brief Method is used to switch the location view between sublocations (e.g., floors).
     * @param id Sublocation unique identifier @see Sublocation "Sublocation".
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_common_example.dart dart_LocationWindow_setSublocationId
     *
     */
    void setSublocationId(int id);

    /**
     *
     * @brief Converts screen coordinates (pixels) to metrics coordinates (meters).
     * @param point (x,y) coordinates in screen pixels.
     * @return (x,y) coordinates in meters @see Point "Point".
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_common_example.dart dart_LocationWindow_screenPositionToMeters
     *
     */
    Point screenPositionToMeters(math.Point<double> point);

    /**
     *
     * @brief Converts metrics coordinates (meters) to screen coordinates (pixels).
     * @param point (x,y) coordinates in meters @see Point "Point".
     * @param clipToViewport If true, coordinates outside the viewport are clipped to the viewport edge.
     * @return (x,y) coordinates in screen pixels.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_common_example.dart dart_LocationWindow_metersToScreenPosition
     *
     */
    math.Point<double> metersToScreenPosition(Point point, bool clipToViewport);

    /**
     *
     * @brief Creates and adds a circle map object to the location view.
     * @return A CircleMapObject instance @see CircleMapObject "CircleMapObject" if successful, null otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_LocationWindow_addCircleMapObject
     *
     */
    CircleMapObject addCircleMapObject();

    /**
     *
     * @brief Removes a circle map object from the location view.
     * @param circleMapObject The circle map object instance @see CircleMapObject "CircleMapObject".
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_LocationWindow_removeCircleMapObject
     *
     */
    bool removeCircleMapObject(CircleMapObject circleMapObject);

    /**
     *
     * @brief Creates and adds an icon map object to the location view.
     * @return An IconMapObject instance @see IconMapObject "IconMapObject" if successful, null otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_LocationWindow_addIconMapObject
     *
     */
    IconMapObject addIconMapObject();

    /**
     *
     * @brief Removes an icon map object from the location view.
     * @param iconMapObject The icon map object instance @see IconMapObject "IconMapObject".
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_LocationWindow_removeIconMapObject
     *
     */
    bool removeIconMapObject(IconMapObject iconMapObject);

    /**
     *
     * @brief Creates and adds a polygon map object to the location view.
     * @return A PolygonMapObject instance @see PolygonMapObject "PolygonMapObject" if successful, null otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_LocationWindow_addPolygonMapObject
     *
     */
    PolygonMapObject addPolygonMapObject();

    /**
     *
     * @brief Removes a polygon map object from the location view.
     * @param polygonMapObject The polygon map object instance @see PolygonMapObject "PolygonMapObject".
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_LocationWindow_removePolygonMapObject
     *
     */
    bool removePolygonMapObject(PolygonMapObject polygonMapObject);

    /**
     *
     * @brief Creates and adds a polyline map object to the location view.
     * @return A PolylineMapObject instance @see PolylineMapObject "PolylineMapObject" if successful, null otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_LocationWindow_addPolylineMapObject
     *
     */
    PolylineMapObject addPolylineMapObject();

    /**
     *
     * @brief Removes a polyline map object from the location view.
     * @param polylineMapObject The polyline map object instance @see PolylineMapObject "PolylineMapObject".
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_LocationWindow_removePolylineMapObject
     *
     */
    bool removePolylineMapObject(PolylineMapObject polylineMapObject);

    /**
     *
     * @brief Creates and adds a polyline points map object to the location view.
     * @return A DottedPolylineMapObject instance @see DottedPolylineMapObject "DottedPolylineMapObject" if successful, null otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_LocationWindow_addDottedPolylineMapObject
     *
     */
    DottedPolylineMapObject addDottedPolylineMapObject();

    /**
     *
     * @brief Removes a polyline points map object from the location view.
     * @param dottedPolylineMapObject The polyline points map object instance @see DottedPolylineMapObject "DottedPolylineMapObject".
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_LocationWindow_removeDottedPolylineMapObject
     *
     */
    bool removeDottedPolylineMapObject(DottedPolylineMapObject dottedPolylineMapObject);

    /**
     *
     * @brief Removes all map objects from the location view.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_map_objects_example.dart dart_LocationWindow_removeAllMapObjects
     *
     */
    void removeAllMapObjects();

    /**
     *
     * @brief Selects a visible, interactive map object at the specified screen position.
     * @param point Position in screen pixels to pick from.
     * Results are delivered to the PickListener via onMapObjectPickComplete @see PickListener "PickListener".
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_interaction_example.dart dart_LocationWindow_pickMapObjectAt
     *
     */
    void pickMapObjectAt(math.Point<double> point);

    /**
     *
     * @brief Selects visible map features (e.g., venues) at the specified screen position.
     * @param point Position in screen pixels to pick from.
     * Results are delivered to the PickListener via onMapFeaturePickComplete @see PickListener "PickListener".
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_interaction_example.dart dart_LocationWindow_pickMapFeatureAt
     *
     */
    void pickMapFeatureAt(math.Point<double> point);

    /**
     *
     * @brief Adds a PickListener to receive picking result events.
     * @param listener The PickListener instance @see PickListener "PickListener".
     * @note Remove the listener when no longer needed.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_interaction_example.dart dart_LocationWindow_addPickListener
     *
     */
    void addPickListener(PickListener listener);

    /**
     *
     * @brief Removes a previously added PickListener.
     * @param listener The PickListener instance to remove @see PickListener "PickListener".
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_interaction_example.dart dart_LocationWindow_removePickListener
     *
     */
    void removePickListener(PickListener listener);

    /**
     *
     * @brief Adds an InputListener to receive input events.
     * @param listener The InputListener instance @see InputListener "InputListener".
     * @note Remove the listener when no longer needed.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_interaction_example.dart dart_LocationWindow_addInputListener
     *
     */
    void addInputListener(InputListener listener);

    /**
     *
     * @brief Removes a previously added InputListener.
     * @param listener The InputListener instance to remove @see InputListener "InputListener".
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_interaction_example.dart dart_LocationWindow_removeInputListener
     *
     */
    void removeInputListener(InputListener listener);

    /**
     *
     * @brief Adds a CameraListener to receive camera movement events.
     * @param listener The CameraListener instance @see CameraListener "CameraListener".
     * @note Remove the listener when no longer needed.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_camera_example.dart dart_LocationWindow_addCameraListener
     *
     */
    void addCameraListener(CameraListener listener);

    /**
     *
     * @brief Removes a previously added CameraListener.
     * @param listener The CameraListener instance to remove @see CameraListener "CameraListener".
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_camera_example.dart dart_LocationWindow_removeCameraListener
     *
     */
    void removeCameraListener(CameraListener listener);

    /**
     *
     * @brief Moves the map camera to a new position with an easing animation.
     * @param camera The new camera position @see Camera "Camera".
     * @param duration Animation duration in milliseconds.
     * @param callback Callback to execute when the animation completes @see CameraCallback "CameraCallback".
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_camera_example.dart dart_LocationWindow_flyTo
     *
     */
    void flyTo(Camera camera, int duration, CameraCallback callback);

    /**
     *
     * @brief Moves the map camera to a new position with a smooth pan-and-zoom animation.
     * @param camera The new camera position @see Camera "Camera".
     * @param duration Animation duration in milliseconds (-1 for default duration).
     * @param animationType The type of easing animation @see AnimationType "AnimationType".
     * @param callback Callback to execute when the animation completes @see CameraCallback "CameraCallback".
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_camera_example.dart dart_LocationWindow_moveTo
     *
     */
    void moveTo(Camera camera, int duration, AnimationType animationType, CameraCallback callback);

    /**
     *
     * @brief Selects a map feature by its feature ID.
     * @param featureId The feature ID from the mapFeaturePickResult @see PickListener "PickListener".
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_common_example.dart dart_LocationWindow_selectMapFeature
     *
     */
    bool selectMapFeature(String featureId);

    /**
     *
     * @brief Deselects a map feature by its feature ID.
     * @param featureId The feature ID from the mapFeaturePickResult @see PickListener "PickListener".
     * @return true if the operation is successful, false otherwise.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_common_example.dart dart_LocationWindow_deselectMapFeature
     *
     */
    bool deselectMapFeature(String featureId);

    /**
     *
     * @brief Deselects all currently selected map features.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_common_example.dart dart_LocationWindow_deselectAllMapFeatures
     *
     */
    void deselectAllMapFeatures();

    /**
     *
     * @brief Applies a filter to a specific map layer.
     * @param filter The filter stringю
     * @param layer The map layer to apply the filter to.
     *
     */
    void applyFilter(String filter, String layer);

    /**
     *
     * @brief Sets the state of a debug flag.
     * @param flag The debug flag to set @see DebugFlag "DebugFlag".
     * @param on Specifies whether the debug flag is enabled (true) or disabled (false).
     *
     */
    static void setDebugFlag(DebugFlag flag, bool on) => $prototype.setDebugFlag(flag, on);

    /**
     *
     * @brief Gets the state of a debug flag.
     * @param flag The debug flag to query @see DebugFlag "DebugFlag".
     * @return true if the debug flag is enabled, false otherwise.
     *
     */
    static bool getDebugFlag(DebugFlag flag) => $prototype.getDebugFlag(flag);

    /**
     *
     * @brief Specifies the zoom level of the location view, in pixels per meter.
     * Default: approximately 100 meters across the screen width.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_common_example.dart dart_LocationWindow_setZoomFactor
     *
     */
    double get zoomFactor;
    void set zoomFactor(double zoomFactor);
    /**
     *
     * @brief Minimum zoom level for the location view (pixels per meter).
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_common_example.dart dart_LocationWindow_setMinZoomFactor
     *
     */
    double get minZoomFactor;
    void set minZoomFactor(double minZoomFactor);
    /**
     *
     * @brief Maximum zoom level for the location view (pixels per meter).
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_common_example.dart dart_LocationWindow_setMaxZoomFactor
     *
     */
    double get maxZoomFactor;
    void set maxZoomFactor(double maxZoomFactor);
    /**
     *
     * @brief Specifies whether sublocation content sticks to screen borders.
     * If true, content sticks to screen bounds; if false, content is centered. Default: true.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_interaction_example.dart dart_LocationWindow_setStickToBorder
     *
     */
    bool get stickToBorder;
    void set stickToBorder(bool stickToBorder);
    /**
     *
     * @brief Current camera position in meters.
     * @see Camera "Camera".
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_camera_example.dart dart_LocationWindow_setCamera
     *
     */
    Camera get camera;
    void set camera(Camera camera);
    /**
     *
     * @brief Specifies whether rotation gestures (e.g., two-finger rotation) are enabled.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_interaction_example.dart dart_LocationWindow_setRotateGestureEnabled
     *
     */
    bool get rotateGestureEnabled;
    void set rotateGestureEnabled(bool rotateGestureEnabled);
    /**
     *
     * @brief Specifies whether tilt gestures (e.g., two-finger parallel pan) are enabled.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_interaction_example.dart dart_LocationWindow_setTiltGesturesEnabled
     *
     */
    bool get tiltGesturesEnabled;
    void set tiltGesturesEnabled(bool tiltGesturesEnabled);
    /**
     *
     * @brief Specifies whether scroll gestures (e.g., pan gesture) are enabled.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_interaction_example.dart dart_LocationWindow_setScrollGesturesEnabled
     *
     */
    bool get scrollGesturesEnabled;
    void set scrollGesturesEnabled(bool scrollGesturesEnabled);
    /**
     *
     * @brief Specifies whether zoom gestures (e.g., two-finger pinch) are enabled.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_interaction_example.dart dart_LocationWindow_setZoomGesturesEnabled
     *
     */
    bool get zoomGesturesEnabled;
    void set zoomGesturesEnabled(bool zoomGesturesEnabled);
    /**
     *
     * @brief Radius for picking features on the map, in density-independent pixels.
     * Default: 0.5 dp.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_interaction_example.dart dart_LocationWindow_setPickRadius
     *
     */
    double get pickRadius;
    void set pickRadius(double pickRadius);
    /**
     *
     * @brief List of currently selected map feature IDs.
     *
     *
     *
     * Dart code snippet:
     * @snippet location_window_common_example.dart dart_LocationWindow_getSelectedMapFeatures
     *
     */
    List<String> get selectedMapFeatures;


    /// @nodoc
    @visibleForTesting
    static dynamic $prototype = LocationWindow$Impl(Pointer<Void>.fromAddress(0));
}
