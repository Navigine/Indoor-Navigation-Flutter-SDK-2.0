import 'package:flutter/material.dart';
import 'package:navigine_sdk/com/navigine/idl/building.dart';
import 'package:navigine_sdk/com/navigine/idl/building_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/location_window.dart';
import 'package:navigine_sdk/com/navigine/idl/sublocation_change_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/navigine_sdk.dart';
import 'package:navigine_sdk/com/navigine/idl/user_location_layer.dart';
import 'package:navigine_sdk/com/navigine/idl/camera_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/camera_update_reason.dart';
import 'package:navigine_sdk/location_view.dart';
import 'dart:math' as math;
import 'default_navigation_view_config.dart';
import 'widgets/zoom_controls.dart';
import 'widgets/zoom_controls_config.dart';
import 'widgets/floor_selector_view.dart';
import 'widgets/floor_selector_view_config.dart';
import 'widgets/follow_me_button.dart';
import 'widgets/follow_me_button_config.dart';

/**
 * @file com/default_navigation_view.dart
 * @brief @copybrief DefaultNavigationView
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_default_navigation_view
 *
 * @brief Ready-to-use navigation view with built-in UI:
 * @ref ZoomControls "zoom controls", @ref FloorSelectorView "floor selector", @ref FollowMeButton "follow me" toggle and user location layer.
 * Automatically wires SDK listeners (building focus, sublocation, camera) and keeps widgets in sync.
 * Widget configs are passed directly to each widget.
 *
 * `onViewCreated` provides direct access to the underlying @ref LocationWindow "LocationWindow".
 *
 * Basic usage with default config:
 * @snippet DefaultNavigationView/dart/default_navigation_view_example.dart dart_DefaultNavigationView_constructor
 *
 * Custom config at init (visibility, widget configs passed directly):
 * @snippet DefaultNavigationView/dart/default_navigation_view_example.dart dart_DefaultNavigationView_config
 *
 * Runtime config update via @ref DefaultNavigationViewController "DefaultNavigationViewController":
 * @snippet DefaultNavigationView/dart/default_navigation_view_example.dart dart_DefaultNavigationView_runtimeConfig
 *
 * Direct widget access for advanced customization:
 * @snippet DefaultNavigationView/dart/default_navigation_view_example.dart dart_DefaultNavigationView_widgetAccess
 *
 */
class DefaultNavigationView extends StatefulWidget {
  const DefaultNavigationView({
    Key? key,
    required this.onViewCreated,
    this.viewConfig = DefaultNavigationViewConfig.defaultConfig,
    this.zoomControlsConfig = ZoomControlsConfig.defaultConfig,
    this.followMeButtonConfig = FollowMeButtonConfig.defaultConfig,
    this.floorSelectorConfig = FloorSelectorViewConfig.defaultConfig,
    this.configController,
    this.textDirection,
  }) : super(key: key);

  final void Function(LocationWindow) onViewCreated;
  final DefaultNavigationViewConfig viewConfig;
  final ZoomControlsConfig zoomControlsConfig;
  final FollowMeButtonConfig followMeButtonConfig;
  final FloorSelectorViewConfig floorSelectorConfig;
  final DefaultNavigationViewController? configController;
  final TextDirection? textDirection;

  @override
  State<DefaultNavigationView> createState() => _DefaultNavigationViewState();
}

