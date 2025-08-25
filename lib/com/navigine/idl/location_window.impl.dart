part of 'location_window.dart';

// LocationWindow "private" section, not exported.

final _navigine_sdk_flutter_LocationWindow_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationWindow_copy_handle'));

final _navigine_sdk_flutter_LocationWindow_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationWindow_release_handle'));

final _navigine_sdk_flutter_LocationWindow_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_LocationWindow_free');


class LocationWindow$Impl extends __lib.NativeBase implements LocationWindow, Finalizable {
    LocationWindow$Impl(Pointer<Void> handle) : super(handle);
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_LocationWindow_free.cast());

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
        final _result = navigine_sdk_flutter_Point_FromFfi(__resultHandle);
        navigine_sdk_flutter_Point_ReleaseFfiHandle(__resultHandle);
        return _result;
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
        final _result = navigine_sdk_flutter_math_Point_double_FromFfi(__resultHandle);
        navigine_sdk_flutter_math_Point_double_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    CircleMapObject addCircleMapObject() {
        final _addCircleMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationWindow_addCircleMapObject'));
        final _handle = this.handle;
        final __resultHandle = _addCircleMapObjectFfi(_handle, );
        final _result = navigine_sdk_flutter_CircleMapObject_FromFfi(__resultHandle);
        navigine_sdk_flutter_CircleMapObject_ReleaseFfiHandle(__resultHandle);
        return _result;
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
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    IconMapObject addIconMapObject() {
        final _addIconMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationWindow_addIconMapObject'));
        final _handle = this.handle;
        final __resultHandle = _addIconMapObjectFfi(_handle, );
        final _result = navigine_sdk_flutter_IconMapObject_FromFfi(__resultHandle);
        navigine_sdk_flutter_IconMapObject_ReleaseFfiHandle(__resultHandle);
        return _result;
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
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    PolygonMapObject addPolygonMapObject() {
        final _addPolygonMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationWindow_addPolygonMapObject'));
        final _handle = this.handle;
        final __resultHandle = _addPolygonMapObjectFfi(_handle, );
        final _result = navigine_sdk_flutter_PolygonMapObject_FromFfi(__resultHandle);
        navigine_sdk_flutter_PolygonMapObject_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool removePolygonMapObject(PolygonMapObject polygonMapObject) {
        final _removePolygonMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_removePolygonMapObject__PolygonMapObject'));
        final _polygonMapObjectHandle = navigine_sdk_flutter_PolygonMapObject_ToFfi(polygonMapObject);
        final _handle = this.handle;
        final __resultHandle = _removePolygonMapObjectFfi(_handle, _polygonMapObjectHandle);
        navigine_sdk_flutter_PolygonMapObject_ReleaseFfiHandle(_polygonMapObjectHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    PolylineMapObject addPolylineMapObject() {
        final _addPolylineMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationWindow_addPolylineMapObject'));
        final _handle = this.handle;
        final __resultHandle = _addPolylineMapObjectFfi(_handle, );
        final _result = navigine_sdk_flutter_PolylineMapObject_FromFfi(__resultHandle);
        navigine_sdk_flutter_PolylineMapObject_ReleaseFfiHandle(__resultHandle);
        return _result;
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
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    DottedPolylineMapObject addDottedPolylineMapObject() {
        final _addDottedPolylineMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationWindow_addDottedPolylineMapObject'));
        final _handle = this.handle;
        final __resultHandle = _addDottedPolylineMapObjectFfi(_handle, );
        final _result = navigine_sdk_flutter_DottedPolylineMapObject_FromFfi(__resultHandle);
        navigine_sdk_flutter_DottedPolylineMapObject_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool removeDottedPolylineMapObject(DottedPolylineMapObject dottedPolylineMapObject) {
        final _removeDottedPolylineMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_removeDottedPolylineMapObject__DottedPolylineMapObject'));
        final _dottedPolylineMapObjectHandle = navigine_sdk_flutter_DottedPolylineMapObject_ToFfi(dottedPolylineMapObject);
        final _handle = this.handle;
        final __resultHandle = _removeDottedPolylineMapObjectFfi(_handle, _dottedPolylineMapObjectHandle);
        navigine_sdk_flutter_DottedPolylineMapObject_ReleaseFfiHandle(_dottedPolylineMapObjectHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
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
    bool selectMapFeature(String featureId) {
        final _selectMapFeatureFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_selectMapFeature__FeatureId'));
        final _featureIdHandle = navigine_sdk_flutter_String_ToFfi(featureId);
        final _handle = this.handle;
        final __resultHandle = _selectMapFeatureFfi(_handle, _featureIdHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_featureIdHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    bool deselectMapFeature(String featureId) {
        final _deselectMapFeatureFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_deselectMapFeature__FeatureId'));
        final _featureIdHandle = navigine_sdk_flutter_String_ToFfi(featureId);
        final _handle = this.handle;
        final __resultHandle = _deselectMapFeatureFfi(_handle, _featureIdHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_featureIdHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    @override
    void deselectAllMapFeatures() {
        final _deselectAllMapFeaturesFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationWindow_deselectAllMapFeatures'));
        final _handle = this.handle;
        _deselectAllMapFeaturesFfi(_handle, );
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

    void setDebugFlag(DebugFlag flag, bool on) {
        final _setDebugFlagFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Uint32, Uint8),
            void Function(int, int)
          >('navigine_sdk_flutter_LocationWindow_setDebugFlag__Flag_On'));
        final _flagHandle = navigine_sdk_flutter_DebugFlag_ToFfi(flag);
        final _onHandle = navigine_sdk_flutter_bool_ToFfi(on);
        _setDebugFlagFfi(_flagHandle, _onHandle);
        navigine_sdk_flutter_DebugFlag_ReleaseFfiHandle(_flagHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(_onHandle);
    }
    bool getDebugFlag(DebugFlag flag) {
        final _getDebugFlagFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Uint32),
            int Function(int)
          >('navigine_sdk_flutter_LocationWindow_getDebugFlag__Flag'));
        final _flagHandle = navigine_sdk_flutter_DebugFlag_ToFfi(flag);
        final __resultHandle = _getDebugFlagFfi(_flagHandle);
        navigine_sdk_flutter_DebugFlag_ReleaseFfiHandle(_flagHandle);
        final _result = navigine_sdk_flutter_bool_FromFfi(__resultHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(__resultHandle);
        return _result;
    }

    double get zoomFactor {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>),
            double Function(Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_zoomFactor_get'));

        final _handle = this.handle;
        final _zoomFactorHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_double_FromFfi(_zoomFactorHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_zoomFactorHandle);
        return _result;
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
        final _result = navigine_sdk_flutter_double_FromFfi(_minZoomFactorHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_minZoomFactorHandle);
        return _result;
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
        final _result = navigine_sdk_flutter_double_FromFfi(_maxZoomFactorHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_maxZoomFactorHandle);
        return _result;
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
        final _result = navigine_sdk_flutter_bool_FromFfi(_stickToBorderHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(_stickToBorderHandle);
        return _result;
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
        final _result = navigine_sdk_flutter_Camera_FromFfi(_cameraHandle);
        navigine_sdk_flutter_Camera_ReleaseFfiHandle(_cameraHandle);
        return _result;
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
        final _result = navigine_sdk_flutter_bool_FromFfi(_rotateGestureEnabledHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(_rotateGestureEnabledHandle);
        return _result;
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
        final _result = navigine_sdk_flutter_bool_FromFfi(_tiltGesturesEnabledHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(_tiltGesturesEnabledHandle);
        return _result;
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
        final _result = navigine_sdk_flutter_bool_FromFfi(_scrollGesturesEnabledHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(_scrollGesturesEnabledHandle);
        return _result;
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
        final _result = navigine_sdk_flutter_bool_FromFfi(_zoomGesturesEnabledHandle);
        navigine_sdk_flutter_bool_ReleaseFfiHandle(_zoomGesturesEnabledHandle);
        return _result;
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
        final _result = navigine_sdk_flutter_double_FromFfi(_pickRadiusHandle);
        navigine_sdk_flutter_double_ReleaseFfiHandle(_pickRadiusHandle);
        return _result;
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

    List<String> get selectedMapFeatures {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_selectedMapFeatures_get'));

        final _handle = this.handle;
        final _selectedMapFeaturesHandle = _getFfi(_handle);
        final _result = navigine_sdk_flutter_List_String_FromFfi(_selectedMapFeaturesHandle);
        navigine_sdk_flutter_List_String_ReleaseFfiHandle(_selectedMapFeaturesHandle);
        return _result;
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
    final _copiedHandle = _navigine_sdk_flutter_LocationWindow_CopyHandle(handle);
    final result = LocationWindow$Impl(_copiedHandle);
    LocationWindow$Impl._finalizer.attach(result, _copiedHandle);
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

final _navigine_sdk_flutter_List_String_CreateHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(),
    Pointer<Void> Function()
  >('navigine_sdk_flutter_List_String_create_handle'));

final _navigine_sdk_flutter_List_String_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_String_release_handle'));

final _navigine_sdk_flutter_List_String_Insert = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>, Pointer<Void>),
    void Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_String_insert'));

final _navigine_sdk_flutter_List_String_Iterator = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_String_iterator'));

final _navigine_sdk_flutter_List_String_IteratorReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_String_iterator_release_handle'));

final _navigine_sdk_flutter_List_String_IteratorIsValid = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Int8 Function(Pointer<Void>, Pointer<Void>),
    int Function(Pointer<Void>, Pointer<Void>)
  >('navigine_sdk_flutter_List_String_iterator_is_valid'));

final _navigine_sdk_flutter_List_String_IteratorIncrement = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_String_iterator_increment'));

final _navigine_sdk_flutter_List_String_IteratorGet = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_String_iterator_get'));

Pointer<Void> navigine_sdk_flutter_List_String_ToFfi(List<String> value)  {
    final _result = _navigine_sdk_flutter_List_String_CreateHandle();
    for (final element in value)  {
        final _elementHandle = navigine_sdk_flutter_String_ToFfi(element);
        _navigine_sdk_flutter_List_String_Insert(_result, _elementHandle);
        navigine_sdk_flutter_String_ReleaseFfiHandle(_elementHandle);
    }
    return _result;
}

List<String> navigine_sdk_flutter_List_String_FromFfi(Pointer<Void> handle)  {
    final result = List<String>.empty(growable: true);
    final _iteratorHandle = _navigine_sdk_flutter_List_String_Iterator(handle);
    while (_navigine_sdk_flutter_List_String_IteratorIsValid(handle, _iteratorHandle) != 0)  {
        final _elementHandle = _navigine_sdk_flutter_List_String_IteratorGet(_iteratorHandle);
        result.add(navigine_sdk_flutter_String_FromFfi(_elementHandle));
        navigine_sdk_flutter_String_ReleaseFfiHandle(_elementHandle);
        _navigine_sdk_flutter_List_String_IteratorIncrement(_iteratorHandle);
    }
    return result;
}

void navigine_sdk_flutter_List_String_ReleaseFfiHandle(Pointer<Void> handle) => _navigine_sdk_flutter_List_String_ReleaseHandle(handle);

final _navigine_sdk_flutter_List_String_CreateHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_String_create_handle_nullable'));

final _navigine_sdk_flutter_List_String_ReleaseHandleNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_String_release_handle_nullable'));

final _navigine_sdk_flutter_List_String_GetValueNullable = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_List_String_get_value_nullable'));

Pointer<Void> navigine_sdk_flutter_List_String_ToFfiNullable(List<String>? value)  {
    if (value == null) return Pointer<Void>.fromAddress(0);
    final _handle = navigine_sdk_flutter_List_String_ToFfi(value);
    final result = _navigine_sdk_flutter_List_String_CreateHandleNullable(_handle);
    navigine_sdk_flutter_List_String_ReleaseFfiHandle(_handle);
    return result;
}

List<String>? navigine_sdk_flutter_List_String_FromFfiNullable(Pointer<Void> handle)  {
    if (handle.address == 0) return null;
    final _handle = _navigine_sdk_flutter_List_String_GetValueNullable(handle);
    final result = navigine_sdk_flutter_List_String_FromFfi(_handle);
    navigine_sdk_flutter_List_String_ReleaseFfiHandle(_handle);
    return result;
}

void navigine_sdk_flutter_List_String_ReleaseFfiHandleNullable(Pointer<Void> handle) =>
  _navigine_sdk_flutter_List_String_ReleaseHandleNullable(handle);
