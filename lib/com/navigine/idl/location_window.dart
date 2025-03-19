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
import 'package:navigine_sdk/com/navigine/idl/flat_icon_map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/icon_map_object.dart';
import 'package:navigine_sdk/com/navigine/idl/input_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/pick_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/point.dart';
import 'package:navigine_sdk/com/navigine/idl/polyline_map_object.dart';
import 'package:navigine_sdk/image_wrapper.dart';
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
 * @brief Class is used to interact with the view.
 *
 * Referenced from: @see LocationView "LocationView",
 *
 */
abstract class LocationWindow implements Finalizable {

    /**
     *
     * @brief Method is used to switch location view between sublocations (floors).
     * @param id sublocation unique identifier @see Sublocation "Sublocation".
     *
     */
    void setSublocationId(int id);

    /**
     *
     * @brief Method is used to convert screen (pixels) coordinates to metrics coordinates.
     * @param point (x,y) point in screen pixels.
     * @return (x,y) point in meters coordinates @see Point "Point".
     *
     */
    Point screenPositionToMeters(math.Point<double> point);

    /**
     *
     * @brief Method is used to convert metrics coordinates to screen (pixels) coordinates.
     * @param point (x,y) point in meters coordinates @see Point "Point".
     * @param clipToViewport if true, results that would be outside the viewport are clipped to a position on the edge of the viewport in the direction of the location.
     * @return (x,y) point in screen pixels.
     *
     */
    math.Point<double> metersToScreenPosition(Point point, bool clipToViewport);

    /**
     *
     * @brief Method is used to create and add circle map object to the location view.
     * @return CircleMapObject instance @see CircleMapObject "CircleMapObject" if success, null otherwise.
     *
     */
    CircleMapObject addCircleMapObject();

    /**
     *
     * @brief Method is used to remove circle map object from the location view.
     * @param circleMapObject circle map object instance @see CircleMapObject "CircleMapObject".
     * @return true if success, false otherwise.
     *
     */
    bool removeCircleMapObject(CircleMapObject circleMapObject);

    /**
     *
     * @brief Method is used to create and add icon map object to the location view.
     * @return IconMapObject instance @see IconMapObject "IconMapObject" if success, null otherwise.
     *
     */
    IconMapObject addIconMapObject();

    /**
     *
     * @brief Method is used to remove icon map object from the location view.
     * @param iconMapObject icon map object instance @see IconMapObject "IconMapObject".
     * @return true if success, false otherwise.
     *
     */
    bool removeIconMapObject(IconMapObject iconMapObject);

    /**
     *
     * @brief Method is used to create and add flat icon map object to the location view.
     * @return FlatIconMapObject instance @see FlatIconMapObject "FlatIconMapObject" if success, null otherwise.
     *
     */
    FlatIconMapObject addFlatIconMapObject();

    /**
     *
     * @brief Method is used to remove flat icon map object from the location view.
     * @param flatIconMapObject flat icon map object instance @see FlatIconMapObject "FlatIconMapObject".
     * @return true if success, false otherwise.
     *
     */
    bool removeFlatIconMapObject(FlatIconMapObject flatIconMapObject);

    /**
     *
     * @brief Method is used to create and add polyline map object to the location view.
     * @return PolylineMapObject instance @see PolylineMapObject "PolylineMapObject" if success, null otherwise.
     *
     */
    PolylineMapObject addPolylineMapObject();

    /**
     *
     * @brief Method is used to remove polyline map object from the location view.
     * @param polylineMapObject polyline map object instance @see PolylineMapObject "PolylineMapObject".
     * @return true if success, false otherwise.
     *
     */
    bool removePolylineMapObject(PolylineMapObject polylineMapObject);

    /**
     *
     * @brief Method is used to remove all object from the location view.
     *
     */
    void removeAllMapObjects();

    /**
     *
     * @brief Method is used to select a visible map object marked as `interactive` @see MapObject "MapObject".
     * The result will be delivered to the `PickListener` by `onMapObjectPickComplete` @see PickListener "PickListener".
     * @param point position in the view to pick from, in pixels.
     *
     */
    void pickMapObjectAt(math.Point<double> point);

    /**
     *
     * @brief Method is used to select a visible map features, such as venues etc.
     * The result will be delivered to the `PickListener` by `onMapFeaturePickComplete` @see PickListener "PickListener".
     * @param point position in the view to pick from, in pixels.
     *
     */
    void pickMapFeatureAt(math.Point<double> point);

    /**
     *
     * @brief Method is used to add @see PickListener "PickListener" class element which will notify
     * all picking results events.
     * @note Do not forget to remove listener if it is no longer needed!
     * @param listener Сorresponding @see PickListener "PickListener" listener class.
     *
     */
    void addPickListener(PickListener listener);

