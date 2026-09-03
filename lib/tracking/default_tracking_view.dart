import 'package:flutter/material.dart';
import 'package:navigine_sdk/com/navigine/idl/live_data_manager.dart';
import 'package:navigine_sdk/com/navigine/idl/live_objects_layer.dart';
import 'package:navigine_sdk/com/navigine/idl/location_window.dart';
import 'package:navigine_sdk/com/navigine/idl/navigine_sdk.dart';
import 'package:navigine_sdk/com/navigine/idl/object_list_manager.dart';
import 'package:navigine_sdk/com/navigine/idl/tracking_sdk.dart';
import '../default_navigine_view.dart';
import '../default_navigine_view_config.dart';
import '../widgets/zoom_controls_config.dart';
import '../widgets/floor_selector_view_config.dart';

/**
 * @file com/tracking/default_tracking_view.dart
 * @brief @copybrief DefaultTrackingView
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_default_tracking_view
 *
 * @brief Ready-to-use tracking map view with built-in chrome
 * (zoom controls, floor selector) and a [LiveObjectsLayer].
 * Does not include follow-me / user location.
 *
 * Call [bindLiveDataManager] after configuring [LiveDataManager] and
 * [ObjectListManager] (app id + MQTT).
 */
class DefaultTrackingView extends StatefulWidget {
  const DefaultTrackingView({
    Key? key,
    required this.onViewCreated,
    this.viewConfig = DefaultNavigineViewConfig.defaultConfig,
    this.zoomControlsConfig = ZoomControlsConfig.defaultConfig,
    this.floorSelectorConfig = FloorSelectorViewConfig.defaultConfig,
    this.configController,
    this.textDirection,
    this.liveDataManager,
    this.objectListManager,
  }) : super(key: key);

  final void Function(LocationWindow) onViewCreated;
  final DefaultNavigineViewConfig viewConfig;
  final ZoomControlsConfig zoomControlsConfig;
  final FloorSelectorViewConfig floorSelectorConfig;
  final DefaultNavigineViewController? configController;
  final TextDirection? textDirection;

  /// Optional: bind immediately when the location window is ready.
  final LiveDataManager? liveDataManager;
  final ObjectListManager? objectListManager;

  @override
  State<DefaultTrackingView> createState() => DefaultTrackingViewState();
}

class DefaultTrackingViewState extends State<DefaultTrackingView> {
  final GlobalKey<DefaultNavigineViewState> _chromeKey = GlobalKey<DefaultNavigineViewState>();
  LiveObjectsLayer? _liveObjectsLayer;
  LiveDataManager? _pendingLiveDataManager;
  ObjectListManager? _pendingObjectListManager;
  LocationWindow? _locationWindow;

  LiveObjectsLayer? get liveObjectsLayer => _liveObjectsLayer;

  @override
  void initState() {
    super.initState();
    _pendingLiveDataManager = widget.liveDataManager;
    _pendingObjectListManager = widget.objectListManager;
  }

  @override
  void didUpdateWidget(covariant DefaultTrackingView oldWidget) {
    super.didUpdateWidget(oldWidget);
    if ((widget.liveDataManager != oldWidget.liveDataManager ||
            widget.objectListManager != oldWidget.objectListManager) &&
        widget.liveDataManager != null &&
        widget.objectListManager != null) {
      bindLiveDataManager(widget.liveDataManager!, widget.objectListManager!);
    }
  }

  void _handleViewCreated(LocationWindow window) {
    _locationWindow = window;
    if (_pendingLiveDataManager != null && _pendingObjectListManager != null) {
      bindLiveDataManager(_pendingLiveDataManager!, _pendingObjectListManager!);
      _pendingLiveDataManager = null;
      _pendingObjectListManager = null;
    }
    widget.onViewCreated(window);
  }

  /// Creates and retains a [LiveObjectsLayer] for the given managers.
  void bindLiveDataManager(
    LiveDataManager liveDataManager,
    ObjectListManager objectListManager,
  ) {
    final window = _locationWindow ?? _chromeKey.currentState?.locationWindow;
    if (window == null) {
      _pendingLiveDataManager = liveDataManager;
      _pendingObjectListManager = objectListManager;
      return;
    }
    setState(() {
      _liveObjectsLayer = TrackingSdk.getInstance().getLiveObjectsLayer(
        window,
        liveDataManager,
        NavigineSdk.getInstance().getLocationManager(),
        objectListManager,
      );
      _liveObjectsLayer?.setVisible(true);
    });
  }

  @override
  void dispose() {
    _liveObjectsLayer = null;
    _pendingLiveDataManager = null;
    _pendingObjectListManager = null;
    _locationWindow = null;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultNavigineView(
      key: _chromeKey,
      onViewCreated: _handleViewCreated,
      viewConfig: widget.viewConfig,
      zoomControlsConfig: widget.zoomControlsConfig,
      floorSelectorConfig: widget.floorSelectorConfig,
      configController: widget.configController,
      textDirection: widget.textDirection,
    );
  }
}
