import 'dart:ffi';
import 'package:ffi/ffi.dart';

part 'tile_kind.impl.dart';
/// Payload of a [TileProvider].
/// `vector` is MVT and uses `schema`. `raster` is PNG, JPEG, or WebP imagery
/// on `LocationWindow.tileProvider`; `schema` is ignored and outdoor vector
/// geometry and labels are hidden. Indoor floors stay on top.
enum TileKind {
    ///
    /// Example:
    /// ```dart
    /// final kinds = [TileKind.VECTOR, TileKind.RASTER];
    /// print("Tile kinds: ${kinds.length}");
    /// ```
    /// Vector tiles (MVT). Default.
    VECTOR,
    /// Raster imagery tiles.
    RASTER,
}