    /**
     *
     * @brief Method is used for removing previously added @see PickListener "PickListener" class element.
     * @param listener Сorresponding @see PickListener "PickListener" class to remove.
     *
     */
    void removePickListener(PickListener listener);

    /**
     *
     * @brief Method is used to add @see InputListener "InputListener" class element which will notify
     * input events.
     * @note Do not forget to remove listener if it is no longer needed!
     * @param listener Сorresponding @see InputListener "InputListener" listener class.
     *
     */
    void addInputListener(InputListener listener);

    /**
     *
     * @brief Method is used for removing previously added @see InputListener "InputListener" class element.
     * @param listener Сorresponding @see InputListener "InputListener" class to remove.
     *
     */
    void removeInputListener(InputListener listener);

    /**
     *
     * @brief Method is used to add @see CameraListener "CameraListener" class element which will notify
     * camera movements events.
     * @note Do not forget to remove listener if it is no longer needed!
     * @param listener Сorresponding @see CameraListener "CameraListener" listener class.
     *
     */
    void addCameraListener(CameraListener listener);

    /**
     *
     * @brief Method is used for removing previously added @see CameraListener "CameraListener" class element.
     * @param listener Сorresponding @see CameraListener "CameraListener" class to remove.
     *
     */
    void removeCameraListener(CameraListener listener);

    /**
     *
     * @brief Move the map camera to a new position with an easing animation.
     *
     * @param camera The new camera position
     * @param duration The animation duration in milliseconds
     * @param callback completion callback to execute when the animation completes
     *
     */
    void flyTo(Camera camera, int duration, CameraCallback callback);

    /**
     * @cond
     */
    void applyFilter(String filter, String layer);

    void setIcons(Map<String, ImageWrapper> icons);

    static void setDebugFlag(DebugFlag flag, bool on) => $prototype.setDebugFlag(flag, on);

    static bool getDebugFlag(DebugFlag flag) => $prototype.getDebugFlag(flag);

    /**
     * @endcond
     *
     * @brief Move the map camera to a new position with an animation that pans and zooms in a smooth arc.
     *
     * @note The animation duration is calculated based on the distance to the new camera position and the specified speed
     *
     * @param camera The new camera position
     * @param duration Duration of the animation in milliseconds (-1 for default duration)
     * @param animationType The type of easing animation
     * @param callback A callback to execute when the animation completes
     *
     */
    void moveTo(Camera camera, int duration, AnimationType animationType, CameraCallback callback);

    /**
     *
     * @brief Parameter is used to change location view zoom.
     * Value indicates count of pixels in 1 meter (default: approx 100m in screen width).
     *
     */
    double get zoomFactor;
    void set zoomFactor(double zoomFactor);
    /**
     *
     * @brief Minimum zoomFactor value (ZoomFactor parameter).
     *
     */
    double get minZoomFactor;
    void set minZoomFactor(double minZoomFactor);
    /**
     *
     * @brief Maximum zoomFactor value (ZoomFactor parameter).
     *
     */
    double get maxZoomFactor;
    void set maxZoomFactor(double maxZoomFactor);
    /**
     *
     * @brief Parameter is used to enable/disable sublocation content sticking to screen borders.
     * If true image sticking to screen bounds, if false sticking to center of screen (Default: true).
     *
     */
    bool get stickToBorder;
    void set stickToBorder(bool stickToBorder);
    /**
     *
     * @brief Current camera position in meters.
     *
     */
    Camera get camera;
    void set camera(Camera camera);
    /**
     *
     * @brief Parameter is used to enable/disable rotation gestures, such as rotation with two fingers.
     *
     */
    bool get rotateGestureEnabled;
    void set rotateGestureEnabled(bool rotateGestureEnabled);
    /**
     *
     * @brief Parameter is used to enable/disable tilt gestures, such as parallel pan with two fingers.
     *
     */
    bool get tiltGesturesEnabled;
    void set tiltGesturesEnabled(bool tiltGesturesEnabled);
    /**
     *
     * @brief Parameter is used to enable/disable scroll gestures, such as the pan gesture.
     *
     */
    bool get scrollGesturesEnabled;
    void set scrollGesturesEnabled(bool scrollGesturesEnabled);
    /**
     *
     * @brief Parameter is used to enable/disable zoom gestures, such as the pinch with two fingers.
     *
     */
    bool get zoomGesturesEnabled;
    void set zoomGesturesEnabled(bool zoomGesturesEnabled);
    /**
     *
     * @brief Radius to use when picking features on the map. The default radius is 0.5 dp (density-independent pixels).
     *
     */
    double get pickRadius;
    void set pickRadius(double pickRadius);


    /// @nodoc
    @visibleForTesting
    static dynamic $prototype = LocationWindow$Impl(Pointer<Void>.fromAddress(0));
}
