import 'package:flutter/material.dart';

/**
 * @brief Configuration for FloorSelectorView widget.
 * Allows customization of styles and layout.
 *
 * @snippet DefaultNavigationView/dart/default_navigation_view_example.dart dart_FloorSelectorViewConfig
 */
class FloorSelectorViewConfig {
  const FloorSelectorViewConfig({
    this.accentColor,
    this.textColor,
    this.buttonBackgroundColor,
    this.padding,
  });

  final Color? accentColor;
  final Color? textColor;
  final Color? buttonBackgroundColor;
  final EdgeInsets? padding;

  static const FloorSelectorViewConfig defaultConfig = FloorSelectorViewConfig();
}
