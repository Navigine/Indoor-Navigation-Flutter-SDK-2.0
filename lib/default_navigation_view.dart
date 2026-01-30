import 'package:flutter/material.dart';
import 'package:navigine_sdk/error.dart';
import 'package:navigine_sdk/com/navigine/idl/location.dart';
import 'package:navigine_sdk/com/navigine/idl/location_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/location_manager.dart';
import 'package:navigine_sdk/com/navigine/idl/location_window.dart';
import 'package:navigine_sdk/com/navigine/idl/sublocation_change_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/navigine_sdk.dart';
import 'package:navigine_sdk/com/navigine/idl/user_location_layer.dart';
import 'package:navigine_sdk/com/navigine/idl/camera_listener.dart';
import 'package:navigine_sdk/com/navigine/idl/camera_update_reason.dart';
import 'package:navigine_sdk/location_view.dart';
import 'dart:math' as math;
import 'widgets/zoom_controls.dart';
import 'widgets/floor_selector_view.dart';
import 'widgets/follow_me_button.dart';

/// @file com/default_navigation_view.dart
/// @brief @copybrief DefaultNavigationView
///
/// @ingroup navigine_dart_classes
/// @ingroup navigine_dart_location_view
///
/// Ready-to-use navigation view with built-in UI:
/// zoom controls, floor selector, “follow me” toggle and user location layer.
/// Automatically wires SDK listeners (location, sublocation, camera) and keeps widgets in sync.
/// `onViewCreated` provides direct access to the underlying [LocationWindow].
class DefaultNavigationView extends StatefulWidget {
  const DefaultNavigationView({
    Key? key,
    required this.onViewCreated,
    this.textDirection,
  }) : super(key: key);

  final void Function(LocationWindow) onViewCreated;
  final TextDirection? textDirection;

  @override
  State<DefaultNavigationView> createState() => _DefaultNavigationViewState();
}

class _DefaultNavigationViewState extends State<DefaultNavigationView> implements LocationListener, SublocationChangeListener, CameraListener {
  LocationWindow? _locationWindow;
  late LocationManager _locationManager;
  UserLocationLayer? _userLocationLayer;
  final GlobalKey<FloorSelectorViewState> _floorSelectorKey = GlobalKey<FloorSelectorViewState>();
  bool _isFollowing = false;

  @override
  void initState() {
    super.initState();
    _locationManager = NavigineSdk.getInstance().getLocationManager();
  }

  @override
  void dispose() {
    _locationManager.removeLocationListener(this);
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
    _locationManager.addLocationListener(this);
    _userLocationLayer = NavigineSdk.getInstance().getUserLocationLayer(window);
    _userLocationLayer!.setVisible(true);
    widget.onViewCreated(window);
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        LocationView(
          onViewCreated: _handleViewCreated,
          textDirection: widget.textDirection,
        ),

        ZoomControls(
          zoomInPressed: () {
            if (_locationWindow == null) return;
            double currentZoom = _locationWindow!.zoomFactor;
            _locationWindow!.zoomFactor = currentZoom * (3.0 / 2.0);
            },
          zoomOutPressed: () {
            if (_locationWindow == null) return;
            double currentZoom = _locationWindow!.zoomFactor;
            _locationWindow!.zoomFactor = currentZoom * (2.0 / 3.0);
            },
        ),
        FloorSelectorView(
          key: _floorSelectorKey,
          onFloorSelected: (id, name) {
            _locationWindow?.setSublocationId(id);
            },
        ),
        FollowMeButton(
          isFollowing: _isFollowing,
          onPressed: _handleFollowMePressed,
        ),
      ],
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
  void onLocationLoaded(Location location) {
    final floors = location.sublocations.map((s) => LevelInfo(
      levelId: s.levelId,
      sublocationId: s.id,
    )).toList();
    _floorSelectorKey.currentState?.setFloors(floors);
  }

  @override
  void onLocationUploaded(int locationId) {}

  @override
  void onLocationFailed(int locationId, Error error) {}

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
