import 'dart:ffi';
import 'package:ffi/ffi.dart';

part 'operating_mode.impl.dart';
/// Operating mode of the location view.
/// Controls whether the view shows indoor floors only, an outdoor vector basemap,
/// or outdoor basemap with indoor building overlays.
enum OperatingMode {
    ///
    /// Example:
    /// ```dart
    /// final modes = [
    ///  OperatingMode.INDOOR_ONLY,
    ///  OperatingMode.OUTDOOR,
    ///  OperatingMode.OUTDOOR_INDOOR,
    /// ];
    /// print("Operating modes: ${modes.length}");
    /// ```
    /// Indoor floors only (no outdoor vector basemap).
    /// Camera stick-to-border / centering apply to the active floor plan.
    INDOOR_ONLY,
    /// Outdoor vector basemap only (OSM MVT).
    OUTDOOR,
    /// Outdoor vector basemap plus indoor building floor overlays.
    OUTDOOR_INDOOR,
}
