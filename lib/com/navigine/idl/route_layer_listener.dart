import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart' as weak_map;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/route_layer_status.dart';
import 'package:navigine_sdk/com/navigine/idl/route_progress.dart';
import 'package:navigine_sdk/com/navigine/idl/route_view.dart';

part 'route_layer_listener.impl.dart';
abstract class RouteLayerListener {

    void onRouteChanged(RouteLayerStatus status, RouteView? route);

    void onRouteAdvanced(RouteProgress progress);

    void onRouteTargetReached();



}
