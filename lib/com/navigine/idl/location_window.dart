import 'dart:ffi';
import 'dart:math' as math;
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_token_cache.dart' as __lib;
import 'package:navigine_sdk/com/_type_repository.dart' as __lib;
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

abstract class LocationWindow {

    void setSublocationId(int id);
    Point screenPositionToMeters(math.Point<double> point);
    math.Point<double> metersToScreenPosition(Point point, bool clipToViewport);
    CircleMapObject addCircleMapObject();
    bool removeCircleMapObject(CircleMapObject circleMapObject);
    IconMapObject addIconMapObject();
    bool removeIconMapObject(IconMapObject iconMapObject);
    FlatIconMapObject addFlatIconMapObject();
    bool removeFlatIconMapObject(FlatIconMapObject iconMapObject);
    PolylineMapObject addPolylineMapObject();
    bool removePolylineMapObject(PolylineMapObject polylineMapObject);
    void removeAllMapObjects();
    void pickMapObjectAt(math.Point<double> point);
    void pickMapFeatureAt(math.Point<double> point);
    void addPickListener(PickListener listener);
    void removePickListener(PickListener listener);
    void addInputListener(InputListener listener);
    void removeInputListener(InputListener listener);
    void addCameraListener(CameraListener listener);
    void removeCameraListener(CameraListener listener);
    void flyTo(Camera camera, int duration, CameraCallback callback);
    void moveTo(Camera camera, int duration, AnimationType animationType, CameraCallback callback);
    void applyFilter(String filter, String layer);
    void setIcons(Map<String, ImageWrapper> icons);
    static void setDebugFlag(DebugFlag flag, bool on) => $prototype.setDebugFlag(flag, on);
    static bool getDebugFlag(DebugFlag flag) => $prototype.getDebugFlag(flag);

    double get zoomFactor;
    void set zoomFactor(double zoomFactor);
    double get minZoomFactor;
    void set minZoomFactor(double minZoomFactor);
    double get maxZoomFactor;
    void set maxZoomFactor(double maxZoomFactor);
    bool get stickToBorder;
    void set stickToBorder(bool stickToBorder);
    Camera get camera;
    void set camera(Camera camera);
    bool get rotateGestureEnabled;
    void set rotateGestureEnabled(bool rotateGestureEnabled);
    bool get tiltGesturesEnabled;
    void set tiltGesturesEnabled(bool tiltGesturesEnabled);
    bool get scrollGesturesEnabled;
    void set scrollGesturesEnabled(bool scrollGesturesEnabled);
    bool get zoomGesturesEnabled;
    void set zoomGesturesEnabled(bool zoomGesturesEnabled);
    double get pickRadius;
    void set pickRadius(double pickRadius);


    /// @nodoc
    @visibleForTesting
    static dynamic $prototype = LocationWindow$Impl(Pointer<Void>.fromAddress(0));
}

// LocationWindow "private" section, not exported.

final _navigine_sdk_flutter_LocationWindow_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationWindow_copy_handle'));

final _navigine_sdk_flutter_LocationWindow_RegisterFinalizer = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Int32, Handle),
    void Function(Pointer<Void>, int, Object)
  >('navigine_sdk_flutter_LocationWindow_register_finalizer'));

final _navigine_sdk_flutter_LocationWindow_GetTypeId = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationWindow_get_type_id'));

final _navigine_sdk_flutter_LocationWindow_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationWindow_release_handle'));

final _navigine_sdk_flutter_LocationWindow_CreateProxy = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Uint64, Int32, Int64, Handle, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer),
    Pointer<Void> Function(int, int, int, Object, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer, Pointer)
  >('navigine_sdk_flutter_LocationWindow_create_proxy'));


class LocationWindow$Impl extends __lib.NativeBase implements LocationWindow {

    LocationWindow$Impl(Pointer<Void> handle) : super(handle);

    @override
    void setSublocationId(int id) {
        final _setSublocationIdFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_LocationWindow_setSublocationId__Id'));
        final _idHandle = navigine_sdk_flutter_int_ToFfi(id);
        final _handle = this.handle;
        _setSublocationIdFfi(_handle, _idHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_idHandle);
    }

