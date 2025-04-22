import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;

import 'package:navigine_sdk/platform_view.dart';
import 'package:navigine_sdk/com/navigine/idl/location_window.dart';
import 'package:navigine_sdk/com/navigine/idl/navigine_sdk.dart';

/**
 * @file com/location_view.dart
 * @brief @copybrief LocationView
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_location_view
 *
 * @brief Class is used to display a Navigine location via Flutter StatefulWidget.
 *
 * `void Function(LocationWindow) onViewCreated` callback provides access to location view's main class
 *
 */
class LocationView extends StatefulWidget {
  const LocationView({Key? key, required this.onViewCreated, this.textDirection, }): super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LocationViewState();
  }

  /**
   * @brief callback provides access to location view's main class.
   *
   * Class is used to interact with the view.
   */
  final void Function(LocationWindow) onViewCreated;
  final TextDirection? textDirection;
}

class _LocationViewState extends State<LocationView> {
  @override
  Widget build(BuildContext context) {
    return PlatformView.create(
      (view) {
        if (!mounted) {
          return false;
        }

        final window = NavigineSdk.getInstance().createLocationWindow(view);
        widget.onViewCreated(window);

        return true;
      },
      textDirection: widget.textDirection,
    );
  }
}
