import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'widgets/zoom_controls_config.dart';
import 'widgets/follow_me_button_config.dart';
import 'widgets/floor_selector_view_config.dart';

/**
 * @file com/default_navigation_view_config.dart
 * @brief Configuration and controller for DefaultNavigationView
 */

/// Visibility flags for built-in widgets.
class NavigationWidgetVisibility {
  static const int zoomControls = 1 << 0;
  static const int followMeButton = 1 << 1;
  static const int floorSelector = 1 << 2;
  static const int all = 0x7;
}

/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_default_navigation_view
 *
 * @brief Configuration for DefaultNavigationView.
 * Controls visibility of built-in widgets.
 *
 * @snippet DefaultNavigationView/dart/default_navigation_view_example.dart dart_DefaultNavigationView_config
 */
class DefaultNavigationViewConfig {
  const DefaultNavigationViewConfig({
    this.visibleWidgets = NavigationWidgetVisibility.all,
  });

  final int visibleWidgets;

  static const DefaultNavigationViewConfig defaultConfig = DefaultNavigationViewConfig();
}

/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_default_navigation_view
 *
 * @brief Controller for runtime config updates.
 * When configs change and [notifyListeners] is called, [DefaultNavigationView] rebuilds.
 * Widget configs are passed directly to each widget.
 *
 * @snippet DefaultNavigationView/dart/default_navigation_view_example.dart dart_DefaultNavigationView_runtimeConfig
 */
class DefaultNavigationViewController extends ChangeNotifier {
  DefaultNavigationViewController({
    DefaultNavigationViewConfig? viewConfig,
    ZoomControlsConfig? zoomConfig,
    FollowMeButtonConfig? followMeConfig,
    FloorSelectorViewConfig? floorConfig,
  })  : _viewConfig = viewConfig ?? DefaultNavigationViewConfig.defaultConfig,
        _zoomControlsConfig = zoomConfig ?? ZoomControlsConfig.defaultConfig,
        _followMeButtonConfig = followMeConfig ?? FollowMeButtonConfig.defaultConfig,
        _floorSelectorConfig = floorConfig ?? FloorSelectorViewConfig.defaultConfig;

  DefaultNavigationViewConfig _viewConfig;
  ZoomControlsConfig _zoomControlsConfig;
  FollowMeButtonConfig _followMeButtonConfig;
  FloorSelectorViewConfig _floorSelectorConfig;

  DefaultNavigationViewConfig get viewConfig => _viewConfig;
  ZoomControlsConfig get zoomControlsConfig => _zoomControlsConfig;
  FollowMeButtonConfig get followMeButtonConfig => _followMeButtonConfig;
  FloorSelectorViewConfig get floorSelectorConfig => _floorSelectorConfig;

  /// Updates configs at runtime. null params keep current config.
  void updateConfig({
    DefaultNavigationViewConfig? viewConfig,
    ZoomControlsConfig? zoomConfig,
    FollowMeButtonConfig? followMeConfig,
    FloorSelectorViewConfig? floorConfig,
  }) {
    if (viewConfig != null) _viewConfig = viewConfig;
    if (zoomConfig != null) _zoomControlsConfig = zoomConfig;
    if (followMeConfig != null) _followMeButtonConfig = followMeConfig;
    if (floorConfig != null) _floorSelectorConfig = floorConfig;
    notifyListeners();
  }
}
