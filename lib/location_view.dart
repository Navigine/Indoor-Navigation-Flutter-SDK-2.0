import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/builtin_types__conversion.dart';

import 'package:navigine_sdk/platform_view.dart';
import 'package:navigine_sdk/com/navigine/idl/location_window.dart';

LocationWindow createLocationWindow(PlatformView view) {
  final _createLocationWindowFfi = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<Pointer<Void> Function(Pointer<Void>), Pointer<Void> Function(Pointer<Void>)>('navigine_sdk_flutter_NavigineSdk_createLocationWindow__PlatformView'));
  final __resultHandle = _createLocationWindowFfi(view.nativePtr);
  try {
    return navigine_sdk_flutter_LocationWindow_FromFfi(__resultHandle);
  } finally {
    navigine_sdk_flutter_LocationWindow_ReleaseFfiHandle(__resultHandle);
  }
}

class LocationView extends StatefulWidget {
  const LocationView({
    Key? key,
    required this.onViewCreated,
    this.textDirection,
  }): super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LocationViewState();
  }

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

        final window = createLocationWindow(view);
        widget.onViewCreated(window);

        return true;
      },
      textDirection: widget.textDirection,
    );
  }
}
