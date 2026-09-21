import 'dart:ffi';
import 'package:ffi/ffi.dart';

part 'attribution_horizontal_alignment.impl.dart';
/// Horizontal placement of the OSM attribution overlay.
/// Used with [AttributionAlignment].
enum AttributionHorizontalAlignment {
    /// Align to the left edge of the map.
    LEFT,
    /// Center horizontally.
    CENTER,
    /// Align to the right edge of the map.
    RIGHT,
}
