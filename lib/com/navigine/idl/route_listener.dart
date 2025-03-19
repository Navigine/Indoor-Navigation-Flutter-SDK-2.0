import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/route_path.dart';

part 'route_listener.impl.dart';
/**
 * @file com/navigine/idl/route_listener.dart
 * @brief @copybrief RouteListener
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_listeners
 * @brief Class provides a callback to be invoked when @see RouteManager "RouteManager"
 * updates routes to the target point or from point to point.
 *
 * Referenced from @see RouteManager "RouteManager".
 * @note The callback is invoked in the UI thread.
 */
abstract class RouteListener {

    /**
     *
     * @brief Called when new route has been calculated
     * @param paths calculated list of @see RoutePath "RoutePath"s to added targets.
     *
     */
    void onPathsUpdated(List<RoutePath> paths);



}
