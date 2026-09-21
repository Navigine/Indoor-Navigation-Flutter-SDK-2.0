import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/containers__conversion.dart';
import 'package:navigine_sdk/com/lazy_list.dart';
import 'package:navigine_sdk/com/lazy_map.dart';
import 'package:navigine_sdk/com/native_types.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

part 'http_tile_source.impl.dart';
/// HTTP XYZ source for outdoor vector tiles.
/// `urlTemplate` must contain `{z}`, `{x}`, `{y}`. Optional query parameters
/// (API keys such as `key`, `access_token`, `apikey`) are appended to each
/// request. Optional headers cover `Authorization`, `Referer`, or a custom
/// `User-Agent`. The SDK always sends an identifying User-Agent unless the
/// headers map already has one. Keys may also be baked into `urlTemplate`.
/// Referenced from [TileProvider].
class HttpTileSource {
    /// Default constructor.
    HttpTileSource(this.urlTemplate, this.headers, this.queryParameters);
    ///
    /// Example:
    /// ```dart
    /// final http = HttpTileSource(
    ///  urlTemplate: "https://api.maptiler.com/tiles/v3-openmaptiles/{z}/{x}/{y}.pbf",
    ///  headers: null,
    ///  queryParameters: {"key": "YOUR_MAPTILER_KEY"},
    /// );
    /// ```
    /// HTTPS XYZ template with `{z}`, `{x}`, `{y}`.
    String urlTemplate;
    /// Extra request headers. Null or empty: none. Overrides the default
    /// User-Agent when that header is set.
    Map<String, String>? headers;
    /// Extra query parameters appended to each tile URL. Null or empty: none.
    Map<String, String>? queryParameters;
}
