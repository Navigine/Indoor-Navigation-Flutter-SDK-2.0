part of 'location_window.dart';

// LocationWindow "private" section, not exported.

final _navigine_sdk_flutter_LocationWindow_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_LocationWindow_check'));

final _navigine_sdk_flutter_LocationWindow_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_LocationWindow_free');


class LocationWindow$Impl implements LocationWindow, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_LocationWindow_free.cast());

    LocationWindow$Impl.fromExternalPtr(this.ptr);

    @internal
    LocationWindow$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory LocationWindow$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_LocationWindow_check(ptr);

    static Pointer<Void> getNativePtr(LocationWindow? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as LocationWindow$Impl).ptr;
    }

    static LocationWindow? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return LocationWindow$Impl.fromNativePtr(ptr);
    }

    @override
    void setSublocationId(int id) {
        final _setSublocationIdFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_LocationWindow_setSublocationId__Id'));
        _setSublocationIdFfi(this.ptr, id);
        exception.checkCallResult();
    }

    @override
    int? getSublocationId() {
        final _getSublocationIdFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationWindow_getSublocationId'));
        final __resultHandle = _getSublocationIdFfi(this.ptr, );
        final _result = toPlatformFromPointerInt32(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    Camera getEnclosingCamera(BoundingBox boundingBox) {
        final _getEnclosingCameraFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            CameraNative Function(Pointer<Void>, BoundingBoxNative),
            CameraNative Function(Pointer<Void>, BoundingBoxNative)
          >('navigine_sdk_flutter_LocationWindow_getEnclosingCamera__BoundingBox'));
        final __resultHandle = _getEnclosingCameraFfi(this.ptr, BoundingBoxImpl.toNative(boundingBox));
        final _result = CameraImpl.fromNative(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    Point screenPositionToMeters(math.Point<double> point) {
        final _screenPositionToMetersFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            PointNative Function(Pointer<Void>, ScreenPointNative),
            PointNative Function(Pointer<Void>, ScreenPointNative)
          >('navigine_sdk_flutter_LocationWindow_screenPositionToMeters__Point'));
        final __resultHandle = _screenPositionToMetersFfi(this.ptr, ScreenPointImpl.toNative(point));
        final _result = PointImpl.fromNative(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    math.Point<double> metersToScreenPosition(Point point, bool clipToViewport) {
        final _metersToScreenPositionFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            ScreenPointNative Function(Pointer<Void>, PointNative, Uint8),
            ScreenPointNative Function(Pointer<Void>, PointNative, int)
          >('navigine_sdk_flutter_LocationWindow_metersToScreenPosition__Point_ClipToViewport'));
        final __resultHandle = _metersToScreenPositionFfi(this.ptr, PointImpl.toNative(point), (clipToViewport ? 1 : 0));
        final _result = ScreenPointImpl.fromNative(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    CircleMapObject addCircleMapObject() {
        final _addCircleMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationWindow_addCircleMapObject'));
        final __resultHandle = _addCircleMapObjectFfi(this.ptr, );
        final _result = CircleMapObject$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool removeCircleMapObject(CircleMapObject circleMapObject) {
        final _removeCircleMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_removeCircleMapObject__CircleMapObject'));
        final __resultHandle = _removeCircleMapObjectFfi(this.ptr, CircleMapObject$Impl.getNativePtr(circleMapObject));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    IconMapObject addIconMapObject() {
        final _addIconMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationWindow_addIconMapObject'));
        final __resultHandle = _addIconMapObjectFfi(this.ptr, );
        final _result = IconMapObject$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool removeIconMapObject(IconMapObject iconMapObject) {
        final _removeIconMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_removeIconMapObject__IconMapObject'));
        final __resultHandle = _removeIconMapObjectFfi(this.ptr, IconMapObject$Impl.getNativePtr(iconMapObject));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    ClusterMapObjectController addClusterMapObjectController() {
        final _addClusterMapObjectControllerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationWindow_addClusterMapObjectController'));
        final __resultHandle = _addClusterMapObjectControllerFfi(this.ptr, );
        final _result = ClusterMapObjectController$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool removeClusterMapObjectController(ClusterMapObjectController controller) {
        final _removeClusterMapObjectControllerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_removeClusterMapObjectController__Controller'));
        final __resultHandle = _removeClusterMapObjectControllerFfi(this.ptr, ClusterMapObjectController$Impl.getNativePtr(controller));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    PolygonMapObject addPolygonMapObject() {
        final _addPolygonMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationWindow_addPolygonMapObject'));
        final __resultHandle = _addPolygonMapObjectFfi(this.ptr, );
        final _result = PolygonMapObject$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool removePolygonMapObject(PolygonMapObject polygonMapObject) {
        final _removePolygonMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_removePolygonMapObject__PolygonMapObject'));
        final __resultHandle = _removePolygonMapObjectFfi(this.ptr, PolygonMapObject$Impl.getNativePtr(polygonMapObject));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    PolylineMapObject addPolylineMapObject() {
        final _addPolylineMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationWindow_addPolylineMapObject'));
        final __resultHandle = _addPolylineMapObjectFfi(this.ptr, );
        final _result = PolylineMapObject$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool removePolylineMapObject(PolylineMapObject polylineMapObject) {
        final _removePolylineMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_removePolylineMapObject__PolylineMapObject'));
        final __resultHandle = _removePolylineMapObjectFfi(this.ptr, PolylineMapObject$Impl.getNativePtr(polylineMapObject));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    DottedPolylineMapObject addDottedPolylineMapObject() {
        final _addDottedPolylineMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationWindow_addDottedPolylineMapObject'));
        final __resultHandle = _addDottedPolylineMapObjectFfi(this.ptr, );
        final _result = DottedPolylineMapObject$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool removeDottedPolylineMapObject(DottedPolylineMapObject dottedPolylineMapObject) {
        final _removeDottedPolylineMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_removeDottedPolylineMapObject__DottedPolylineMapObject'));
        final __resultHandle = _removeDottedPolylineMapObjectFfi(this.ptr, DottedPolylineMapObject$Impl.getNativePtr(dottedPolylineMapObject));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    ModelMapObject addModelMapObject() {
        final _addModelMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationWindow_addModelMapObject'));
        final __resultHandle = _addModelMapObjectFfi(this.ptr, );
        final _result = ModelMapObject$Impl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool removeModelMapObject(ModelMapObject modelMapObject) {
        final _removeModelMapObjectFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, Pointer<Void>),
            int Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_removeModelMapObject__ModelMapObject'));
        final __resultHandle = _removeModelMapObjectFfi(this.ptr, ModelMapObject$Impl.getNativePtr(modelMapObject));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    void removeAllMapObjects() {
        final _removeAllMapObjectsFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationWindow_removeAllMapObjects'));
        _removeAllMapObjectsFfi(this.ptr, );
        exception.checkCallResult();
    }

    @override
    void pickMapObjectAt(math.Point<double> point) {
        final _pickMapObjectAtFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ScreenPointNative),
            void Function(Pointer<Void>, ScreenPointNative)
          >('navigine_sdk_flutter_LocationWindow_pickMapObjectAt__Point'));
        _pickMapObjectAtFfi(this.ptr, ScreenPointImpl.toNative(point));
        exception.checkCallResult();
    }

    @override
    void pickMapFeatureAt(math.Point<double> point) {
        final _pickMapFeatureAtFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ScreenPointNative),
            void Function(Pointer<Void>, ScreenPointNative)
          >('navigine_sdk_flutter_LocationWindow_pickMapFeatureAt__Point'));
        _pickMapFeatureAtFfi(this.ptr, ScreenPointImpl.toNative(point));
        exception.checkCallResult();
    }

    @override
    void addPickListener(PickListener listener) {
        final _addPickListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_addPickListener__Listener'));
        _addPickListenerFfi(this.ptr, PickListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void removePickListener(PickListener listener) {
        final _removePickListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_removePickListener__Listener'));
        _removePickListenerFfi(this.ptr, PickListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void addInputListener(InputListener listener) {
        final _addInputListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_addInputListener__Listener'));
        _addInputListenerFfi(this.ptr, InputListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void removeInputListener(InputListener listener) {
        final _removeInputListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_removeInputListener__Listener'));
        _removeInputListenerFfi(this.ptr, InputListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void addCameraListener(CameraListener listener) {
        final _addCameraListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_addCameraListener__Listener'));
        _addCameraListenerFfi(this.ptr, CameraListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void removeCameraListener(CameraListener listener) {
        final _removeCameraListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_removeCameraListener__Listener'));
        _removeCameraListenerFfi(this.ptr, CameraListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void addSublocationChangeListener(SublocationChangeListener listener) {
        final _addSublocationChangeListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_addSublocationChangeListener__Listener'));
        _addSublocationChangeListenerFfi(this.ptr, SublocationChangeListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void removeSublocationChangeListener(SublocationChangeListener listener) {
        final _removeSublocationChangeListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_removeSublocationChangeListener__Listener'));
        _removeSublocationChangeListenerFfi(this.ptr, SublocationChangeListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void addBuildingListener(BuildingListener listener) {
        final _addBuildingListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_addBuildingListener__Listener'));
        _addBuildingListenerFfi(this.ptr, BuildingListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void removeBuildingListener(BuildingListener listener) {
        final _removeBuildingListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_removeBuildingListener__Listener'));
        _removeBuildingListenerFfi(this.ptr, BuildingListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void flyTo(Camera camera, int duration, CameraCallback callback) {
        final _flyToFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, CameraNative, Int32, Pointer<Void>),
            void Function(Pointer<Void>, CameraNative, int, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_flyTo__Camera_Duration_Callback'));
        _flyToFfi(this.ptr, CameraImpl.toNative(camera), duration, CameraCallbackImpl.getNativePtr(callback));
        exception.checkCallResult();
    }

    @override
    void moveTo(Camera camera, int duration, AnimationType animationType, CameraCallback callback) {
        final _moveToFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, CameraNative, Int32, Uint32, Pointer<Void>),
            void Function(Pointer<Void>, CameraNative, int, int, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_moveTo__Camera_Duration_AnimationType_Callback'));
        _moveToFfi(this.ptr, CameraImpl.toNative(camera), duration, AnimationTypeImpl.toInt(animationType), CameraCallbackImpl.getNativePtr(callback));
        exception.checkCallResult();
    }

    @override
    bool selectMapFeature(String featureId) {
        final _selectMapFeatureFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, NativeString),
            int Function(Pointer<Void>, NativeString)
          >('navigine_sdk_flutter_LocationWindow_selectMapFeature__FeatureId'));
        final __resultHandle = _selectMapFeatureFfi(this.ptr, toNativeString(featureId));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    bool deselectMapFeature(String featureId) {
        final _deselectMapFeatureFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, NativeString),
            int Function(Pointer<Void>, NativeString)
          >('navigine_sdk_flutter_LocationWindow_deselectMapFeature__FeatureId'));
        final __resultHandle = _deselectMapFeatureFfi(this.ptr, toNativeString(featureId));
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    void deselectAllMapFeatures() {
        final _deselectAllMapFeaturesFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_LocationWindow_deselectAllMapFeatures'));
        _deselectAllMapFeaturesFfi(this.ptr, );
        exception.checkCallResult();
    }

    @override
    void applyLayerFilter(String layer, List<MapFilterCondition> conditions) {
        final _applyLayerFilterFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, NativeString, Pointer<Void>),
            void Function(Pointer<Void>, NativeString, Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_applyLayerFilter__Layer_Conditions'));
        _applyLayerFilterFfi(this.ptr, toNativeString(layer), ListMapFilterConditionImpl.getNativePtr(conditions));
        exception.checkCallResult();
    }

    void setDebugFlag(DebugFlag flag, bool on) {
        final _setDebugFlagFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Uint32, Uint8),
            void Function(int, int)
          >('navigine_sdk_flutter_LocationWindow_setDebugFlag__Flag_On'));
        _setDebugFlagFfi(DebugFlagImpl.toInt(flag), (on ? 1 : 0));
    }
    bool getDebugFlag(DebugFlag flag) {
        final _getDebugFlagFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Uint32),
            int Function(int)
          >('navigine_sdk_flutter_LocationWindow_getDebugFlag__Flag'));
        final __resultHandle = _getDebugFlagFfi(DebugFlagImpl.toInt(flag));
        final _result = (__resultHandle != 0);
        return _result;
    }

    double get zoomFactor {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>),
            double Function(Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_zoomFactor_get'));

        final _zoomFactorHandle = _getFfi(this.ptr);
        final _result = _zoomFactorHandle;
        exception.checkCallResult();
        return _result;
    }

    set zoomFactor(double zoomFactor) {
        final _setFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Float),
            void Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_LocationWindow_zoomFactor_set'));
        _setFfi(this.ptr, zoomFactor);
        exception.checkCallResult();
    }

    double get minZoomFactor {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>),
            double Function(Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_minZoomFactor_get'));

        final _minZoomFactorHandle = _getFfi(this.ptr);
        final _result = _minZoomFactorHandle;
        exception.checkCallResult();
        return _result;
    }

    set minZoomFactor(double minZoomFactor) {
        final _setFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Float),
            void Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_LocationWindow_minZoomFactor_set'));
        _setFfi(this.ptr, minZoomFactor);
        exception.checkCallResult();
    }

    double get maxZoomFactor {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>),
            double Function(Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_maxZoomFactor_get'));

        final _maxZoomFactorHandle = _getFfi(this.ptr);
        final _result = _maxZoomFactorHandle;
        exception.checkCallResult();
        return _result;
    }

    set maxZoomFactor(double maxZoomFactor) {
        final _setFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Float),
            void Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_LocationWindow_maxZoomFactor_set'));
        _setFfi(this.ptr, maxZoomFactor);
        exception.checkCallResult();
    }

    bool get stickToBorder {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_stickToBorder_get'));

        final _stickToBorderHandle = _getFfi(this.ptr);
        final _result = (_stickToBorderHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    set stickToBorder(bool stickToBorder) {
        final _setFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Uint8),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_LocationWindow_stickToBorder_set'));
        _setFfi(this.ptr, (stickToBorder ? 1 : 0));
        exception.checkCallResult();
    }

    Camera get camera {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            CameraNative Function(Pointer<Void>),
            CameraNative Function(Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_camera_get'));

        final _cameraHandle = _getFfi(this.ptr);
        final _result = CameraImpl.fromNative(_cameraHandle);
        exception.checkCallResult();
        return _result;
    }

    set camera(Camera camera) {
        final _setFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, CameraNative),
            void Function(Pointer<Void>, CameraNative)
          >('navigine_sdk_flutter_LocationWindow_camera_set'));
        _setFfi(this.ptr, CameraImpl.toNative(camera));
        exception.checkCallResult();
    }

    bool get rotateGestureEnabled {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_rotateGestureEnabled_get'));

        final _rotateGestureEnabledHandle = _getFfi(this.ptr);
        final _result = (_rotateGestureEnabledHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    set rotateGestureEnabled(bool rotateGestureEnabled) {
        final _setFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Uint8),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_LocationWindow_rotateGestureEnabled_set'));
        _setFfi(this.ptr, (rotateGestureEnabled ? 1 : 0));
        exception.checkCallResult();
    }

    bool get tiltGesturesEnabled {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_tiltGesturesEnabled_get'));

        final _tiltGesturesEnabledHandle = _getFfi(this.ptr);
        final _result = (_tiltGesturesEnabledHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    set tiltGesturesEnabled(bool tiltGesturesEnabled) {
        final _setFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Uint8),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_LocationWindow_tiltGesturesEnabled_set'));
        _setFfi(this.ptr, (tiltGesturesEnabled ? 1 : 0));
        exception.checkCallResult();
    }

    bool get scrollGesturesEnabled {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_scrollGesturesEnabled_get'));

        final _scrollGesturesEnabledHandle = _getFfi(this.ptr);
        final _result = (_scrollGesturesEnabledHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    set scrollGesturesEnabled(bool scrollGesturesEnabled) {
        final _setFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Uint8),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_LocationWindow_scrollGesturesEnabled_set'));
        _setFfi(this.ptr, (scrollGesturesEnabled ? 1 : 0));
        exception.checkCallResult();
    }

    bool get zoomGesturesEnabled {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>),
            int Function(Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_zoomGesturesEnabled_get'));

        final _zoomGesturesEnabledHandle = _getFfi(this.ptr);
        final _result = (_zoomGesturesEnabledHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    set zoomGesturesEnabled(bool zoomGesturesEnabled) {
        final _setFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Uint8),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_LocationWindow_zoomGesturesEnabled_set'));
        _setFfi(this.ptr, (zoomGesturesEnabled ? 1 : 0));
        exception.checkCallResult();
    }

    double get pickRadius {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Float Function(Pointer<Void>),
            double Function(Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_pickRadius_get'));

        final _pickRadiusHandle = _getFfi(this.ptr);
        final _result = _pickRadiusHandle;
        exception.checkCallResult();
        return _result;
    }

    set pickRadius(double pickRadius) {
        final _setFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Float),
            void Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_LocationWindow_pickRadius_set'));
        _setFfi(this.ptr, pickRadius);
        exception.checkCallResult();
    }

    List<String> get selectedMapFeatures {
        final _getFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>),
            Pointer<Void> Function(Pointer<Void>)
          >('navigine_sdk_flutter_LocationWindow_selectedMapFeatures_get'));

        final _selectedMapFeaturesHandle = _getFfi(this.ptr);
        final _result = ListStringImpl.fromNativePtr(_selectedMapFeaturesHandle);
        exception.checkCallResult();
        return _result;
    }




}

// End of LocationWindow "private" section.
