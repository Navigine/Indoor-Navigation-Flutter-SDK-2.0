import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart' as weak_map;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/route_view.dart';

part 'route_view_listener.impl.dart';
abstract class RouteViewListener {

    void onRouteViewsChanged();

    void onSelectedRouteChanged(RouteView? route);

    void onRouteViewTap(RouteView route);



}
