import 'dart:ffi';
import 'package:meta/meta.dart';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/exception.dart' as exception;
import 'package:navigine_sdk/com/navigine/idl/async_route_listener.dart';
import 'package:navigine_sdk/com/weak_interface_wrapper.dart' as weak_interface_wrapper;

part 'route_session.impl.dart';
/// Class is used for managing async route listeners
/// Referenced from [AsyncRouteManager].
abstract class RouteSession implements Finalizable {

    /// Method is used to add [AsyncRouteListener] class element
    /// which will notify async route events.
    /// **Note:** Do not forget to remove listener if it is no longer needed!
    /// [listener] Corresponding [AsyncRouteListener] class.
    ///
    /// Example:
    /// ```dart
    /// // Add route listener to session
    /// session.addRouteListener(_asyncRouteListener!);
    /// ```
    void addRouteListener(AsyncRouteListener listener);

    /// Method is used for removing previously added [AsyncRouteListener] class element.
    /// [listener] Corresponding [AsyncRouteListener] class to remove.
    ///
    /// Example:
    /// ```dart
    /// // Remove route listener
    /// _currentSession!.removeRouteListener(_asyncRouteListener!);
    /// ```
    void removeRouteListener(AsyncRouteListener listener);

    bool isValid();



}
