part of 'route_layer.dart';

// RouteLayer "private" section, not exported.

final _navigine_sdk_flutter_RouteLayer_check = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Bool Function(Pointer<Void>),
    bool Function(Pointer<Void>)
  >('navigine_sdk_flutter_RouteLayer_check'));

final _navigine_sdk_flutter_RouteLayer_free = __lib.nativeLibrary.lookup<
    NativeFunction<Void Function(Pointer<Void>)>
  >('navigine_sdk_flutter_RouteLayer_free');


class RouteLayer$Impl implements RouteLayer, Finalizable {
    @protected
    final Pointer<Void> ptr;
    static final _finalizer = NativeFinalizer(_navigine_sdk_flutter_RouteLayer_free.cast());

    RouteLayer$Impl.fromExternalPtr(this.ptr);

    @internal
    RouteLayer$Impl.fromNativePtrImpl(this.ptr) {
      _finalizer.attach(this, ptr);
    }

    @internal
    factory RouteLayer$Impl.fromNativePtr(Pointer<Void> ptr) =>
        weak_interface_wrapper.createFromNative(ptr);

    @override
    bool isValid() => _navigine_sdk_flutter_RouteLayer_check(ptr);

    static Pointer<Void> getNativePtr(RouteLayer? obj) {
        if (obj == null) return Pointer<Void>.fromAddress(0);
        return (obj as RouteLayer$Impl).ptr;
    }

    static RouteLayer? fromOptionalPtr(Pointer<Void> ptr) {
        if (ptr.address == 0) return null;
        return RouteLayer$Impl.fromNativePtr(ptr);
    }

