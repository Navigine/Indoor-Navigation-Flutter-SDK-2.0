import 'dart:ffi';
import 'package:ffi/ffi.dart';

part 'map_theme.impl.dart';
/// Color theme of the outdoor vector basemap.
/// Indoor floor rasters, venue icons, and user map objects are unchanged.
enum MapTheme {
    ///
    /// Example:
    /// ```dart
    /// final themes = [MapTheme.LIGHT, MapTheme.DARK];
    /// print("Map themes: ${themes.length}");
    /// ```
    /// Light outdoor basemap (default).
    LIGHT,
    /// Dark outdoor basemap (versatiles-shadow palette).
    DARK,
}
