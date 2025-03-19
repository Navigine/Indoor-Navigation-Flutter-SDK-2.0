import 'dart:ffi';
import 'package:navigine_sdk/com/_library_context.dart' as __lib;
import 'package:navigine_sdk/com/_native_base.dart' as __lib;
import 'package:navigine_sdk/com/navigine/idl/location_point.dart';
import 'package:navigine_sdk/com/navigine/idl/route_options.dart';
import 'package:navigine_sdk/com/navigine/idl/route_session.dart';

part 'async_route_manager.impl.dart';
/**
 * @file com/navigine/idl/async_route_manager.dart
 * @brief @copybrief AsyncRouteManager
 */
/**
 * @ingroup navigine_dart_classes
 * @ingroup navigine_dart_managers
 * @brief Class is used for managing @see RouteSession "RouteSession"s
 *
 * Referenced from @see NavigineSdk "NavigineSdk".
 */
abstract class AsyncRouteManager implements Finalizable {

    /**
     * @brief Method is used to create routing session
     * @param wayPoint destination point.
     * @param routeOptions params of @see RouteSession "RouteSession".
     * @return @see RouteSession "RouteSession" instance.
     */
    RouteSession createRouteSession(LocationPoint wayPoint, RouteOptions routeOptions);

    /**
     * @brief Method is used to cancel routing session
     * @param session @see RouteSession "RouteSession" object to cancel.
     */
    void cancelRouteSession(RouteSession session);



}
