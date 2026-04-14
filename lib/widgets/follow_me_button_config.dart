import 'package:flutter/material.dart';

/**
 * @brief Configuration for FollowMeButton widget.
 * Allows customization of icons, styles and layout.
 *
 * @snippet DefaultNavigationView/dart/default_navigation_view_example.dart dart_FollowMeButtonConfig
 */
class FollowMeButtonConfig {
  const FollowMeButtonConfig({
    this.followMeIcon,
    this.followMeIconActive,
    this.buttonBackgroundColor,
    this.accentColor,
    this.textColor,
    this.buttonWidth,
    this.buttonHeight,
    this.padding,
  });

  final Widget? followMeIcon;
  final Widget? followMeIconActive;
  final Color? buttonBackgroundColor;
  final Color? accentColor;
  final Color? textColor;
  final double? buttonWidth;
  final double? buttonHeight;
  final EdgeInsets? padding;

  static const FollowMeButtonConfig defaultConfig = FollowMeButtonConfig();
}