class _DefaultNavigationViewState extends State<DefaultNavigationView>
    implements BuildingListener, SublocationChangeListener, CameraListener {
  LocationWindow? _locationWindow;
  UserLocationLayer? _userLocationLayer;
  final GlobalKey<FloorSelectorViewState> _floorSelectorKey = GlobalKey<FloorSelectorViewState>();
  bool _isFollowing = false;
  /// When false, floor selector is hidden (outdoor / no building bbox focus).
  bool _floorSelectorVisibleForBuildingFocus = false;

  @override
  void dispose() {
    _locationWindow?.removeBuildingListener(this);
    _locationWindow?.removeSublocationChangeListener(this);
    _locationWindow?.removeCameraListener(this);
    super.dispose();
  }

  void _handleViewCreated(LocationWindow window) {
    setState(() {
      _locationWindow = window;
    });
    window.addSublocationChangeListener(this);
    window.addCameraListener(this);
    window.addBuildingListener(this);
    _userLocationLayer = NavigineSdk.getInstance().getUserLocationLayer(window);
    _userLocationLayer!.setVisible(true);
    widget.onViewCreated(window);
  }

  Widget _buildContent(
    DefaultNavigationViewConfig viewConfig,
    ZoomControlsConfig zoomConfig,
    FollowMeButtonConfig followMeConfig,
    FloorSelectorViewConfig floorConfig,
  ) {
    final children = <Widget>[
      LocationView(
        onViewCreated: _handleViewCreated,
        textDirection: widget.textDirection,
      ),
    ];
    if ((viewConfig.visibleWidgets & NavigationWidgetVisibility.zoomControls) != 0) {
      children.add(ZoomControls(
        zoomInPressed: () {
          if (_locationWindow == null) return;
          _locationWindow!.zoomFactor = _locationWindow!.zoomFactor * (3.0 / 2.0);
        },
        zoomOutPressed: () {
          if (_locationWindow == null) return;
          _locationWindow!.zoomFactor = _locationWindow!.zoomFactor * (2.0 / 3.0);
        },
        config: zoomConfig,
      ));
    }
    children.add(Visibility(
      visible: (viewConfig.visibleWidgets & NavigationWidgetVisibility.floorSelector) != 0
          && _floorSelectorVisibleForBuildingFocus,
      maintainState: true,
      child: FloorSelectorView(
        key: _floorSelectorKey,
        onFloorSelected: (id, name) => _locationWindow?.setSublocationId(id),
        config: floorConfig,
      ),
    ));
    if ((viewConfig.visibleWidgets & NavigationWidgetVisibility.followMeButton) != 0) {
      children.add(FollowMeButton(
        isFollowing: _isFollowing,
        onPressed: _handleFollowMePressed,
        config: followMeConfig,
      ));
    }
    return Stack(children: children);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.configController != null) {
      return ListenableBuilder(
        listenable: widget.configController!,
        builder: (context, _) => _buildContent(
          widget.configController!.viewConfig,
          widget.configController!.zoomControlsConfig,
          widget.configController!.followMeButtonConfig,
          widget.configController!.floorSelectorConfig,
        ),
      );
    }
    return _buildContent(
      widget.viewConfig,
      widget.zoomControlsConfig,
      widget.followMeButtonConfig,
      widget.floorSelectorConfig,
    );
  }

  void _handleFollowMePressed() {
    if (!mounted || _userLocationLayer == null) return;

    if (!_isFollowing) {
      final screenSize = MediaQuery.of(context).size;
      final devicePixelRatio = MediaQuery.of(context).devicePixelRatio;
      _userLocationLayer!.setAnchor(math.Point<double>(
        screenSize.width * devicePixelRatio / 2,
        screenSize.height * devicePixelRatio / 2,
      ));
    } else {
      _userLocationLayer!.resetAnchor();
    }
    setState(() {
      _isFollowing = !_isFollowing;
    });
  }

  @override
  void onActiveBuildingFocused(Building activeBuilding) {
    final floors = <LevelInfo>[];
    for (final s in activeBuilding.sublocations) {
      floors.add(LevelInfo(levelId: s.levelId, sublocationId: s.id));
    }
    setState(() {
      _floorSelectorVisibleForBuildingFocus = true;
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final selector = _floorSelectorKey.currentState;
      selector?.setFloors(floors);
      selector?.setSublocationId(activeBuilding.getActiveSublocationId());
    });
  }

  @override
  void onActiveBuildingLeft() {
    setState(() {
      _floorSelectorVisibleForBuildingFocus = false;
    });
    _floorSelectorKey.currentState?.setFloors([]);
  }

  @override
  void onActiveSublocationChanged(int sublocationId) {
    _floorSelectorKey.currentState?.setSublocationId(sublocationId);
  }

  @override
  void onCameraPositionChanged(CameraUpdateReason reason, bool finished) {
    if (reason == CameraUpdateReason.APPLICATION) {
      return;
    }

    if (_isFollowing && _userLocationLayer != null) {
      _userLocationLayer!.resetAnchor();
      setState(() {
        _isFollowing = false;
      });
    }
  }
}
