import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class RawImageProvider extends ImageProvider<RawImageKey> {
  RawImageProvider(this._pixels, this._width, this._height)
      : key = RawImageKey(_width, _height, _pixels.hashCode);

  @override
  ImageStreamCompleter loadBuffer(RawImageKey key, DecoderBufferCallback callback) {
    return MultiFrameImageStreamCompleter(codec: _loadAsync(key), scale: 1.0);
  }

  @override
  Future<RawImageKey> obtainKey(ImageConfiguration _) {
    return SynchronousFuture(key);
  }

  Future<ui.Codec> _loadAsync(RawImageKey key) async {
    final buffer = await ui.ImmutableBuffer.fromUint8List(_pixels);
    print(buffer);

    final descriptor = ui.ImageDescriptor.raw(
      buffer,
      width: key.width,
      height: key.height,
      pixelFormat: ui.PixelFormat.rgba8888
    );

    return descriptor.instantiateCodec();
  }

  final Uint8List _pixels;
  final int _width;
  final int _height;
  final RawImageKey key;
}

class RawImageKey {
  RawImageKey(this.width, this.height, this.dataHash);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) {
      return true;
    }

    return other is RawImageKey &&
        other.width == width &&
        other.height == height &&
        other.dataHash == dataHash;
  }

  @override
  int get hashCode => Object.hash(width, height, dataHash);

  final int width;
  final int height;
  final int dataHash;
}
