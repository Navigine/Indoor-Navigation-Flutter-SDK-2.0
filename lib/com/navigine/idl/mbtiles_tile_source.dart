import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

part 'mbtiles_tile_source.impl.dart';
/// Local MBTiles pack of outdoor vector tiles (`format=pbf` or `mvt`).
/// Tiles are read only from this file — no network. Default row numbering is
/// TMS; metadata `scheme=xyz` disables the Y flip.
/// Referenced from [TileProvider].
class MbtilesTileSource {
    /// Default constructor.
    MbtilesTileSource(this.path);
    ///
    /// Example:
    /// ```dart
    /// final offline = MbtilesTileSource(path: "/path/to/map.mbtiles");
    /// ```
    /// Absolute path to the `.mbtiles` file.
    String path;
}
