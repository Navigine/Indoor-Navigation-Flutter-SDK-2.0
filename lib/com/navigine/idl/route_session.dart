import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/async_route_listener.dart';

part 'route_session.impl.dart';
/**
 * @file com/navigine/idl/route_session.dart
 * @brief @copybrief RouteSession
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_managers
 * @brief Class is used for managing async route listeners
 *
 * Referenced from @see AsyncRouteManager "AsyncRouteManager".
 */
abstract class RouteSession implements Finalizable {

    /**
     *
     * @brief Method is used to add @see AsyncRouteListener "AsyncRouteListener" class element
     * which will notify async route events.
     * @note Do not forget to remove listener if it is no longer needed!
     * @param listener Сorresponding @see AsyncRouteListener "AsyncRouteListener" class.
     *
     */
    void addRouteListener(AsyncRouteListener listener);

    /**
     *
     * @brief Method is used for removing previously added @see AsyncRouteListener "AsyncRouteListener" class element.
     * @param listener Сorresponding @see AsyncRouteListener "AsyncRouteListener" class to remove.
     *
     */
    void removeRouteListener(AsyncRouteListener listener);



}