    @override
    Point screenPositionToMeters(math.Point<double> point) {
        final _screenPositionToMetersFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_screenPositionToMeters__Point'));
        final _pointHandle = navigine_sdk_flutter_math_Point_double_ToFfi(point);
        final _handle = this.handle;
        final __resultHandle = _screenPositionToMetersFfi(_handle, _pointHandle);
        navigine_sdk_flutter_math_Point_double_ReleaseFfiHandle(_pointHandle);
        try  {
            return navigine_sdk_flutter_Point_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_Point_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    math.Point<double> metersToScreenPosition(Point point, bool clipToViewport) {
        final _metersToScreenPositionFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, Uint8),
            Pointer<Void> Function(Pointer<Void>, Pointer<Void>, int)
          >('navigine_sdk_flutter_LocationWindow_metersToScreenPosition__Point_ClipToViewport'));
        final _pointHandle = navigine_sdk_flutter_Point_ToFfi(point);
        final _clipToViewportHandle = navigine_sdk_flutter_bool_ToFfi(clipToViewport);
        final _handle = this.handle;
        final __resultHandle = _metersToScreenPositionFfi(_handle, _pointHandle, _clipToViewportHandle);
        navigine_sdk_flutter_Point_ReleaseFfiHandle(_pointHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(_clipToViewportHandle);
        try  {
            return navigine_sdk_flutter_math_Point_double_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_math_Point_double_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    CircleMapObject addCircleMapObject() {
        final _addCircleMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationWindow_addCircleMapObject'));
        final _handle = this.handle;
        final __resultHandle = _addCircleMapObjectFfi(_handle, );
        try  {
            return navigine_sdk_flutter_CircleMapObject_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_CircleMapObject_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    bool removeCircleMapObject(CircleMapObject circleMapObject) {
        final _removeCircleMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_removeCircleMapObject__CircleMapObject'));
        final _circleMapObjectHandle = navigine_sdk_flutter_CircleMapObject_ToFfi(circleMapObject);
        final _handle = this.handle;
        final __resultHandle = _removeCircleMapObjectFfi(_handle, _circleMapObjectHandle);
        navigine_sdk_flutter_CircleMapObject_ReleaseFfiHandle(_circleMapObjectHandle);
        try  {
            return navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    IconMapObject addIconMapObject() {
        final _addIconMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationWindow_addIconMapObject'));
        final _handle = this.handle;
        final __resultHandle = _addIconMapObjectFfi(_handle, );
        try  {
            return navigine_sdk_flutter_IconMapObject_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_IconMapObject_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    bool removeIconMapObject(IconMapObject iconMapObject) {
        final _removeIconMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_removeIconMapObject__IconMapObject'));
        final _iconMapObjectHandle = navigine_sdk_flutter_IconMapObject_ToFfi(iconMapObject);
        final _handle = this.handle;
        final __resultHandle = _removeIconMapObjectFfi(_handle, _iconMapObjectHandle);
        navigine_sdk_flutter_IconMapObject_ReleaseFfiHandle(_iconMapObjectHandle);
        try  {
            return navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    FlatIconMapObject addFlatIconMapObject() {
        final _addFlatIconMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationWindow_addFlatIconMapObject'));
        final _handle = this.handle;
        final __resultHandle = _addFlatIconMapObjectFfi(_handle, );
        try  {
            return navigine_sdk_flutter_FlatIconMapObject_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_FlatIconMapObject_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    bool removeFlatIconMapObject(FlatIconMapObject iconMapObject) {
        final _removeFlatIconMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_removeFlatIconMapObject__IconMapObject'));
        final _iconMapObjectHandle = navigine_sdk_flutter_FlatIconMapObject_ToFfi(iconMapObject);
        final _handle = this.handle;
        final __resultHandle = _removeFlatIconMapObjectFfi(_handle, _iconMapObjectHandle);
        navigine_sdk_flutter_FlatIconMapObject_ReleaseFfiHandle(_iconMapObjectHandle);
        try  {
            return navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    PolylineMapObject addPolylineMapObject() {
        final _addPolylineMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationWindow_addPolylineMapObject'));
        final _handle = this.handle;
        final __resultHandle = _addPolylineMapObjectFfi(_handle, );
        try  {
            return navigine_sdk_flutter_PolylineMapObject_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_PolylineMapObject_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    bool removePolylineMapObject(PolylineMapObject polylineMapObject) {
        final _removePolylineMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_removePolylineMapObject__PolylineMapObject'));
        final _polylineMapObjectHandle = navigine_sdk_flutter_PolylineMapObject_ToFfi(polylineMapObject);
        final _handle = this.handle;
        final __resultHandle = _removePolylineMapObjectFfi(_handle, _polylineMapObjectHandle);
        navigine_sdk_flutter_PolylineMapObject_ReleaseFfiHandle(_polylineMapObjectHandle);
        try  {
            return navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        }
    }

    @override
    void removeAllMapObjects() {
        final _removeAllMapObjectsFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationWindow_removeAllMapObjects'));
        final _handle = this.handle;
        _removeAllMapObjectsFfi(_handle, );
    }

    @override
    void pickMapObjectAt(math.Point<double> point) {
        final _pickMapObjectAtFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_pickMapObjectAt__Point'));
        final _pointHandle = navigine_sdk_flutter_math_Point_double_ToFfi(point);
        final _handle = this.handle;
        _pickMapObjectAtFfi(_handle, _pointHandle);
        navigine_sdk_flutter_math_Point_double_ReleaseFfiHandle(_pointHandle);
    }

    @override
    void pickMapFeatureAt(math.Point<double> point) {
        final _pickMapFeatureAtFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_pickMapFeatureAt__Point'));
        final _pointHandle = navigine_sdk_flutter_math_Point_double_ToFfi(point);
        final _handle = this.handle;
        _pickMapFeatureAtFfi(_handle, _pointHandle);
        navigine_sdk_flutter_math_Point_double_ReleaseFfiHandle(_pointHandle);
    }

    @override
    void addPickListener(PickListener listener) {
        final _addPickListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_addPickListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_PickListener_ToFfi(listener);
        final _handle = this.handle;
        _addPickListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_PickListener_ReleaseFfiHandle(_listenerHandle);
    }

    @override
    void removePickListener(PickListener listener) {
        final _removePickListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_removePickListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_PickListener_ToFfi(listener);
        final _handle = this.handle;
        _removePickListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_PickListener_ReleaseFfiHandle(_listenerHandle);
    }

    @override
    void addInputListener(InputListener listener) {
        final _addInputListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_addInputListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_InputListener_ToFfi(listener);
        final _handle = this.handle;
        _addInputListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_InputListener_ReleaseFfiHandle(_listenerHandle);
    }

    @override
    void removeInputListener(InputListener listener) {
        final _removeInputListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_removeInputListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_InputListener_ToFfi(listener);
        final _handle = this.handle;
        _removeInputListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_InputListener_ReleaseFfiHandle(_listenerHandle);
    }

    @override
    void addCameraListener(CameraListener listener) {
        final _addCameraListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_addCameraListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_CameraListener_ToFfi(listener);
        final _handle = this.handle;
        _addCameraListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_CameraListener_ReleaseFfiHandle(_listenerHandle);
    }

    @override
    void removeCameraListener(CameraListener listener) {
        final _removeCameraListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_removeCameraListener__Listener'));
        final _listenerHandle = navigine_sdk_flutter_CameraListener_ToFfi(listener);
        final _handle = this.handle;
        _removeCameraListenerFfi(_handle, _listenerHandle);
        navigine_sdk_flutter_CameraListener_ReleaseFfiHandle(_listenerHandle);
    }

    @override
    void flyTo(Camera camera, int duration, CameraCallback callback) {
        final _flyToFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>, Int32, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>, int, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_flyTo__Camera_Duration_Callback'));
        final _cameraHandle = navigine_sdk_flutter_Camera_ToFfi(camera);
        final _durationHandle = navigine_sdk_flutter_int_ToFfi(duration);
        final _callbackHandle = navigine_sdk_flutter_CameraCallback_ToFfi(callback);
        final _handle = this.handle;
        _flyToFfi(_handle, _cameraHandle, _durationHandle, _callbackHandle);
        navigine_sdk_flutter_Camera_ReleaseFfiHandle(_cameraHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_durationHandle);
        navigine_sdk_flutter_CameraCallback_ReleaseFfiHandle(_callbackHandle);
    }

    @override
    void moveTo(Camera camera, int duration, AnimationType animationType, CameraCallback callback) {
        final _moveToFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>, Int32, Uint32, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>, int, int, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_moveTo__Camera_Duration_AnimationType_Callback'));
        final _cameraHandle = navigine_sdk_flutter_Camera_ToFfi(camera);
        final _durationHandle = navigine_sdk_flutter_int_ToFfi(duration);
        final _animationTypeHandle = navigine_sdk_flutter_AnimationType_ToFfi(animationType);
        final _callbackHandle = navigine_sdk_flutter_CameraCallback_ToFfi(callback);
        final _handle = this.handle;
        _moveToFfi(_handle, _cameraHandle, _durationHandle, _animationTypeHandle, _callbackHandle);
        navigine_sdk_flutter_Camera_ReleaseFfiHandle(_cameraHandle);
        navigine_sdk_flutter_int_ReleaseFfiHandle(_durationHandle);
        navigine_sdk_flutter_AnimationType_ReleaseFfiHandle(_animationTypeHandle);
        navigine_sdk_flutter_CameraCallback_ReleaseFfiHandle(_callbackHandle);
    }

    @override
    void applyFilter(String filter, String layer) {
        final _applyFilterFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_applyFilter__Filter_Layer'));
        final _filterHandle = navigine_sdk_flutter_String_ToFfi(filter);
        final _layerHandle = navigine_sdk_flutter_String_ToFfi(layer);
        final _handle = this.handle;
        _applyFilterFfi(_handle, _filterHandle, _layerHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_filterHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_layerHandle);
    }

    @override
    void setIcons(Map<String, ImageWrapper> icons) {
        final _setIconsFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_setIcons__Icons'));
        final _iconsHandle = navigine_sdk_flutter_Map_String_ImageWrapper_ToFfi(icons);
        final _handle = this.handle;
        _setIconsFfi(_handle, _iconsHandle);
        navigine_sdk_flutter_Map_String_ImageWrapper_ReleaseFfiHandle(_iconsHandle);
    }

    void setDebugFlag(DebugFlag flag, bool on) {
        final _setDebugFlagFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Uint32, Uint8),
            Pointer<Void> Function(int, int)
          >('navigine_sdk_flutter_LocationWindow_setDebugFlag__Flag_On'));
        final _flagHandle = navigine_sdk_flutter_DebugFlag_ToFfi(flag);
        final _onHandle = navigine_sdk_flutter_bool_ToFfi(on);
        final __resultHandle = _setDebugFlagFfi(_flagHandle, _onHandle);
        navigine_sdk_flutter_DebugFlag_ReleaseFfiHandle(_flagHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(_onHandle);
    }
    bool getDebugFlag(DebugFlag flag) {
        final _getDebugFlagFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Uint32),
            Pointer<Void> Function(int)
          >('navigine_sdk_flutter_LocationWindow_getDebugFlag__Flag'));
        final _flagHandle = navigine_sdk_flutter_DebugFlag_ToFfi(flag);
        final __resultHandle = _getDebugFlagFfi(_flagHandle);
        navigine_sdk_flutter_DebugFlag_ReleaseFfiHandle(_flagHandle);
        try  {
            return navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        }
        finally  {
            navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        }
    }

    double get zoomFactor {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>),
            double Function(Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_zoomFactor_get'));

        final _handle = this.handle;
        final _zoomFactorHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_double_FromFfi(_zoomFactorHandle);
        }
        finally  {
            navigine_sdk_flutter_double_ReleaseFfiHandle(_zoomFactorHandle);
        }
    }

    set zoomFactor(double zoomFactor) {
        final _setFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Float),
            void Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_LocationWindow_zoomFactor_set'));
        final _zoomFactorHandle = navigine_sdk_flutter_double_ToFfi(zoomFactor);
        final _handle = this.handle;
        _setFfi(_handle, _zoomFactorHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_zoomFactorHandle);
    }

    double get minZoomFactor {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>),
            double Function(Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_minZoomFactor_get'));

        final _handle = this.handle;
        final _minZoomFactorHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_double_FromFfi(_minZoomFactorHandle);
        }
        finally  {
            navigine_sdk_flutter_double_ReleaseFfiHandle(_minZoomFactorHandle);
        }
    }

    set minZoomFactor(double minZoomFactor) {
        final _setFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Float),
            void Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_LocationWindow_minZoomFactor_set'));
        final _minZoomFactorHandle = navigine_sdk_flutter_double_ToFfi(minZoomFactor);
        final _handle = this.handle;
        _setFfi(_handle, _minZoomFactorHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_minZoomFactorHandle);
    }

    double get maxZoomFactor {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>),
            double Function(Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_maxZoomFactor_get'));

        final _handle = this.handle;
        final _maxZoomFactorHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_double_FromFfi(_maxZoomFactorHandle);
        }
        finally  {
            navigine_sdk_flutter_double_ReleaseFfiHandle(_maxZoomFactorHandle);
        }
    }

    set maxZoomFactor(double maxZoomFactor) {
        final _setFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Float),
            void Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_LocationWindow_maxZoomFactor_set'));
        final _maxZoomFactorHandle = navigine_sdk_flutter_double_ToFfi(maxZoomFactor);
        final _handle = this.handle;
        _setFfi(_handle, _maxZoomFactorHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_maxZoomFactorHandle);
    }

    bool get stickToBorder {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_stickToBorder_get'));

        final _handle = this.handle;
        final _stickToBorderHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_bool_FromFfi(_stickToBorderHandle);
        }
        finally  {
            navigine_sdk_flutter_bool_ReleaseFfiHandle(_stickToBorderHandle);
        }
    }

    set stickToBorder(bool stickToBorder) {
        final _setFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Uint8),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_LocationWindow_stickToBorder_set'));
        final _stickToBorderHandle = navigine_sdk_flutter_bool_ToFfi(stickToBorder);
        final _handle = this.handle;
        _setFfi(_handle, _stickToBorderHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(_stickToBorderHandle);
    }

    Camera get camera {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_camera_get'));

        final _handle = this.handle;
        final _cameraHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_Camera_FromFfi(_cameraHandle);
        }
        finally  {
            navigine_sdk_flutter_Camera_ReleaseFfiHandle(_cameraHandle);
        }
    }

    set camera(Camera camera) {
        final _setFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_camera_set'));
        final _cameraHandle = navigine_sdk_flutter_Camera_ToFfi(camera);
        final _handle = this.handle;
        _setFfi(_handle, _cameraHandle);
        navigine_sdk_flutter_Camera_ReleaseFfiHandle(_cameraHandle);
    }

    bool get rotateGestureEnabled {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_rotateGestureEnabled_get'));

        final _handle = this.handle;
        final _rotateGestureEnabledHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_bool_FromFfi(_rotateGestureEnabledHandle);
        }
        finally  {
            navigine_sdk_flutter_bool_ReleaseFfiHandle(_rotateGestureEnabledHandle);
        }
    }

    set rotateGestureEnabled(bool rotateGestureEnabled) {
        final _setFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Uint8),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_LocationWindow_rotateGestureEnabled_set'));
        final _rotateGestureEnabledHandle = navigine_sdk_flutter_bool_ToFfi(rotateGestureEnabled);
        final _handle = this.handle;
        _setFfi(_handle, _rotateGestureEnabledHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(_rotateGestureEnabledHandle);
    }

    bool get tiltGesturesEnabled {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_tiltGesturesEnabled_get'));

        final _handle = this.handle;
        final _tiltGesturesEnabledHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_bool_FromFfi(_tiltGesturesEnabledHandle);
        }
        finally  {
            navigine_sdk_flutter_bool_ReleaseFfiHandle(_tiltGesturesEnabledHandle);
        }
    }

    set tiltGesturesEnabled(bool tiltGesturesEnabled) {
        final _setFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Uint8),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_LocationWindow_tiltGesturesEnabled_set'));
        final _tiltGesturesEnabledHandle = navigine_sdk_flutter_bool_ToFfi(tiltGesturesEnabled);
        final _handle = this.handle;
        _setFfi(_handle, _tiltGesturesEnabledHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(_tiltGesturesEnabledHandle);
    }

    bool get scrollGesturesEnabled {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_scrollGesturesEnabled_get'));

        final _handle = this.handle;
        final _scrollGesturesEnabledHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_bool_FromFfi(_scrollGesturesEnabledHandle);
        }
        finally  {
            navigine_sdk_flutter_bool_ReleaseFfiHandle(_scrollGesturesEnabledHandle);
        }
    }

    set scrollGesturesEnabled(bool scrollGesturesEnabled) {
        final _setFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Uint8),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_LocationWindow_scrollGesturesEnabled_set'));
        final _scrollGesturesEnabledHandle = navigine_sdk_flutter_bool_ToFfi(scrollGesturesEnabled);
        final _handle = this.handle;
        _setFfi(_handle, _scrollGesturesEnabledHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(_scrollGesturesEnabledHandle);
    }

    bool get zoomGesturesEnabled {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_zoomGesturesEnabled_get'));

        final _handle = this.handle;
        final _zoomGesturesEnabledHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_bool_FromFfi(_zoomGesturesEnabledHandle);
        }
        finally  {
            navigine_sdk_flutter_bool_ReleaseFfiHandle(_zoomGesturesEnabledHandle);
        }
    }

    set zoomGesturesEnabled(bool zoomGesturesEnabled) {
        final _setFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Uint8),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_LocationWindow_zoomGesturesEnabled_set'));
        final _zoomGesturesEnabledHandle = navigine_sdk_flutter_bool_ToFfi(zoomGesturesEnabled);
        final _handle = this.handle;
        _setFfi(_handle, _zoomGesturesEnabledHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(_zoomGesturesEnabledHandle);
    }

    double get pickRadius {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>),
            double Function(Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_pickRadius_get'));

        final _handle = this.handle;
        final _pickRadiusHandle = _getFfi(_handle);
        try  {
            return navigine_sdk_flutter_double_FromFfi(_pickRadiusHandle);
        }
        finally  {
            navigine_sdk_flutter_double_ReleaseFfiHandle(_pickRadiusHandle);
        }
    }

    set pickRadius(double pickRadius) {
        final _setFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Float),
            void Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_LocationWindow_pickRadius_set'));
        final _pickRadiusHandle = navigine_sdk_flutter_double_ToFfi(pickRadius);
        final _handle = this.handle;
        _setFfi(_handle, _pickRadiusHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_pickRadiusHandle);
    }



}
Pointer<Void> navigine_sdk_flutter_LocationWindow_ToFfi(LocationWindow value) {
    if (value is __lib.NativeBase)  {
        return _navigine_sdk_flutter_LocationWindow_CopyHandle((value as __lib.NativeBase).handle);
    }
    else  {
        return Pointer<Void>.fromAddress(0);
    }
}

LocationWindow navigine_sdk_flutter_LocationWindow_FromFfi(Pointer<Void> handle) {
    if (handle.address == 0) throw StateError("Expected non-null value.");
    final instance = __lib.getCachedInstance(handle);
    if (instance != null && instance is LocationWindow) return instance;
    final _typeIdHandle = _navigine_sdk_flutter_LocationWindow_GetTypeId(handle);
    final factoryConstructor = __lib.typeRepository[navigine_sdk_flutter_String_FromFfi(_typeIdHandle)];
    navigine_sdk_flutter_String_ReleaseFfiHandle(_typeIdHandle);
    final _copiedHandle = _navigine_sdk_flutter_LocationWindow_CopyHandle(handle);
    final result = factoryConstructor != null
      ? factoryConstructor(_copiedHandle)
      : LocationWindow$Impl(_copiedHandle);
    __lib.cacheInstance(_copiedHandle, result);
    _navigine_sdk_flutter_LocationWindow_RegisterFinalizer(_copiedHandle, __lib.LibraryContext.isolateId, result);
    return result;
}

Pointer<Void> navigine_sdk_flutter_LocationWindow_ToFfiNullable(LocationWindow? value) => 
  value != null ? navigine_sdk_flutter_LocationWindow_ToFfi(value) : Pointer<Void>.fromAddress(0);

void navigine_sdk_flutter_LocationWindow_ReleaseFfiHandle(Pointer<Void> handle) => 
  _navigine_sdk_flutter_LocationWindow_ReleaseHandle(handle);

void navigine_sdk_flutter_LocationWindow_ReleaseFfiHandleNullable(Pointer<Void> handle) => 
  _navigine_sdk_flutter_LocationWindow_ReleaseHandle(handle);

LocationWindow? navigine_sdk_flutter_LocationWindow_FromFfiNullable(Pointer<Void> handle) => 
  handle.address != 0 ? navigine_sdk_flutter_LocationWindow_FromFfi(handle) : null;

// End of LocationWindow "private" section.

final _navigine_sdk_flutter_Map_String_ImageWrapper_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_Map_String_ImageWrapper_create_handle'));

final _navigine_sdk_flutter_Map_String_ImageWrapper_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_ImageWrapper_release_handle'));

final _navigine_sdk_flutter_Map_String_ImageWrapper_Put = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_ImageWrapper_put'));

final _navigine_sdk_flutter_Map_String_ImageWrapper_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_ImageWrapper_iterator'));

final _navigine_sdk_flutter_Map_String_ImageWrapper_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_ImageWrapper_iterator_release_handle'));

final _navigine_sdk_flutter_Map_String_ImageWrapper_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_ImageWrapper_iterator_is_valid'));

final _navigine_sdk_flutter_Map_String_ImageWrapper_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_ImageWrapper_iterator_increment'));

final _navigine_sdk_flutter_Map_String_ImageWrapper_IteratorGetKey = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_ImageWrapper_iterator_get_key'));

final _navigine_sdk_flutter_Map_String_ImageWrapper_IteratorGetValue = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_ImageWrapper_iterator_get_value'));

Pointer<Void> navigine_sdk_flutter_Map_String_ImageWrapper_ToFfi(Map<String, ImageWrapper> value) {
    final _result = _navigine_sdk_flutter_Map_String_ImageWrapper_CreateHandle();
    for (final entry in value.entries)  {
        final _keyHandle = (entry.key);
        final _valueHandle = navigine_sdk_flutter_ImageWrapper_ToFfi(entry.value);
        _navigine_sdk_flutter_Map_String_ImageWrapper_Put(_result, _keyHandle, _valueHandle);
        navigine_sdk_flutter_ImageWrapper_ReleaseFfiHandle(_valueHandle);
    }
    return _result;
}

Map<String, ImageWrapper> navigine_sdk_flutter_Map_String_ImageWrapper_FromFfi(Pointer<Void> handle) {
    final result = Map<String, ImageWrapper>();
    final _iteratorHandle = _navigine_sdk_flutter_Map_String_ImageWrapper_Iterator(handle);
    while (_navigine_sdk_flutter_Map_String_ImageWrapper_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _keyHandle = _navigine_sdk_flutter_Map_String_ImageWrapper_IteratorGetKey(_iteratorHandle);
        final _valueHandle = _navigine_sdk_flutter_Map_String_ImageWrapper_IteratorGetValue(_iteratorHandle);
        try  {
            result[navigine_sdk_flutter_String_FromFfi(_keyHandle)] = navigine_sdk_flutter_ImageWrapper_FromFfi(_valueHandle);
        }
        finally  {
            navigine_sdk_flutter_ImageWrapper_ReleaseFfiHandle(_keyHandle);navigine_sdk_flutter_ImageWrapper_ReleaseFfiHandle(_valueHandle);}
        _navigine_sdk_flutter_Map_String_ImageWrapper_IteratorIncrement(_iteratorHandle);
    }
    _navigine_sdk_flutter_Map_String_ImageWrapper_IteratorReleaseHandle(_iteratorHandle);
    return result;
}

void navigine_sdk_flutter_Map_String_ImageWrapper_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_Map_String_ImageWrapper_ReleaseHandle(handle);

final _navigine_sdk_flutter_Map_String_ImageWrapper_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_ImageWrapper_create_handle_nullable'));

final _navigine_sdk_flutter_Map_String_ImageWrapper_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_ImageWrapper_release_handle_nullable'));

final _navigine_sdk_flutter_Map_String_ImageWrapper_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_Map_String_ImageWrapper_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_Map_String_ImageWrapper_ToFfiNullable(Map<String, ImageWrapper>? value) {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_Map_String_ImageWrapper_ToFfi(value);
    final result = _navigine_sdk_flutter_Map_String_ImageWrapper_CreateHandleNullable(_handle);
    navigine_sdk_flutter_Map_String_ImageWrapper_ReleaseFfiHandle(_handle);
    return result;
}

Map<String, ImageWrapper>? navigine_sdk_flutter_Map_String_ImageWrapper_FromFfiNullable(Pointer<Void> handle) {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_Map_String_ImageWrapper_GetValueNullable(handle);
    final result = navigine_sdk_flutter_Map_String_ImageWrapper_FromFfi(_handle);
    navigine_sdk_flutter_Map_String_ImageWrapper_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_Map_String_ImageWrapper_ReleaseFfiHandleNullable(Pointer<Void> handle) => _navigine_sdk_flutter_Map_String_ImageWrapper_ReleaseHandleNullable(handle);