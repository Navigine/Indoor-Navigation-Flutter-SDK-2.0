import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/navigine/idl/http_tile_source.dart';
import 'package:navigine_sdk/com/navigine/idl/mbtiles_tile_source.dart';
import 'package:navigine_sdk/com/navigine/idl/tile_schema.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

part 'tile_provider.impl.dart';
/// Outdoor vector tile source.
/// Set either `http` or `mbtiles`. When `mbtiles` is set, tiles are read only
/// from that file — no network. `schema` must match the tiles. Null
/// `LocationWindow.tileProvider` keeps the default OSM Shortbread endpoint.
/// Referenced from [LocationWindow] `tileProvider`.
class TileProvider {
    /// Default constructor.
    TileProvider({required this.schema, required this.http, required this.mbtiles, this.minZoom = 0, this.maxZoom = 14, required this.attribution});
    ///
    /// Example:
    /// ```dart
    /// final osmHttp = TileProvider(
    ///  schema: TileSchema.OPEN_MAP_TILES,
    ///  http: http,
    ///  mbtiles: null,
    ///  minZoom: 0,
    ///  maxZoom: 14,
    ///  attribution: null,
    /// );
    /// final mbtiles = TileProvider(
    ///  schema: TileSchema.SHORTBREAD,
    ///  http: null,
    ///  mbtiles: offline,
    ///  minZoom: 0,
    ///  maxZoom: 14,
    ///  attribution: null,
    /// );
    /// ```
    /// Tile schema [TileSchema].
    TileSchema schema;
    /// Remote XYZ source [HttpTileSource]. Ignored when mbtiles is set.
    HttpTileSource? http;
    /// Local MBTiles pack [MbtilesTileSource].
    MbtilesTileSource? mbtiles;
    /// Minimum source zoom. Default: 0.
    int minZoom;
    /// Maximum source zoom (camera overzooms above this). Default: 14.
    int maxZoom;
    /// Attribution overlay text. Null: `© OpenStreetMap contributors`.
    String? attribution;
}
