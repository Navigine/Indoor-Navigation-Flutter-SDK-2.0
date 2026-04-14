import 'package:flutter/material.dart';

/**
 * @brief Configuration for ZoomControls widget.
 * Allows customization of icons, styles and layout.
 *
 * @snippet DefaultNavigationView/dart/default_navigation_view_example.dart dart_ZoomControlsConfig
 */
class ZoomControlsConfig {
  const ZoomControlsConfig({
    this.zoomInIcon,
    this.zoomOutIcon,
    this.buttonBackgroundColor,
    this.textColor,
    this.buttonWidth,
    this.zoomControlsHeight,
    this.padding,
  });

  final Widget? zoomInIcon;
  final Widget? zoomOutIcon;
  final Color? buttonBackgroundColor;
  final Color? textColor;
  final double? buttonWidth;
  final double? zoomControlsHeight;
  final EdgeInsets? padding;

  static const ZoomControlsConfig defaultConfig = ZoomControlsConfig();
}
