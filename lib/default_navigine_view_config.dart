import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'widgets/zoom_controls_config.dart';
import 'widgets/floor_selector_view_config.dart';

/**
 * @file com/default_navigine_view_config.dart
 * @brief Configuration and controller for DefaultNavigineView (floor + zoom chrome)
 */

/// Visibility flags for DefaultNavigineView built-in widgets.
class NavigineWidgetVisibility {
  static const int zoomControls = 1 << 0;
  static const int floorSelector = 1 << 2;
  static const int all = zoomControls | floorSelector;
}

/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_default_navigine_view
 *
 * @brief Configuration for DefaultNavigineView.
 * Controls visibility of zoom controls and floor selector.
 */
class DefaultNavigineViewConfig {
  const DefaultNavigineViewConfig({
    this.visibleWidgets = NavigineWidgetVisibility.all,
  });

  final int visibleWidgets;

  static const DefaultNavigineViewConfig defaultConfig = DefaultNavigineViewConfig();
}

/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_default_navigine_view
 *
 * @brief Controller for runtime chrome config updates.
 */
class DefaultNavigineViewController extends ChangeNotifier {
  DefaultNavigineViewController({
    DefaultNavigineViewConfig? viewConfig,
    ZoomControlsConfig? zoomConfig,
    FloorSelectorViewConfig? floorConfig,
  })  : _viewConfig = viewConfig ?? DefaultNavigineViewConfig.defaultConfig,
        _zoomControlsConfig = zoomConfig ?? ZoomControlsConfig.defaultConfig,
        _floorSelectorConfig = floorConfig ?? FloorSelectorViewConfig.defaultConfig;

  DefaultNavigineViewConfig _viewConfig;
  ZoomControlsConfig _zoomControlsConfig;
  FloorSelectorViewConfig _floorSelectorConfig;

  DefaultNavigineViewConfig get viewConfig => _viewConfig;
  ZoomControlsConfig get zoomControlsConfig => _zoomControlsConfig;
  FloorSelectorViewConfig get floorSelectorConfig => _floorSelectorConfig;

  void updateConfig({
    DefaultNavigineViewConfig? viewConfig,
    ZoomControlsConfig? zoomConfig,
    FloorSelectorViewConfig? floorConfig,
  }) {
    if (viewConfig != null) _viewConfig = viewConfig;
    if (zoomConfig != null) _zoomControlsConfig = zoomConfig;
    if (floorConfig != null) _floorSelectorConfig = floorConfig;
    notifyListeners();
  }
}