    @override
    void setVisible(bool visible) {
        final _setVisibleFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Uint8),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_RouteLayer_setVisible__Visible'));
        _setVisibleFfi(this.ptr, (visible ? 1 : 0));
        exception.checkCallResult();
    }

    @override
    bool isVisible() {
        final _isVisibleFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint8 Function(Pointer<Void>, ),
            int Function(Pointer<Void>, )
          >('navigine_sdk_flutter_RouteLayer_isVisible'));
        final __resultHandle = _isVisibleFfi(this.ptr, );
        final _result = (__resultHandle != 0);
        exception.checkCallResult();
        return _result;
    }

    @override
    void setTarget(RouteEndpoint target) {
        final _setTargetFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, RouteEndpointNative),
            void Function(Pointer<Void>, RouteEndpointNative)
          >('navigine_sdk_flutter_RouteLayer_setTarget__Target'));
        _setTargetFfi(this.ptr, RouteEndpointImpl.toNative(target));
        exception.checkCallResult();
    }

    @override
    void setRoute(RouteEndpoint from, RouteEndpoint to) {
        final _setRouteFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, RouteEndpointNative, RouteEndpointNative),
            void Function(Pointer<Void>, RouteEndpointNative, RouteEndpointNative)
          >('navigine_sdk_flutter_RouteLayer_setRoute__From_To'));
        _setRouteFfi(this.ptr, RouteEndpointImpl.toNative(from), RouteEndpointImpl.toNative(to));
        exception.checkCallResult();
    }

    @override
    void clear() {
        final _clearFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, ),
            void Function(Pointer<Void>, )
          >('navigine_sdk_flutter_RouteLayer_clear'));
        _clearFfi(this.ptr, );
        exception.checkCallResult();
    }

    @override
    List<RouteView> routes() {
        final _routesFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_RouteLayer_routes'));
        final __resultHandle = _routesFfi(this.ptr, );
        final _result = ListRouteViewImpl.fromNativePtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    RouteView? selectedRoute() {
        final _selectedRouteFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Pointer<Void> Function(Pointer<Void>, ),
            Pointer<Void> Function(Pointer<Void>, )
          >('navigine_sdk_flutter_RouteLayer_selectedRoute'));
        final __resultHandle = _selectedRouteFfi(this.ptr, );
        final _result = RouteView$Impl.fromOptionalPtr(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    void selectRoute(RouteView? route) {
        final _selectRouteFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_RouteLayer_selectRoute__Route'));
        _selectRouteFfi(this.ptr, RouteView$Impl.getNativePtr(route));
        exception.checkCallResult();
    }

    @override
    void addRouteLayerListener(RouteLayerListener listener) {
        final _addRouteLayerListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_RouteLayer_addRouteLayerListener__Listener'));
        _addRouteLayerListenerFfi(this.ptr, RouteLayerListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void removeRouteLayerListener(RouteLayerListener listener) {
        final _removeRouteLayerListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_RouteLayer_removeRouteLayerListener__Listener'));
        _removeRouteLayerListenerFfi(this.ptr, RouteLayerListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void addRouteViewListener(RouteViewListener listener) {
        final _addRouteViewListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_RouteLayer_addRouteViewListener__Listener'));
        _addRouteViewListenerFfi(this.ptr, RouteViewListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void removeRouteViewListener(RouteViewListener listener) {
        final _removeRouteViewListenerFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Pointer<Void>),
            void Function(Pointer<Void>, Pointer<Void>)
          >('navigine_sdk_flutter_RouteLayer_removeRouteViewListener__Listener'));
        _removeRouteViewListenerFfi(this.ptr, RouteViewListenerImpl.getNativePtr(listener));
        exception.checkCallResult();
    }

    @override
    void setTraveledColor(Color color) {
        final _setTraveledColorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_RouteLayer_setTraveledColor__Color'));
        _setTraveledColorFfi(this.ptr, color.value);
        exception.checkCallResult();
    }

    @override
    void setRemainingColor(Color color) {
        final _setRemainingColorFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Int32),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_RouteLayer_setRemainingColor__Color'));
        _setRemainingColorFfi(this.ptr, color.value);
        exception.checkCallResult();
    }

    @override
    void setWidth(double width) {
        final _setWidthFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Float),
            void Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_RouteLayer_setWidth__Width'));
        _setWidthFfi(this.ptr, width);
        exception.checkCallResult();
    }

    @override
    void setRemainingStyle(RouteRemainingStyle style) {
        final _setRemainingStyleFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Uint32),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_RouteLayer_setRemainingStyle__Style'));
        _setRemainingStyleFfi(this.ptr, RouteRemainingStyleImpl.toInt(style));
        exception.checkCallResult();
    }

    @override
    RouteRemainingStyle remainingStyle() {
        final _remainingStyleFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Uint32 Function(Pointer<Void>, ),
            int Function(Pointer<Void>, )
          >('navigine_sdk_flutter_RouteLayer_remainingStyle'));
        final __resultHandle = _remainingStyleFfi(this.ptr, );
        final _result = RouteRemainingStyleImpl.fromInt(__resultHandle);
        exception.checkCallResult();
        return _result;
    }

    @override
    void setRemainingDashLength(double dashLength) {
        final _setRemainingDashLengthFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Float),
            void Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_RouteLayer_setRemainingDashLength__DashLength'));
        _setRemainingDashLengthFfi(this.ptr, dashLength);
        exception.checkCallResult();
    }

    @override
    void setRemainingGapLength(double gapLength) {
        final _setRemainingGapLengthFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Float),
            void Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_RouteLayer_setRemainingGapLength__GapLength'));
        _setRemainingGapLengthFfi(this.ptr, gapLength);
        exception.checkCallResult();
    }

    @override
    void setRemainingPointSize(double width, double height) {
        final _setRemainingPointSizeFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Float, Float),
            void Function(Pointer<Void>, double, double)
          >('navigine_sdk_flutter_RouteLayer_setRemainingPointSize__Width_Height'));
        _setRemainingPointSizeFfi(this.ptr, width, height);
        exception.checkCallResult();
    }

    @override
    void setRemainingPlacement(Placement placement) {
        final _setRemainingPlacementFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Uint32),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_RouteLayer_setRemainingPlacement__Placement'));
        _setRemainingPlacementFfi(this.ptr, PlacementImpl.toInt(placement));
        exception.checkCallResult();
    }

    @override
    void setRemainingPlacementSpacing(double spacing) {
        final _setRemainingPlacementSpacingFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Float),
            void Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_RouteLayer_setRemainingPlacementSpacing__Spacing'));
        _setRemainingPlacementSpacingFfi(this.ptr, spacing);
        exception.checkCallResult();
    }

    @override
    void setRemainingPlacementMinRatio(double ratio) {
        final _setRemainingPlacementMinRatioFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Float),
            void Function(Pointer<Void>, double)
          >('navigine_sdk_flutter_RouteLayer_setRemainingPlacementMinRatio__Ratio'));
        _setRemainingPlacementMinRatioFfi(this.ptr, ratio);
        exception.checkCallResult();
    }

    @override
    void setRemainingCollisionEnabled(bool enabled) {
        final _setRemainingCollisionEnabledFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
            Void Function(Pointer<Void>, Uint8),
            void Function(Pointer<Void>, int)
          >('navigine_sdk_flutter_RouteLayer_setRemainingCollisionEnabled__Enabled'));
        _setRemainingCollisionEnabledFfi(this.ptr, (enabled ? 1 : 0));
        exception.checkCallResult();
    }




}

// End of RouteLayer "private" section.
