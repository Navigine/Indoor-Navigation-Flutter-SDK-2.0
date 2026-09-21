import 'dart:ffi';
import 'package:ffi/ffi.dart';

part 'attribution_vertical_alignment.impl.dart';
/// Vertical placement of the OSM attribution overlay.
/// Used with [AttributionAlignment].
enum AttributionVerticalAlignment {
    /// Align to the top edge of the map.
    TOP,
    /// Align to the bottom edge of the map.
    BOTTOM,
}
