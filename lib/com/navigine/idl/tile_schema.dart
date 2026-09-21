import 'dart:ffi';
import 'package:ffi/ffi.dart';

part 'tile_schema.impl.dart';
/// Vector tile schema of the outdoor basemap.
/// The renderer stylesheet is built for these schemas only. The MVT layers
/// and properties must match the chosen schema.
enum TileSchema {
    ///
    /// Example:
    /// ```dart
    /// final schemas = [TileSchema.SHORTBREAD, TileSchema.OPEN_MAP_TILES, TileSchema.MAPBOX_STREETS];
    /// print("Tile schemas: ${schemas.length}");
    /// ```
    /// OSM Shortbread (versatiles / vector.openstreetmap.org).
    SHORTBREAD,
    /// OpenMapTiles (MapTiler / Planetiler self-host).
    OPEN_MAP_TILES,
    /// Mapbox Streets v8 (`mapbox.mapbox-streets-v8`).
    MAPBOX_STREETS,
}
