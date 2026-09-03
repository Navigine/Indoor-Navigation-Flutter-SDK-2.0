import 'package:flutter/material.dart';
import 'package:navigine_sdk/com/navigine/idl/camera_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/camera_update_reason.dart';
import 'package:navigine_sdk/com/navigine/idl/location_window.dart';
import 'package:navigine_sdk/com/navigine/idl/navigine_sdk.dart';
import 'package:navigine_sdk/com/navigine/idl/user_location_layer.dart';
import 'dart:math' as math;
import 'default_navigine_view.dart';
import 'default_navigine_view_config.dart';
import 'default_navigation_view_config.dart';
import 'widgets/zoom_controls_config.dart';
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
 * Built on [DefaultNavigineView] chrome.
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
    implements CameraListener {
  UserLocationLayer? _userLocationLayer;
  LocationWindow? _locationWindow;
  bool _isFollowing = false;

  DefaultNavigineViewConfig get _chromeConfig => DefaultNavigineViewConfig(
        visibleWidgets: widget.viewConfig.visibleWidgets & NavigineWidgetVisibility.all,
      );

  void _handleViewCreated(LocationWindow window) {
    _locationWindow = window;
    window.addCameraListener(this);
    _userLocationLayer = NavigineSdk.getInstance().getUserLocationLayer(window);
    _userLocationLayer!.setVisible(true);
    widget.onViewCreated(window);
  }

  @override
  void dispose() {
    _locationWindow?.removeCameraListener(this);
    super.dispose();
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

  List<Widget> _followMeOverlays(FollowMeButtonConfig followMeConfig, int visibleWidgets) {
    if ((visibleWidgets & NavigationWidgetVisibility.followMeButton) == 0) {
      return const [];
    }
    return [
      FollowMeButton(
        isFollowing: _isFollowing,
        onPressed: _handleFollowMePressed,
        config: followMeConfig,
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    if (widget.configController != null) {
      return ListenableBuilder(
        listenable: widget.configController!,
        builder: (context, _) {
          final vc = widget.configController!.viewConfig;
          return DefaultNavigineView(
            onViewCreated: _handleViewCreated,
            viewConfig: DefaultNavigineViewConfig(
              visibleWidgets: vc.visibleWidgets & NavigineWidgetVisibility.all,
            ),
            zoomControlsConfig: widget.configController!.zoomControlsConfig,
            floorSelectorConfig: widget.configController!.floorSelectorConfig,
            textDirection: widget.textDirection,
            extraOverlays: _followMeOverlays(
              widget.configController!.followMeButtonConfig,
              vc.visibleWidgets,
            ),
          );
        },
      );
    }
    return DefaultNavigineView(
      onViewCreated: _handleViewCreated,
      viewConfig: _chromeConfig,
      zoomControlsConfig: widget.zoomControlsConfig,
      floorSelectorConfig: widget.floorSelectorConfig,
      textDirection: widget.textDirection,
      extraOverlays: _followMeOverlays(
        widget.followMeButtonConfig,
        widget.viewConfig.visibleWidgets,
      ),
    );
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
