import 'dart:ffi';
import 'package:ffi/ffi.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/global_point.dart';
import 'package:navigine_sdk/com/to_native.dart';
import 'package:navigine_sdk/com/to_platform.dart';

part 'route_endpoint.impl.dart';
/// Route endpoint in WGS84 coordinates.
/// When sublocationId is set, the endpoint is treated as indoor and projected
/// to that sublocation. When sublocationId is null, the endpoint is treated as
/// outdoor.
/// Referenced from [RouteLayer].
class RouteEndpoint {
    /// Default constructor.
    RouteEndpoint(this.point, this.sublocationId);
    /// Endpoint in WGS84 coordinates.
    GlobalPoint point;
    /// Floor id for an indoor endpoint, or null for outdoor.
    int? sublocationId;
}
