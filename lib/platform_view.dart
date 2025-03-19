import 'dart:ffi';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import 'package:navigine_sdk/com/_sdk_method_channel.dart';

class PlatformView {
  final Pointer<Void> nativePtr;

  const PlatformView._(this.nativePtr);

  static const viewType = 'flutter_navigine_view_factory';
  static const channel = const SdkMethodChannel('view');

  static Widget create(bool Function(PlatformView) onCreate,
      {TextDirection? textDirection}) {
    if (Platform.isAndroid) {
      return _AndroidView(
          textDirection, _onViewCreated(onCreate));
    } else {
      final widget = UiKitView(
        viewType: viewType,
        layoutDirection: textDirection,
        onPlatformViewCreated: _onViewCreated(onCreate),
      );

      return widget;
    }
  }
}

class _AndroidView extends StatelessWidget {
  final TextDirection? textDirection;
  final void Function(int) onCreate;

  _AndroidView(this.textDirection, this.onCreate);

  @override
  Widget build(BuildContext context) {
    return _createView(textDirection ?? Directionality.of(context));
  }

  Widget _createView(TextDirection textDirection) {
    final creationParams = <String, String>{};

      return _createPlatformViewLink((params) =>
          PlatformViewsService.initSurfaceAndroidView(
            creationParams: creationParams,
            creationParamsCodec: const StandardMessageCodec(),
            id: params.id,
            viewType: PlatformView.viewType,
            layoutDirection: textDirection,
            onFocus: () {
              params.onFocusChanged(true);
            },
          )
            ..addOnPlatformViewCreatedListener(params.onPlatformViewCreated)
            ..addOnPlatformViewCreatedListener(onCreate)
            ..create());
  }

  static PlatformViewLink _createPlatformViewLink(
      PlatformViewController Function(PlatformViewCreationParams)
          onCreatePlatformView) {
    return PlatformViewLink(
      viewType: PlatformView.viewType,
      surfaceFactory: ((context, controller) => AndroidViewSurface(
          controller: controller as AndroidViewController,
          hitTestBehavior: PlatformViewHitTestBehavior.opaque,
          gestureRecognizers: const <Factory<OneSequenceGestureRecognizer>>{})),
      onCreatePlatformView: onCreatePlatformView,
    );
  }
}

void Function(int) _onViewCreated(bool Function(PlatformView) onCreate) =>
    (id) async {
      final address = await PlatformView.channel
          .invokeMethod<int>('getViewPtr', {"id": id});

      final ptr = Pointer.fromAddress(address!);
      final view = PlatformView._(ptr.cast());

      if (onCreate(view)) {
        await PlatformView.channel.invokeMethod('startView', {'id': id});
      }
    };
