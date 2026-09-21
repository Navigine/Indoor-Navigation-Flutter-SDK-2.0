import 'dart:ffi';
import 'package:ffi/ffi.dart';

part 'route_layer_status.impl.dart';
enum RouteLayerStatus {
    IDLE,
    ROUTE_UPDATED,
    MISSING_GRAPH,
    MISSING_LOCATION,
    MISSING_POSITION,
    MISSING_ROUTE,
    MISSING_PROJECTION,
}
