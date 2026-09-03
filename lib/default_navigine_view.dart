import 'package:flutter/material.dart';
import 'package:navigine_sdk/com/navigine/idl/building.dart';
import 'package:navigine_sdk/com/navigine/idl/building_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/location_window.dart';
import 'package:navigine_sdk/com/navigine/idl/sublocation_change_listener.dart';
import 'package:navigine_sdk/location_view.dart';
import 'default_navigine_view_config.dart';
import 'widgets/zoom_controls.dart';
import 'widgets/zoom_controls_config.dart';
import 'widgets/floor_selector_view.dart';
import 'widgets/floor_selector_view_config.dart';

/**
 * @file com/default_navigine_view.dart
 * @brief @copybrief DefaultNavigineView
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_default_navigine_view
 *
 * @brief Base map view with built-in chrome:
 * @ref ZoomControls "zoom controls" and @ref FloorSelectorView "floor selector".
 * Wires building/sublocation listeners. Subclassed conceptually by
 * [DefaultNavigationView] (follow-me) and [DefaultTrackingView] (live objects).
 */
class DefaultNavigineView extends StatefulWidget {
  const DefaultNavigineView({
    Key? key,
    required this.onViewCreated,
    this.viewConfig = DefaultNavigineViewConfig.defaultConfig,
    this.zoomControlsConfig = ZoomControlsConfig.defaultConfig,
    this.floorSelectorConfig = FloorSelectorViewConfig.defaultConfig,
    this.configController,
    this.textDirection,
    this.extraOverlays = const [],
  }) : super(key: key);

  final void Function(LocationWindow) onViewCreated;
  final DefaultNavigineViewConfig viewConfig;
  final ZoomControlsConfig zoomControlsConfig;
  final FloorSelectorViewConfig floorSelectorConfig;
  final DefaultNavigineViewController? configController;
  final TextDirection? textDirection;

  /// Extra overlay widgets drawn above the map (e.g. follow-me button).
  final List<Widget> extraOverlays;

  @override
  State<DefaultNavigineView> createState() => DefaultNavigineViewState();
}

/// Public state so navigation/tracking wrappers can listen for window readiness.
class DefaultNavigineViewState extends State<DefaultNavigineView>
    implements BuildingListener, SublocationChangeListener {
  LocationWindow? locationWindow;
  final GlobalKey<FloorSelectorViewState> floorSelectorKey = GlobalKey<FloorSelectorViewState>();
  bool floorSelectorVisibleForBuildingFocus = false;

  @override
  void dispose() {
    locationWindow?.removeBuildingListener(this);
    locationWindow?.removeSublocationChangeListener(this);
    super.dispose();
  }

  void handleViewCreated(LocationWindow window) {
    setState(() {
      locationWindow = window;
    });
    window.addSublocationChangeListener(this);
    window.addBuildingListener(this);
    widget.onViewCreated(window);
  }

  Widget buildChromeContent(
    DefaultNavigineViewConfig viewConfig,
    ZoomControlsConfig zoomConfig,
    FloorSelectorViewConfig floorConfig, {
    List<Widget> extraOverlays = const [],
  }) {
    final children = <Widget>[
      LocationView(
        onViewCreated: handleViewCreated,
        textDirection: widget.textDirection,
      ),
    ];
    if ((viewConfig.visibleWidgets & NavigineWidgetVisibility.zoomControls) != 0) {
      children.add(ZoomControls(
        zoomInPressed: () {
          if (locationWindow == null) return;
          locationWindow!.zoomFactor = locationWindow!.zoomFactor * (3.0 / 2.0);
        },
        zoomOutPressed: () {
          if (locationWindow == null) return;
          locationWindow!.zoomFactor = locationWindow!.zoomFactor * (2.0 / 3.0);
        },
        config: zoomConfig,
      ));
    }
    children.add(Visibility(
      visible: (viewConfig.visibleWidgets & NavigineWidgetVisibility.floorSelector) != 0
          && floorSelectorVisibleForBuildingFocus,
      maintainState: true,
      child: FloorSelectorView(
        key: floorSelectorKey,
        onFloorSelected: (id, name) => locationWindow?.setSublocationId(id),
        config: floorConfig,
      ),
    ));
    children.addAll(extraOverlays);
    return Stack(children: children);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.configController != null) {
      return ListenableBuilder(
        listenable: widget.configController!,
        builder: (context, _) => buildChromeContent(
          widget.configController!.viewConfig,
          widget.configController!.zoomControlsConfig,
          widget.configController!.floorSelectorConfig,
          extraOverlays: widget.extraOverlays,
        ),
      );
    }
    return buildChromeContent(
      widget.viewConfig,
      widget.zoomControlsConfig,
      widget.floorSelectorConfig,
      extraOverlays: widget.extraOverlays,
    );
  }

  @override
  void onActiveBuildingFocused(Building activeBuilding) {
    final floors = <LevelInfo>[];
    for (final s in activeBuilding.getSublocations()) {
      floors.add(LevelInfo(levelId: s.levelId, sublocationId: s.id));
    }
    setState(() {
      floorSelectorVisibleForBuildingFocus = true;
    });
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      final selector = floorSelectorKey.currentState;
      selector?.setFloors(floors);
      selector?.setSublocationId(activeBuilding.getActiveSublocationId());
    });
  }

  @override
  void onActiveBuildingLeft() {
    setState(() {
      floorSelectorVisibleForBuildingFocus = false;
    });
    floorSelectorKey.currentState?.setFloors([]);
  }

  @override
  void onActiveSublocationChanged(int sublocationId) {
    floorSelectorKey.currentState?.setSublocationId(sublocationId);
  }
}
