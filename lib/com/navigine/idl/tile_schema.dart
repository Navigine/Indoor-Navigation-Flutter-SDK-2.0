import 'dart:ffi';
import 'package:ffi/ffi.dart';

part 'tile_schema.impl.dart';
/// Vector tile schema of the outdoor basemap.
/// The built-in stylesheet covers Shortbread fully. OpenMapTiles and Mapbox
/// Streets share the same programmatic rules with schema-aware filters (source
/// layers, site/transit partition, extrude keys, admin levels). Verify new tile
/// sets visually; see TILE_SCHEMA_FOLLOWUP.md.
enum TileSchema {
    ///
    /// Example:
    /// ```dart
    /// final schemas = [TileSchema.SHORTBREAD, TileSchema.OPEN_MAP_TILES, TileSchema.MAPBOX_STREETS];
    /// print("Tile schemas: ${schemas.length}");
    /// ```
    /// OSM Shortbread (versatiles / vector.openstreetmap.org). Default.
    SHORTBREAD,
    /// OpenMapTiles (MapTiler / Planetiler self-host). Schema-aware filters.
    OPEN_MAP_TILES,
    /// Mapbox Streets v8 (`mapbox.mapbox-streets-v8`). Schema-aware filters.
    MAPBOX_STREETS,
}
