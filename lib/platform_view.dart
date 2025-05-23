import 'dart:ffi';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';

import 'package:navigine_sdk/com/_sdk_method_channel.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;

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

final _navigine_sdk_flutter_PlatformView_CopyHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Pointer<Void> Function(Pointer<Void>),
    Pointer<Void> Function(Pointer<Void>)
  >('navigine_sdk_flutter_PlatformView_copy_handle'));

final _navigine_sdk_flutter_PlatformView_ReleaseHandle = __lib.catchArgumentError(() => __lib.nativeLibrary.lookupFunction<
    Void Function(Pointer<Void>),
    void Function(Pointer<Void>)
  >('navigine_sdk_flutter_PlatformView_release_handle'));

Pointer<Void> navigine_sdk_flutter_PlatformView_ToFfi(PlatformView value) {
    return _navigine_sdk_flutter_PlatformView_CopyHandle(value.nativePtr);
}

void navigine_sdk_flutter_PlatformView_ReleaseFfiHandle(Pointer<Void> handle) {
  _navigine_sdk_flutter_PlatformView_ReleaseHandle(handle);
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
