import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/attribution_horizontal_alignment.dart';
import 'package:navigine_sdk/com/navigine/idl/attribution_vertical_alignment.dart';

part 'attribution_alignment.impl.dart';
/// Screen placement of the OSM attribution overlay.
/// Same shape as typical map logo alignment: horizontal × vertical.
/// Default: right + bottom (OSM Vector Tile Usage Policy).
/// Referenced from [LocationWindow] `attributionAlignment`.
class AttributionAlignment {
    /// Default constructor.
    AttributionAlignment({this.horizontalAlignment = AttributionHorizontalAlignment.RIGHT, this.verticalAlignment = AttributionVerticalAlignment.BOTTOM});
    ///
    /// Example:
    /// ```dart
    /// final alignment = AttributionAlignment(
    ///  AttributionHorizontalAlignment.RIGHT,
    ///  AttributionVerticalAlignment.BOTTOM,
    /// );
    /// ```
    /// Horizontal edge or center [AttributionHorizontalAlignment].
    AttributionHorizontalAlignment horizontalAlignment;
    /// Vertical edge [AttributionVerticalAlignment].
    AttributionVerticalAlignment verticalAlignment;
}
