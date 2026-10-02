import 'dart:ffi';
import 'dart:ui';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/global_point.dart';

part 'point_sprite.impl.dart';
/// One arrow in a point batch. Heading is degrees clockwise from north.
/// `size` is pixels (the same unit as a symbol icon).
class PointSprite {
    /// Default constructor.
    PointSprite(this.position, this.heading, this.color, this.size);
    GlobalPoint position;
    /// Degrees clockwise from north.
    double heading;
    Color color;
    /// Arrow length in pixels.
    double size;
}
