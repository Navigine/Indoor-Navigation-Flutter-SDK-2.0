import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/_weak_map.dart';
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/route_path.dart';

part 'route_listener.impl.dart';
/// Class provides a callback to be invoked when [RouteManager]
/// updates routes to the target point or from point to point.
/// Referenced from [RouteManager].
/// **Note:** The callback is invoked in the UI thread.
abstract class RouteListener {

    /// Called when new route has been calculated
    /// [paths] calculated list of [RoutePath]s to added targets.
    ///
    /// Example:
    /// ```dart
    /// onPathsUpdated: (List<RoutePath> paths) {
    ///  print("Routes updated successfully");
    ///  _demonstrateRoutePathUsage(paths);
    /// },
    /// ```
    void onPathsUpdated(List<RoutePath> paths);



}
